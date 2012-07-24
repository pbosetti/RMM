<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Property Name="varPersistentID:{17DDA3FC-0A0C-47C5-95A3-A8B5ED237C95}" Type="Ref">/My Computer/SharedVars.lvlib/RadialValue</Property>
	<Property Name="varPersistentID:{3825E95A-099D-4BAA-B136-2F248BC4B9B2}" Type="Ref">/My Computer/SharedVars.lvlib/MeasurementOK</Property>
	<Property Name="varPersistentID:{65AF349A-A6DF-45A9-AE98-0CD144570E64}" Type="Ref">/My Computer/SharedVars.lvlib/AngularPosition</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="tests" Type="Folder">
			<Item Name="RunMeOld.vi" Type="VI" URL="../RunMeOld.vi"/>
			<Item Name="simulate.vi" Type="VI" URL="../simulate.vi"/>
		</Item>
		<Item Name="SubVIs" Type="Folder">
			<Item Name="Encoder.vi" Type="VI" URL="../Encoder.vi"/>
			<Item Name="Measure.vi" Type="VI" URL="../Measure.vi"/>
			<Item Name="Motor.vi" Type="VI" URL="../Motor.vi"/>
			<Item Name="Pulses.vi" Type="VI" URL="../Pulses.vi"/>
			<Item Name="SineFit.vi" Type="VI" URL="../SineFit.vi"/>
			<Item Name="Globals.vi" Type="VI" URL="../../../../Documenti/Globals.vi"/>
		</Item>
		<Item Name="PhantomDisplacementSensor.vi" Type="VI" URL="../PhantomDisplacementSensor.vi"/>
		<Item Name="RunMe.vi" Type="VI" URL="../RunMe.vi"/>
		<Item Name="SharedVars.lvlib" Type="Library" URL="../SharedVars.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../../../../Programmi/National Instruments/LabVIEW 2011/resource/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="RMM" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{F8E40F66-A802-4397-A1C2-8EE1493CFE67}</Property>
				<Property Name="App_INI_GUID" Type="Str">{7373EE3F-E553-4FEF-995F-6E4D999044F3}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{065A87F0-4711-4D53-A00C-FEF54C1FBA00}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">RMM</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/RMM</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{B2210EBA-E893-4445-BCC2-CE64292F8BDC}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">RMM.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/RMM/RMM.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/RMM/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_Vardep[0].LibDeploy" Type="Bool">true</Property>
				<Property Name="Exe_Vardep[0].LibItemID" Type="Ref">/My Computer/SharedVars.lvlib</Property>
				<Property Name="Exe_VardepDeployAtStartup" Type="Bool">true</Property>
				<Property Name="Exe_VardepLibItemCount" Type="Int">1</Property>
				<Property Name="Exe_VardepUndeployOnExit" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{04BE1202-F68F-46D1-9013-6ED2DC378046}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/RunMe.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/PhantomDisplacementSensor.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">Università di Trento</Property>
				<Property Name="TgtF_fileDescription" Type="Str">RMM</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">RMM</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 Università di Trento</Property>
				<Property Name="TgtF_productName" Type="Str">RMM</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{7799F838-946D-4F4C-A0FC-B59CEECF2398}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">RMM.exe</Property>
			</Item>
			<Item Name="RMM archive" Type="Zip File">
				<Property Name="Absolute[0]" Type="Bool">false</Property>
				<Property Name="BuildName" Type="Str">RMM archive</Property>
				<Property Name="Comments" Type="Str"></Property>
				<Property Name="DestinationID[0]" Type="Str">{39ECAF45-0E1F-4A5F-B3B6-CE68B4749F90}</Property>
				<Property Name="DestinationItemCount" Type="Int">1</Property>
				<Property Name="DestinationName[0]" Type="Str">Destination Directory</Property>
				<Property Name="IncludedItemCount" Type="Int">1</Property>
				<Property Name="IncludedItems[0]" Type="Ref">/My Computer</Property>
				<Property Name="IncludeProject" Type="Bool">true</Property>
				<Property Name="Path[0]" Type="Path">../../builds/RMM/RMM archive/RMM.zip</Property>
				<Property Name="ZipBase" Type="Str">NI_zipbasedefault</Property>
			</Item>
			<Item Name="RMM Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">RMM</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{16C777E9-1FF1-42B5-9F73-BFDEF926F4FE}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{5ECC8FF1-BCAD-4197-9C95-4E94E2A6AB6D}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI LabVIEW Run-Time Engine 2011 SP1</Property>
				<Property Name="DistPart[0].SoftDep[0].dependencyKey" Type="Str">YIBAAA.B39557FF_0FEF_4E4B_B35C_B0576517226D</Property>
				<Property Name="DistPart[0].SoftDep[0].productName" Type="Str">NI LabVIEW 2011 SP1 Run-Time Engine Non-English Support</Property>
				<Property Name="DistPart[0].SoftDep[1].dependencyKey" Type="Str">ZIBAAA.B39557FF_0FEF_4E4B_B35C_B0576517226D</Property>
				<Property Name="DistPart[0].SoftDep[1].productName" Type="Str">NI System Web Server 11.5</Property>
				<Property Name="DistPart[0].SoftDep[2].dependencyKey" Type="Str">DJBAAA.B39557FF_0FEF_4E4B_B35C_B0576517226D</Property>
				<Property Name="DistPart[0].SoftDep[2].productName" Type="Str">NI LabVIEW 2011 SP1 Run-Time Engine Web Server</Property>
				<Property Name="DistPart[0].SoftDep[3].dependencyKey" Type="Str">HJBAAA.B39557FF_0FEF_4E4B_B35C_B0576517226D</Property>
				<Property Name="DistPart[0].SoftDep[3].productName" Type="Str">NI Web Application Server 11.5</Property>
				<Property Name="DistPart[0].SoftDepCount" Type="Int">4</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{6AD6C111-233B-4924-A3BF-E4813FE23C7A}</Property>
				<Property Name="DistPartCount" Type="Int">1</Property>
				<Property Name="INST_author" Type="Str">Università di Trento</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/RMM/RMM Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">RMM Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{16C777E9-1FF1-42B5-9F73-BFDEF926F4FE}</Property>
				<Property Name="INST_productName" Type="Str">RMM</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.1</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">11018015</Property>
				<Property Name="MSI_arpCompany" Type="Str">Università di Trento and Stanford University</Property>
				<Property Name="MSI_arpContact" Type="Str">Paolo Bosetti (paolo.bosetti@ing.unitn.it)</Property>
				<Property Name="MSI_distID" Type="Str">{543E076D-4F58-4AC1-B7C2-11B279562504}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{7E696E97-9DC6-455F-823F-8309CD071E12}</Property>
				<Property Name="MSI_windowMessage" Type="Str">This software installs the controller for the PRL developed Roundness Measuring Machine. </Property>
				<Property Name="MSI_windowTitle" Type="Str">Installer for Roundness Measuring Machine controller</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{16C777E9-1FF1-42B5-9F73-BFDEF926F4FE}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{16C777E9-1FF1-42B5-9F73-BFDEF926F4FE}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">RMM.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">Roundness Measuring Machine</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">RMM</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{7799F838-946D-4F4C-A0FC-B59CEECF2398}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">RMM</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/RMM</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
