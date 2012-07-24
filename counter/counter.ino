/* Rotary encoder driver for HEDS-9150 quadrature encoder */
/* By Paolo Bosetti 2012 - paolo.bosetti@ing.unitn.it     */
/* Developed on the Arduino 1.0.1 IDE                     */

/* Defines. Change these values for configuring the system */
#define CODE_ID "RMM_counter 0.3"
#define BAUD  115200 // Serial communication baud rate
#define DELAY     10 // Main loop delay
#define STEPS    499 // Maximum step count on the artwork (base ZERO!!!)
#define CH_I       2 // Pin for index input (one per revolution)
#define CH_A       3 // pin fr Ch.A readout
#define CH_B       4 // Pin for Ch.B readout
#define RELAY      5 // Output pin for controlling the relais that drives the motor on or off
#define PLED       6 // Proportional LED
#define MOTOR_CTRL 7 // Connected to button that cycles motor on/off
#define LED       13 // Homing LED: Will stay on until the first reference has gone

/* GLOBALS */
float g_timescale = 1000000.0 / (float)(STEPS + 1) * 360;
/* Do not edit anything below this line!!! */
int g_counter;
unsigned int g_delay = DELAY;
bool g_home = HIGH;
bool g_reset = false;

/* ISR triggered by Ch.A */
void 
step()
{
  if (digitalRead(CH_B) == HIGH)
    g_counter--;
  else
    g_counter++;
  
  if (g_counter < 0)
    g_counter = STEPS;
  if (g_counter > STEPS)
    g_counter = 0;
  analogWrite(PLED, g_counter % 2 == 1 ? ((float)g_counter/(STEPS+1))*256 : 0);
}

/* ISR triggered by Ch.I */
void 
zero()
{
  g_counter = STEPS;
  g_home = LOW;
  g_reset = !g_reset;
  digitalWrite(LED, g_home);
}

void
print_status()
{
  unsigned long now = micros();
  static int last_counter = 0;
  static unsigned long last_time = micros();
  float v = g_timescale * (g_counter - last_counter) / (now - last_time);
    Serial.print(g_home == LOW ? 1 : 0);
    Serial.print(" ");
    Serial.print(g_reset ? 1 : 0);
    Serial.print(" ");
    Serial.print(g_counter);
    Serial.print(" ");
    Serial.println(v);
  last_counter = g_counter;
  last_time = now;
}

void 
setup()
{
  Serial.begin(115200);
  
  pinMode(CH_I,  INPUT_PULLUP);
  pinMode(CH_A,  INPUT_PULLUP);
  pinMode(CH_B,  INPUT_PULLUP);
  pinMode(RELAY, OUTPUT);
  pinMode(LED,   OUTPUT);
  pinMode(PLED,  OUTPUT);
  pinMode(MOTOR_CTRL, INPUT);
  
  digitalWrite(LED, g_home);
  digitalWrite(RELAY, LOW);

  attachInterrupt(0, zero, RISING);
  attachInterrupt(1, step, RISING);
}

void 
loop()
{
//  static int last_counter = 0;
  static bool polling = true;
  static bool motor = false;
  static unsigned long last_time = millis();
//  unsigned long now = micros();
  
  char ch;
  static unsigned long accumulator = 0;
  
  if (Serial.available()) {
    ch = Serial.read();
    switch(ch) {
    case '0'...'9':
      accumulator = accumulator * 10 + ch - '0';
      break;
    case 'i':
      Serial.println(CODE_ID);
      break;
    case 'd':
      g_delay = constrain(accumulator, 0, 1000);
      accumulator = 0;
      break;
    case '/':
      polling = !polling;
      break;
    case 'p':
      Serial.println(STEPS + 1);
      break;
    case '?':
      print_status();
      break;
    case 'M':
      motor = true;
//      digitalWrite(RELAY, HIGH);
      break; 
    case 'm':
      motor = false;
//      digitalWrite(RELAY, LOW);
      break;
    }
  }
  
  if (!g_home && !polling) {
    print_status();
  }
  
  if (digitalRead(MOTOR_CTRL) == HIGH and millis() > last_time + 200) {
    motor = ! motor;
    last_time = millis();
  }
  digitalWrite(RELAY, motor ? HIGH : LOW);
  
  delay(g_delay);
}
