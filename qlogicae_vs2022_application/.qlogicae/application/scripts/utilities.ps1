
class QLogicaeApplicationUtilities {
    hidden static [QLogicaeApplicationUtilities]$Instance
    [PSCustomObject]$Configurations

    hidden QLogicaeApplicationUtilities() {
        $ConsoleExecutionRootFolderPath = (Get-Location).Path
        $StartupPowerShellScriptFolderPath = $PSScriptRoot
        $QLogicaeWindowsRegistryRootPath = "Software\QLogicae"
        $QLogicaeEnvironmentVariablesRootPath = "QLOGICAE"
        $FullQLogicaeSolutionRootFolderPath = ($PSScriptRoot | Split-Path | Split-Path | Split-Path | Split-Path)
        
        $FullQLogicaeFolderPath = "$($FullQLogicaeSolutionRootFolderPath)\\qlogicae"        
        $FullDotQLogicaeFolderPath = "$($FullQLogicaeFolderPath)\\.qlogicae"        
        $FullDotQLogicaeApplicationFolderPath = "$($FullDotQLogicaeFolderPath)\\application"
        
        $FullDotQLogicaeApplicationConfigurationsFolderPath = "$($FullDotQLogicaeApplicationFolderPath)\\configurations"
        $FullDotQLogicaeApplicationConfigurationsQLogicaeFilePath = "$($FullDotQLogicaeApplicationConfigurationsFolderPath)\\qlogicae.json"
        
        $FullDotQLogicaeApplicationScriptsFolderPath = "$($FullDotQLogicaeApplicationFolderPath)\\scripts"

        $FullDotQLogicaeApplicationScriptsEnvironmentVariablesFolderPath = "$($FullDotQLogicaeApplicationScriptsFolderPath)\\environment_variables"        
        
        $FullDotQLogicaeApplicationScriptsInnoSetupFolderPath = "$($FullDotQLogicaeApplicationScriptsFolderPath)\\inno_setup"
        $FullDotQLogicaeApplicationScriptsInnoSetupDeployFilePath = "$($FullDotQLogicaeApplicationScriptsInnoSetupFolderPath)\\deploy.ps1"
        $FullDotQLogicaeApplicationScriptsInnoSetupTemplateFilePath = "$($FullDotQLogicaeApplicationScriptsInnoSetupFolderPath)\\template.iss"
        $FullDotQLogicaeApplicationScriptsInnoSetupTargetFilePath = "$($FullDotQLogicaeApplicationScriptsInnoSetupFolderPath)\\target.iss"

        $FullDotQLogicaeApplicationScriptsVisualStudio2022FolderPath = "$($FullDotQLogicaeApplicationScriptsFolderPath)\\visual_studio_2022"
        $FullDotQLogicaeApplicationScriptsWindowsRegistryFolderPath = "$($FullDotQLogicaeApplicationScriptsFolderPath)\\windows_registry"

        $FullDotQLogicaeApplicationTemplatesFolderPath = "$($FullDotQLogicaeApplicationFolderPath)\\templates"

        $RelativeBuildQLogicaeFolderPath = "qlogicae"
        $RelativeBuildQLogicaeApplicationFolderPath = "$($RelativeBuildQLogicaeFolderPath)\\application"        

        $RelativeBuildQLogicaeApplicationConfigurationsFolderPath = "$($RelativeBuildQLogicaeApplicationFolderPath)\\configurations"
        $RelativeBuildQLogicaeApplicationConfigurationsQLogicaeFilePath = "$($RelativeBuildQLogicaeApplicationConfigurationsFolderPath)\\qlogicae.json"
        $RelativeBuildQLogicaeApplicationConfigurationsEnvironmentFilePath = "$($RelativeBuildQLogicaeApplicationConfigurationsFolderPath)\\environment.json"
        
        $RelativeBuildQLogicaeApplicationDocumentationFolderPath = "$($RelativeBuildQLogicaeApplicationFolderPath)\\documentation"
        $RelativeBuildQLogicaeApplicationDocumentationLicenseFilePath = "$($RelativeBuildQLogicaeApplicationDocumentationFolderPath)\\LICENSE.txt"
        
        $RelativeBuildQLogicaeApplicationAssetsFolderPath = "$($RelativeBuildQLogicaeApplicationFolderPath)\\assets"
        $RelativeBuildQLogicaeApplicationAssetsApplicationFilePath = "$($RelativeBuildQLogicaeApplicationAssetsFolderPath)\\application.ico"

        $RelativeBuildEnvironmentVariablesFolderPath = "environment_variables"
        $RelativeBuildEnvironmentVariablesUserFilePath = "$($RelativeBuildEnvironmentVariablesFolderPath)\\user.json"
        $RelativeBuildEnvironmentVariablesSystemFilePath = "$($RelativeBuildEnvironmentVariablesFolderPath)\\system.json"
        
        $RelativeBuildWindowsRegistryFolderPath = "windows_registry"
        $RelativeBuildWindowsRegistryHKCUFilePath = "$($RelativeBuildWindowsRegistryFolderPath)\\hkcu.json"
        $RelativeBuildWindowsRegistryHKLMFilePath = "$($RelativeBuildWindowsRegistryFolderPath)\\hklm.json"

        $this.Configurations = [PSCustomObject]@{            
            ConsoleExecutionRootFolderPath = $ConsoleExecutionRootFolderPath
            StartupPowerShellScriptFolderPath = $StartupPowerShellScriptFolderPath
            QLogicaeWindowsRegistryRootPath = $QLogicaeWindowsRegistryRootPath
            QLogicaeEnvironmentVariablesRootPath = $QLogicaeEnvironmentVariablesRootPath
            FullQLogicaeSolutionRootFolderPath = $FullQLogicaeSolutionRootFolderPath
        
            FullQLogicaeFolderPath = $FullQLogicaeFolderPath
            FullDotQLogicaeFolderPath = $FullDotQLogicaeFolderPath
            FullDotQLogicaeApplicationFolderPath = $FullDotQLogicaeApplicationFolderPath
        
            FullDotQLogicaeApplicationConfigurationsFolderPath = $FullDotQLogicaeApplicationConfigurationsFolderPath
            FullDotQLogicaeApplicationConfigurationsQLogicaeFilePath = $FullDotQLogicaeApplicationConfigurationsQLogicaeFilePath
        
            FullDotQLogicaeApplicationScriptsFolderPath = $FullDotQLogicaeApplicationScriptsFolderPath

            FullDotQLogicaeApplicationScriptsEnvironmentVariablesFolderPath = $FullDotQLogicaeApplicationScriptsEnvironmentVariablesFolderPath
        
            FullDotQLogicaeApplicationScriptsInnoSetupFolderPath = $FullDotQLogicaeApplicationScriptsInnoSetupFolderPath
            FullDotQLogicaeApplicationScriptsInnoSetupDeployFilePath = $FullDotQLogicaeApplicationScriptsInnoSetupDeployFilePath
            FullDotQLogicaeApplicationScriptsInnoSetupTemplateFilePath = $FullDotQLogicaeApplicationScriptsInnoSetupTemplateFilePath
            FullDotQLogicaeApplicationScriptsInnoSetupTargetFilePath = $FullDotQLogicaeApplicationScriptsInnoSetupTargetFilePath

            FullDotQLogicaeApplicationScriptsVisualStudio2022FolderPath = $FullDotQLogicaeApplicationScriptsVisualStudio2022FolderPath
            FullDotQLogicaeApplicationScriptsWindowsRegistryFolderPath = $FullDotQLogicaeApplicationScriptsWindowsRegistryFolderPath

            FullDotQLogicaeApplicationTemplatesFolderPath = $FullDotQLogicaeApplicationTemplatesFolderPath

            RelativeBuildQLogicaeFolderPath = $RelativeBuildQLogicaeFolderPath
            RelativeBuildQLogicaeApplicationFolderPath = $RelativeBuildQLogicaeApplicationFolderPath

            RelativeBuildQLogicaeApplicationConfigurationsFolderPath = $RelativeBuildQLogicaeApplicationConfigurationsFolderPath
            RelativeBuildQLogicaeApplicationConfigurationsQLogicaeFilePath = $RelativeBuildQLogicaeApplicationConfigurationsQLogicaeFilePath
            RelativeBuildQLogicaeApplicationConfigurationsEnvironmentFilePath = $RelativeBuildQLogicaeApplicationConfigurationsEnvironmentFilePath
        
            RelativeBuildQLogicaeApplicationDocumentationFolderPath = $RelativeBuildQLogicaeApplicationDocumentationFolderPath
            RelativeBuildQLogicaeApplicationDocumentationLicenseFilePath = $RelativeBuildQLogicaeApplicationDocumentationLicenseFilePath
        
            RelativeBuildQLogicaeApplicationAssetsFolderPath = $RelativeBuildQLogicaeApplicationAssetsFolderPath
            RelativeBuildQLogicaeApplicationAssetsApplicationFilePath = $RelativeBuildQLogicaeApplicationAssetsApplicationFilePath

            RelativeBuildEnvironmentVariablesFolderPath = $RelativeBuildEnvironmentVariablesFolderPath
            RelativeBuildEnvironmentVariablesUserFilePath = $RelativeBuildEnvironmentVariablesUserFilePath
            RelativeBuildEnvironmentVariablesSystemFilePath = $RelativeBuildEnvironmentVariablesSystemFilePath
        
            RelativeBuildWindowsRegistryFolderPath = $RelativeBuildWindowsRegistryFolderPath
            RelativeBuildWindowsRegistryHKCUFilePath = $RelativeBuildWindowsRegistryHKCUFilePath
            RelativeBuildWindowsRegistryHKLMFilePath = $RelativeBuildWindowsRegistryHKLMFilePath
        }
    }    

    [void] DeployViaInnoSetup(
        [string]$EnvironmentType,
        [string]$ProjectName,
        [string]$InputFolderPath,
        [string]$OutputFolderPath
    ) {
        Write-Host "> Inno Setup Deployment Starts"
            
        $this.SetupInnoSetupTargetFile(
            $EnvironmentType
        )

        $this.ExecuteInnoSetup(
            $EnvironmentType,
            $ProjectName,
            $InputFolderPath,
            $OutputFolderPath
        )

        Write-Host "> Inno Setup Deployment Complete"
        try {
            

        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::DeployVisualStudio2022Project()"

            exit
        }         
    }
    
    [void] ExecuteInnoSetup(
        [string]$EnvironmentType,
        [string]$ProjectName,
        [string]$InputFolderPath,
        [string]$OutputFolderPath) {

        $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()
        $DotQLogicaeTemplateDefaultApplicationFile = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\build\\$($this.Configurations.RelativeBuildQLogicaeApplicationConfigurationsQLogicaeFilePath)")
        
        & "$($DotQLogicaePrivateApplicationFile.inno_setup.full_executable_path)"`
            /DMyAppId="$($DotQLogicaeTemplateDefaultApplicationFile.id)" `
            /DMyAppName="$($DotQLogicaeTemplateDefaultApplicationFile.name)" `
            /DMyAppVersion="$($DotQLogicaeTemplateDefaultApplicationFile.version)" `
            /DMyAppPublisher="$($DotQLogicaeTemplateDefaultApplicationFile.company)" `
            /DMyAppURL="$($DotQLogicaeTemplateDefaultApplicationFile.url)" `
            /DMyAppExeName="$($DotQLogicaePrivateApplicationFile.application.executable_name)" `
            /DMyLicenseFile="$($this.Configurations.FullQLogicaeSolutionRootFolderPath)\\$($InputFolderPath)\\$($this.Configurations.RelativeBuildQLogicaeApplicationDocumentationLicenseFilePath)" `
            /DMyOutputBaseFilename="$($DotQLogicaeTemplateDefaultApplicationFile.name)_$($DotQLogicaeTemplateDefaultApplicationFile.version)_$($DotQLogicaeTemplateDefaultApplicationFile.architecture)_Setup" `
            /DMySetupIconFile="$($this.Configurations.FullQLogicaeSolutionRootFolderPath)\\$($InputFolderPath)\\$($this.Configurations.RelativeBuildQLogicaeApplicationAssetsApplicationFilePath)" `
            /DMyOutputDir="$($this.Configurations.FullQLogicaeSolutionRootFolderPath)\\$($OutputFolderPath)" `
            /DMyAppExeSource="$($this.Configurations.FullQLogicaeSolutionRootFolderPath)\\$($InputFolderPath)\\$($DotQLogicaePrivateApplicationFile.application.executable_name).exe" `
            /DMyAppFolderSource="$($this.Configurations.FullQLogicaeSolutionRootFolderPath)\\$($InputFolderPath)" `
            /DMyAppPrivilegesRequired="$($DotQLogicaePrivateApplicationFile.inno_setup.privileges_required)" `
            "$($this.Configurations.FullDotQLogicaeApplicationScriptsInnoSetupTargetFilePath)" `
            2>&1 | Tee-Object -Variable buildLog | Out-Host
    }

    [void] SetupInnoSetupTargetFile(
        [string]$EnvironmentType) {

        $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()
        $DotQLogicaeTemplateDefaultApplicationFile = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\build\\$($this.Configurations.RelativeBuildQLogicaeApplicationConfigurationsQLogicaeFilePath)")
        $DotQLogicaeTemplateReleaseEnvironmentFile = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\build\\$($this.Configurations.RelativeBuildQLogicaeApplicationConfigurationsEnvironmentFilePath)")            
            
        $this.CopyFile(
            $this.Configurations.FullDotQLogicaeApplicationScriptsInnoSetupTemplateFilePath,
            $this.Configurations.FullDotQLogicaeApplicationScriptsInnoSetupTargetFilePath
        )

        $InnoSetupTargetOutput = "`n[Languages]`n"
        $InnoSetupData = $DotQLogicaePrivateApplicationFile.inno_setup.languages
        foreach ($name in $InnoSetupData.PSObject.Properties.Name) {
            $properties = $InnoSetupData.$name

            if ($properties.is_enabled) {
                $InnoSetupTargetOutput +=
                    "Name: `"$name`"; MessagesFile: `"$($properties.message_file)`"`n"
            }
        }

        if ($DotQLogicaePrivateApplicationFile.windows_registry.hkcu.is_enabled -or
            $DotQLogicaePrivateApplicationFile.windows_registry.hklm.is_enabled -or
            $DotQLogicaePrivateApplicationFile.environment_variables.user.is_enabled -or
            $DotQLogicaePrivateApplicationFile.environment_variables.system.is_enabled -or
            $DotQLogicaePrivateApplicationFile.inno_setup.is_application_path_added_to_environment_variables) {

            $InnoSetupTargetOutput += "`n[Registry]`n"

            $WindowsRegistryHKCUFullPath = $this.GetPartialQLogicaeHKCUWindowsRegistryFullPath(
                $DotQLogicaeTemplateDefaultApplicationFile.id,
                $DotQLogicaeTemplateReleaseEnvironmentFile.id
            )
            $WindowsRegistryHKLMFullPath = $this.GetPartialQLogicaeHKLMWindowsRegistryFullPath(
                $DotQLogicaeTemplateDefaultApplicationFile.id,
                $DotQLogicaeTemplateReleaseEnvironmentFile.id
            )
            if ($DotQLogicaePrivateApplicationFile.windows_registry.hkcu.is_enabled) {                
                $InnoSetupData = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\$($this.Configurations.RelativeBuildWindowsRegistryHKCUFilePath)")                
                foreach ($name in $InnoSetupData.PSObject.Properties.Name) {
                    $value = $InnoSetupData.$name

                    $InnoSetupTargetOutput +=
					    "Root: HKCU; Subkey: `"$($WindowsRegistryHKCUFullPath)`"; ValueType: string; ValueName: `"$($name)`"; ValueData: `"$($value)`"; Flags: uninsdeletekeyifempty`n";
                }
                $InnoSetupData = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\$($this.Configurations.RelativeBuildWindowsRegistryHKCUFilePath)")
                foreach ($name in $InnoSetupData.PSObject.Properties.Name) {
                    $value = $InnoSetupData.$name

                    $InnoSetupTargetOutput +=
					    "Root: HKCU; Subkey: `"$($WindowsRegistryHKCUFullPath)`"; ValueType: string; ValueName: `"$($name)`"; ValueData: `"$($value)`"; Flags: uninsdeletekeyifempty`n";
                }
            }

            if ($DotQLogicaePrivateApplicationFile.windows_registry.hklm.is_enabled) {
                $InnoSetupData = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\$($this.Configurations.RelativeBuildWindowsRegistryHKLMFilePath)")
                foreach ($name in $InnoSetupData.PSObject.Properties.Name) {
                    $value = $InnoSetupData.$name

                    $InnoSetupTargetOutput +=
					    "Root: HKLM; Subkey: `"$($WindowsRegistryHKLMFullPath)`"; ValueType: string; ValueName: `"$($name)`"; ValueData: `"$($value)`"; Flags: uninsdeletekeyifempty`n";
                }
                $InnoSetupData = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\$($this.Configurations.RelativeBuildWindowsRegistryHKLMFilePath)")
                foreach ($name in $InnoSetupData.PSObject.Properties.Name) {
                    $value = $InnoSetupData.$name

                    $InnoSetupTargetOutput +=
					    "Root: HKLM; Subkey: `"$($WindowsRegistryHKLMFullPath)`"; ValueType: string; ValueName: `"$($name)`"; ValueData: `"$($value)`"; Flags: uninsdeletekeyifempty`n";
                }
            }     
                
            if ($DotQLogicaePrivateApplicationFile.environment_variables.user.is_enabled) {                
                $InnoSetupData = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\$($this.Configurations.RelativeBuildEnvironmentVariablesUserFilePath)")
                foreach ($name in $InnoSetupData.PSObject.Properties.Name) {
                    $value = $InnoSetupData.$name

                    $InnoSetupTargetOutput +=
					    "Root: HKCU; Subkey: `"Environment`"; ValueType: string; ValueName: `"$($name)`"; ValueData: `"$($value)`"`n";
                }
                $InnoSetupData = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\$($this.Configurations.RelativeBuildEnvironmentVariablesUserFilePath)")
                foreach ($name in $InnoSetupData.PSObject.Properties.Name) {
                    $value = $InnoSetupData.$name

                    $InnoSetupTargetOutput +=
					    "Root: HKCU; Subkey: `"Environment`"; ValueType: string; ValueName: `"$($name)`"; ValueData: `"$($value)`"`n";
                }
            }

            if ($DotQLogicaePrivateApplicationFile.environment_variables.system.is_enabled) {
                $InnoSetupData = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\$($this.Configurations.RelativeBuildEnvironmentVariablesSystemFilePath)")
                foreach ($name in $InnoSetupData.PSObject.Properties.Name) {
                    $value = $InnoSetupData.$name

                    $InnoSetupTargetOutput +=
					    "Root: HKLM; Subkey: `"SYSTEM\CurrentControlSet\Control\Session Manager\Environment`"; ValueType: string; ValueName: `"$($name)`"; ValueData: `"$($value)`"`n";
                }
                $InnoSetupData = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\$($this.Configurations.RelativeBuildEnvironmentVariablesSystemFilePath)")
                foreach ($name in $InnoSetupData.PSObject.Properties.Name) {
                    $value = $InnoSetupData.$name

                    $InnoSetupTargetOutput +=
					    "Root: HKLM; Subkey: `"SYSTEM\CurrentControlSet\Control\Session Manager\Environment`"; ValueType: string; ValueName: `"$($name)`"; ValueData: `"$($value)`"`n";
                }
            }
                
            if ($DotQLogicaePrivateApplicationFile.inno_setup.is_application_path_added_to_environment_variables) {
                $InnoSetupTargetOutput +=
                    "Root: HKLM; Subkey: `"SYSTEM\CurrentControlSet\Control\Session Manager\Environment`"; ValueType: expandsz; ValueName: `"Path`"; ValueData: `"{olddata};{app}`"`n";                
            }
        }

        Add-Content -Path $this.Configurations.FullDotQLogicaeApplicationScriptsInnoSetupTargetFilePath -Value $InnoSetupTargetOutput
        try {
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::SetupInnoSetupTargetFile()"

            exit
        }
    }

    [string] GetExecutableFile(
        [string]$Path) {
        try {
            return "$(Get-ChildItem -Path "$($Path)" -Filter *.exe | Select-Object -First 1)"
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetExecutableFile()"

            exit
        }        
    }

    [void] BuildVisualStudio2022Project(
        [string]$EnvironmentType,
        [string]$VisualStudio2022Architecture,
        [string]$VisualStudio2022Build,
        [string]$VisualStudio2022InputProject,
        [string]$VisualStudio2022StartupProject) {
        try {
            Write-Host "> Visual Studio 2022 Build Starts"

            $this.SetupWindowsRegistry($EnvironmentType)
            
            $this.SetupEnvironmentVariables($EnvironmentType)                       
            
            $this.ClearVisualStudio2022BuildFolder(
                $VisualStudio2022Architecture,
                $VisualStudio2022Build,
                $VisualStudio2022InputProject
            )

            $this.SetupBuildVisualStudio2022TemplateFileSystem(
                $EnvironmentType,
                $VisualStudio2022Architecture,
                $VisualStudio2022Build,
                $VisualStudio2022InputProject
            )
           
            $this.BuildVisualStudio2022Code(
                $VisualStudio2022Architecture,
                $VisualStudio2022Build,
                $VisualStudio2022InputProject
            )            

            $this.RenameVisualStudio2022Executable(
                $VisualStudio2022Architecture,
                $VisualStudio2022Build,
                $VisualStudio2022InputProject
            )         

            $this.OrganizeVisualStudio2022BuildFolder(
                $VisualStudio2022Architecture,
                $VisualStudio2022Build,
                $VisualStudio2022InputProject
            )            
            
            Write-Host "> Visual Studio 2022 Build Complete"
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::BuildVisualStudio2022Project()"

            exit
        }        
    }
    
    [void] RenameVisualStudio2022Executable(
        [string]$VisualStudio2022Architecture,
        [string]$VisualStudio2022Build,
        [string]$VisualStudio2022InputProject) {
        try {
            Write-Host "> Renaming Visual Studio 2022 Executable Starts"
            
            $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()
            $DotQLogicaeTemplateDefaultApplicationFile = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\build\\$($this.Configurations.RelativeBuildQLogicaeApplicationConfigurationsQLogicaeFilePath)")
        
            $QLogicaeInputBuildProjectPath = $this.GetVisualStudio2022QLogicaeInputBuildProjectPath(
                    $VisualStudio2022Architecture,
                    $VisualStudio2022Build,
                    $VisualStudio2022InputProject
                )

            $OldExecutablePath = "$($QLogicaeInputBuildProjectPath)\\$($VisualStudio2022InputProject).exe"
            $NewExecutablePath = "$($QLogicaeInputBuildProjectPath)\\$($DotQLogicaePrivateApplicationFile.application.executable_name).exe"

            if (!(Test-Path $OldExecutablePath)) {
                Write-Host "> Renaming Visual Studio 2022 Executable Skipped. Executable '$($VisualStudio2022InputProject).exe' not found"
            
                return
            }

            if (-not $DotQLogicaePrivateApplicationFile.build.is_executable_renaming_enabled) {
                Write-Host "> Renaming Visual Studio 2022 Executable Skipped. 'build.is_executable_renaming_enabled' is set to false"
            
                return
            }           

            Copy-Item $OldExecutablePath -Force $NewExecutablePath
            Remove-Item $OldExecutablePath

            Write-Host "> Renaming Visual Studio 2022 Executable Complete"    
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::RenameVisualStudio2022Executable()"

            exit
        }        
     }
    
    [void] OrganizeVisualStudio2022BuildFolder(
        [string]$VisualStudio2022Architecture,
        [string]$VisualStudio2022Build,
        [string]$VisualStudio2022InputProject) {
        try {
            Write-Host "> Organizing Visual Studio 2022 Build Folder Starts"

            $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()
            $QLogicaeInputBuildProjectPath = $this.GetVisualStudio2022QLogicaeInputBuildProjectPath(
                $VisualStudio2022Architecture,
                $VisualStudio2022Build,
                $VisualStudio2022InputProject
            )
            
            if (-not $DotQLogicaePrivateApplicationFile.build.is_organization_enabled) {
                Write-Host "> Organizing Visual Studio 2022 Build Folder Skipped. 'build.is_organization_enabled' is set to false"
            
                return
            }
            
            $this.OrganizeVisualStudio2022BuildBinFolder(
                $QLogicaeInputBuildProjectPath
            )           
            $this.OrganizeVisualStudio2022BuildSymbolFolder(
                $QLogicaeInputBuildProjectPath
            )           
            
            Write-Host "> Organizing Visual Studio 2022 Build Folder Complete"    
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::ClearVisualStudio2022BuildFolder()"

            exit
        }
    }

    [void] OrganizeVisualStudio2022BuildBinFolder(
        [string]$Path) {
        try {
            Write-Host "> Organizing Visual Studio 2022 Build Bin Folder Starts"
            
            $BuildBinaryFolder = Join-Path $Path "bin"
            if (!(Test-Path $BuildBinaryFolder)) {
                New-Item -ItemType Directory -Path $BuildBinaryFolder | Out-Null
            }

            Get-ChildItem -Path $Path -Filter *.dll | Where-Object {
                $_.Name
            } | ForEach-Object {
                Write-Host "Moving $($_.Name)"
                Move-Item -Force $_.FullName $BuildBinaryFolder
            }

            Write-Host "> Organizing Visual Studio 2022 Build Bin Folder Complete"    
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::OrganizeVisualStudio2022BuildBinFolder()"

            exit
        }
    }

    [void] OrganizeVisualStudio2022BuildSymbolFolder(
        [string]$Path) {
        try {
            Write-Host "> Organizing Visual Studio 2022 Build Symbol Folder Starts"
            
            $BuildSymbolFolder = Join-Path $Path "symbols"
            if (!(Test-Path $BuildSymbolFolder)) {
                New-Item -ItemType Directory -Path $BuildSymbolFolder | Out-Null
            }

            Get-ChildItem -Path $Path -Filter *.pdb | ForEach-Object {
                Write-Host "Moving $($_.Name)"
                Move-Item -Force $_.FullName $BuildSymbolFolder
            }

            Write-Host "> Organizing Visual Studio 2022 Build Symbol Folder Complete"    
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::OrganizeVisualStudio2022BuildSymbolFolder()"

            exit
        }
    }

    [void] ClearVisualStudio2022BuildFolder(
        [string]$VisualStudio2022Architecture,
        [string]$VisualStudio2022Build,
        [string]$VisualStudio2022InputProject) {
        try {
            Write-Host "> Clearing Visual Studio 2022 Build Folder Starts"
            
            $QLogicaeInputBuildProjectPath = $this.GetVisualStudio2022QLogicaeInputBuildProjectPath(
                $VisualStudio2022Architecture,
                $VisualStudio2022Build,
                $VisualStudio2022InputProject
            )
            
            if (-not (Test-Path $QLogicaeInputBuildProjectPath)) {
                $this.CreateFolderTree($QLogicaeInputBuildProjectPath)
            
            } else {
                $this.ClearFolder($QLogicaeInputBuildProjectPath)
            }

            Write-Host "> Clearing Visual Studio 2022 Build Folder Complete"    
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::ClearVisualStudio2022BuildFolder()"

            exit
        }
    }

    [void] BuildVisualStudio2022Code(
        [string]$VisualStudio2022Architecture,
        [string]$VisualStudio2022Build,
        [string]$VisualStudio2022InputProject) {
        $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()
        $QLogicaeInputBuildProjectPath = $this.GetVisualStudio2022QLogicaeInputBuildProjectPath(
            $VisualStudio2022Architecture,
            $VisualStudio2022Build,
            $VisualStudio2022InputProject
        )
        try {
            Write-Host "> Visual Studio 2022 Build Code Starts"

            
            & "$($DotQLogicaePrivateApplicationFile.visual_studio_2022.full_devenv_executable_path)" `
                "$($this.Configurations.FullQLogicaeSolutionRootFolderPath)\\$($DotQLogicaePrivateApplicationFile.application.startup_project_name).sln" `
                /Build "$($VisualStudio2022Build)|$($VisualStudio2022Architecture)" `
                /Project "$($this.Configurations.FullQLogicaeSolutionRootFolderPath)\\$($VisualStudio2022InputProject)\\$($VisualStudio2022InputProject).vcxproj" `
                2>&1 | Tee-Object -Variable buildLog | Out-Host
            
                Write-Host "> Visual Studio 2022 Build Code Complete"    
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::BuildVisualStudio2022Code()"

            exit
        }
    }

    [void] SetupBuildVisualStudio2022TemplateFileSystem(
        [string]$EnvironmentType,
        [string]$VisualStudio2022Architecture,
        [string]$VisualStudio2022Build,
        [string]$VisualStudio2022InputProject) {
        try {
            Write-Host "> Visual Studio 2022 Template File System Setup Starts"

            $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()
            $QLogicaeInputBuildProjectPath = $this.GetVisualStudio2022QLogicaeInputBuildProjectPath(
                $VisualStudio2022Architecture,
                $VisualStudio2022Build,
                $VisualStudio2022InputProject
            )
            $InputPath = "$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\build\\*"
            $OutputPath = $QLogicaeInputBuildProjectPath
            if ((Test-Path $QLogicaeInputBuildProjectPath)) {
                $this.CopyFolder($InputPath, $OutputPath)
            }
            $InputPath = "$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\build\\*"
            $OutputPath = $QLogicaeInputBuildProjectPath
            if ((Test-Path $QLogicaeInputBuildProjectPath)) {
                $this.CopyFolder($InputPath, $OutputPath)
            }
            $InputPath = "$($this.Configurations.FullQLogicaeSolutionRootFolderPath)\\$($DotQLogicaePrivateApplicationFile.application.startup_project_name)\\qlogicae\\*"
            $OutputPath = "$($QLogicaeInputBuildProjectPath)\qlogicae"
            if ((Test-Path $QLogicaeInputBuildProjectPath)) {
                $this.CopyFolder($InputPath, $OutputPath)
            }

            Write-Host "> Visual Studio 2022 Template File System Setup Complete"
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::SetupBuildVisualStudio2022TemplateFileSystem()"

            exit
        }
    }

    [string] GetVisualStudio2022QLogicaeInputBuildProjectPath(
        [string]$VisualStudio2022Architecture,
        [string]$VisualStudio2022Build,
        [string]$VisualStudio2022InputProject
    ) {
        try {            
            $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()

            return "$($this.Configurations.FullQLogicaeSolutionRootFolderPath)\\$($VisualStudio2022Architecture)\\$($VisualStudio2022Build)\\$($VisualStudio2022InputProject)"

        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetVisualStudio2022QLogicaeInputBuildProjectPath()"

            exit
        }
    }
    
    [void] SetupWindowsRegistryHKCU(
        [string]$EnvironmentType) {
        try {
            Write-Host "> Windows Registry HKCU Setup Starts"

            $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()

            if ($DotQLogicaePrivateApplicationFile.windows_registry.hkcu.is_enabled) {
                $DotQLogicaeTemplateReleaseEnvironmentFile = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\build\\$($this.Configurations.RelativeBuildQLogicaeApplicationConfigurationsEnvironmentFilePath)")
                $DotQLogicaeTemplateDefaultApplicationFile = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\build\\$($this.Configurations.RelativeBuildQLogicaeApplicationConfigurationsQLogicaeFilePath)")
        
                $DotQLogicaeWindowsRegistryHKCUEnvironmentJSON = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\$($this.Configurations.RelativeBuildWindowsRegistryHKCUFilePath)")               
                $DotQLogicaeWindowsRegistryHKCUDefaultJSON = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\$($this.Configurations.RelativeBuildWindowsRegistryHKCUFilePath)")                   

                $WindowsRegistryHKCUFullPath = $this.GetFullQLogicaeHKCUWindowsRegistryFullPath(
                    $DotQLogicaeTemplateDefaultApplicationFile.id,
                    $DotQLogicaeTemplateReleaseEnvironmentFile.id
                )

                if (Test-Path $WindowsRegistryHKCUFullPath) {
                    Remove-Item -Path $WindowsRegistryHKCUFullPath -Recurse
                }

                if (-not (Test-Path $WindowsRegistryHKCUFullPath)) {
                    New-Item -Path $WindowsRegistryHKCUFullPath -Force | Out-Null
                }
                
                foreach ($prop in $DotQLogicaeWindowsRegistryHKCUDefaultJSON.PSObject.Properties) {
                    Set-ItemProperty -Path $WindowsRegistryHKCUFullPath -Name $prop.Name -Value $prop.Value
                }

                foreach ($prop in $DotQLogicaeWindowsRegistryHKCUEnvironmentJSON.PSObject.Properties) {
                    Set-ItemProperty -Path $WindowsRegistryHKCUFullPath -Name $prop.Name -Value $prop.Value
                }
            
                Write-Host "> Windows Registry HKCU Setup Complete"

            } else {
                Write-Host "> Windows Registry HKCU Setup Skipped. 'windows_registry.hkcu.is_enabled' is set to false"
            }
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::SetupWindowsRegistryHKCU()"

            exit
        }        
    }

    [void] SetupWindowsRegistryHKLM(
        [string]$EnvironmentType) {
        try {
            Write-Host "> Windows Registry HKLM Setup Starts"

            $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()
        
            if ($DotQLogicaePrivateApplicationFile.windows_registry.hklm.is_enabled) {
                $DotQLogicaeTemplateReleaseEnvironmentFile = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\build\\$($this.Configurations.RelativeBuildQLogicaeApplicationConfigurationsEnvironmentFilePath)")
                $DotQLogicaeTemplateDefaultApplicationFile = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\build\\$($this.Configurations.RelativeBuildQLogicaeApplicationConfigurationsQLogicaeFilePath)")
        
                $DotQLogicaeWindowsRegistryHKLMEnvironmentJSON = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\$($this.Configurations.RelativeBuildWindowsRegistryHKLMFilePath)")               
                $DotQLogicaeWindowsRegistryHKLMDefaultJSON = $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\$($this.Configurations.RelativeBuildWindowsRegistryHKLMFilePath)")               
        
                $WindowsRegistryHKLMFullPath = $this.GetFullQLogicaeHKLMWindowsRegistryFullPath(
                    $DotQLogicaeTemplateDefaultApplicationFile.id,
                    $DotQLogicaeTemplateReleaseEnvironmentFile.id
                )

                if (Test-Path $WindowsRegistryHKLMFullPath) {
                    Remove-Item -Path $WindowsRegistryHKLMFullPath -Recurse
                }

                if (-not (Test-Path $WindowsRegistryHKLMFullPath)) {
                    New-Item -Path $WindowsRegistryHKLMFullPath -Force | Out-Null
                }

                foreach ($prop in $DotQLogicaeWindowsRegistryHKLMDefaultJSON.PSObject.Properties) {
                    Set-ItemProperty -Path $WindowsRegistryHKLMFullPath -Name $prop.Name -Value $prop.Value
                }

                foreach ($prop in $DotQLogicaeWindowsRegistryHKLMEnvironmentJSON.PSObject.Properties) {
                    Set-ItemProperty -Path $WindowsRegistryHKLMFullPath -Name $prop.Name -Value $prop.Value
                }
            
                Write-Host "> Windows Registry HKLM Setup Complete"

            } else {
                Write-Host "> Windows Registry HKLM Setup Skipped. 'windows_registry.hklm.is_enabled' is set to false"
            }            
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::SetupWindowsRegistryHKLM()"

            exit
        }
    }
    
    [void] SetupEnvironmentVariablesUser(
        [string]$EnvironmentType) {
        try {
            Write-Host "> Environment Variables User Setup Starts"
            
            $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()

            if ($DotQLogicaePrivateApplicationFile.environment_variables.user.is_enabled) {            
                Write-Host "> Environment Variables User Setup Complete"    

            } else {
                Write-Host "> Environment Variables User Setup Skipped. 'environment_variables.user.is_enabled' is set to false"
            }
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::SetupEnvironmentVariablesUser()"

            exit
        }
    }

    [void] SetupEnvironmentVariablesSystem(
        [string]$EnvironmentType) {
        try {
            Write-Host "> Environment Variables System Setup Starts"

            $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()

            if ($DotQLogicaePrivateApplicationFile.environment_variables.system.is_enabled) {            
                Write-Host "> Environment Variables System Setup Complete"    

            } else {
                Write-Host "> Environment Variables System Setup Skipped. 'environment_variables.system.is_enabled' is set to false"
            }
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::SetupEnvironmentVariablesSystem()"

            exit
        }
    }        
    
    [void] ViewWindowsRegistry(
        [string]$EnvironmentType,
        [string]$RootPath) {
        try {
            $DotQLogicaeTemplateReleaseEnvironmentFile =
                $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\$($EnvironmentType)\\build\\$($this.Configurations.RelativeBuildQLogicaeApplicationConfigurationsEnvironmentFilePath)")
            $DotQLogicaeTemplateDefaultApplicationFile =
                $this.GetJSONObject("$($this.Configurations.FullDotQLogicaeApplicationTemplatesFolderPath)\\default\\build\\$($this.Configurations.RelativeBuildQLogicaeApplicationConfigurationsQLogicaeFilePath)")        
        
            $FullPath = $this.GetFullQLogicaeWindowsRegistryFullPath(
                $RootPath,
                $DotQLogicaeTemplateDefaultApplicationFile.id,
                $DotQLogicaeTemplateReleaseEnvironmentFile.id
            )

            $this.DisplayWindowsRegistryKeyValuePairs(
                $FullPath
            )

        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::ViewWindowsRegistry()"

            exit
        }
    }

    [void] GetWindowsRegistry(
        [string]$RootPath,
        [string]$SubPath,
        [string]$Key) {
        try {                        
            $FullPath = Get-ItemProperty -Path "$($RootPath):\$($SubPath)"

            if ([string]::IsNullOrEmpty($Key)) {
                $this.DisplayWindowsRegistryKeyValuePairs(
                    $FullPath
                )

            } else {
                Write-Host "$($Key) -> $($FullPath.$Key)"
            }


        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetWindowsRegistry()"

            exit
        }
    }
    
    [void] SetWindowsRegistry(
        [string]$RootPath,
        [string]$SubPath,
        [string]$Key,
        [string]$Value) {
        try {                        
            $FullPath = "$($RootPath):\$($SubPath)"

            if (-not (Test-Path $FullPath)) {
                New-Item -Path $FullPath -Force | Out-Null
            }

            Set-ItemProperty -Path $FullPath -Name $Key -Value $Value

        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::SetWindowsRegistry()"

            exit
        }
    }
    
    [void] SetupWindowsRegistry(
        [string]$EnvironmentType) {
        try {
            Write-Host "> Windows Registry Setup Starts"

            $this.SetupWindowsRegistryHKCU($EnvironmentType)
            $this.SetupWindowsRegistryHKLM($EnvironmentType)

            Write-Host "> Windows Registry Setup Complete"    
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::SetupWindowsRegistry()"

            exit
        }
    }
    [void] ViewEnvironmentVariables(
        [string]$RootPath) {

        try {
            $FullPath = ""
            if ($RootPath -eq "user") {
                $FullPath = $this.GetFullUserEnvironmentVariablesFullPath()

            } elseif ($RootPath -eq "system") {
                $FullPath = $this.GetFullSystemEnvironmentVariablesFullPath()
            }
          
            $this.DisplayWindowsRegistryKeyValuePairs(
                $FullPath
            )

        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::ViewEnvironmentVariables()"

            exit
        }
    }
    
    [void] GetEnvironmentVariable(
        [string]$RootPath,
        [string]$Key) {
        try {                        
            $FullPath = ""
            if ($RootPath -eq "user") {
                $FullPath = $this.GetFullUserEnvironmentVariablesFullPath()

            } elseif ($RootPath -eq "system") {
                $FullPath = $this.GetFullSystemEnvironmentVariablesFullPath()
            }

            $FullPath = Get-ItemProperty -Path $FullPath
            Write-Host "$($Key) -> $($FullPath.$Key)"


        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetEnvironmentVariable()"

            exit
        }
    }

    [void] SetEnvironmentVariable(
        [string]$RootPath,
        [string]$Key,
        [string]$Value) {
        try {                        
            $FullPath = ""
            if ($RootPath -eq "user") {
                $FullPath = $this.GetFullUserEnvironmentVariablesFullPath()

            } elseif ($RootPath -eq "system") {
                $FullPath = $this.GetFullSystemEnvironmentVariablesFullPath()
            }
            Set-ItemProperty -Path $FullPath -Name $Key -Value $Value

        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::SetEnvironmentVariable()"

            exit
        }
    }
    
    [void] SetupEnvironmentVariables(
        [string]$EnvironmentType) {
        try {
            Write-Host "> Environment Variables Setup Starts"

            $this.SetupEnvironmentVariablesUser($EnvironmentType)
            $this.SetupEnvironmentVariablesSystem($EnvironmentType)

            Write-Host "> Environment Variables Setup Complete"    
            
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::SetupEnvironmentVariables()"

            exit
        }
    }

    [void] DisplayWindowsRegistryKeyValuePairs(
        [string]$Path) {

        try {                        
            Get-ItemProperty -Path $Path | ForEach-Object {
                $_.PSObject.Properties | ForEach-Object {
                    Write-Host "$($_.Name) -> $($_.Value)"
                }
            }

        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::DisplayWindowsRegistryKeyValuePairs()"

            exit
        }
    }
    
    [string] GetFullQLogicaeWindowsRegistryFullPath(
        [string]$RootPath,
        [string]$ApplicationId,
        [string]$EnvironmentId
    ) {
        try {
            return "$($RootPath):\$($this.Configurations.QLogicaeWindowsRegistryRootPath)\$($ApplicationId)\$($EnvironmentId)"
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetFullQLogicaeWindowsRegistryFullPath()"

            exit
        }
    }
    
    [string] GetFullQLogicaeHKCUWindowsRegistryFullPath(
        [string]$ApplicationId,
        [string]$EnvironmentId
    ) {
        try {
            return "HKCU:\$($this.Configurations.QLogicaeWindowsRegistryRootPath)\$($ApplicationId)\$($EnvironmentId)"
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetFullQLogicaeHKCUWindowsRegistryFullPath()"

            exit
        }
    }

    [string] GetPartialQLogicaeHKCUWindowsRegistryFullPath(
        [string]$ApplicationId,
        [string]$EnvironmentId
    ) {
        try {
            return "$($this.Configurations.QLogicaeWindowsRegistryRootPath)\$($ApplicationId)\$($EnvironmentId)"
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetPartialQLogicaeHKCUWindowsRegistryFullPath()"

            exit
        }
    }

    [string] GetFullQLogicaeHKLMWindowsRegistryFullPath(
        [string]$ApplicationId,
        [string]$EnvironmentId
    ) {
        try {            
            return "HKLM:\$($this.Configurations.QLogicaeWindowsRegistryRootPath)\$($ApplicationId)\$($EnvironmentId)"
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetFullQLogicaeHKLMWindowsRegistryFullPath()"

            exit
        }
    }

    [string] GetPartialQLogicaeHKLMWindowsRegistryFullPath(
        [string]$ApplicationId,
        [string]$EnvironmentId
    ) {
        try {            
            return "$($this.Configurations.QLogicaeWindowsRegistryRootPath)\$($ApplicationId)\$($EnvironmentId)"
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetPartialQLogicaeHKLMWindowsRegistryFullPath()"

            exit
        }
    }
    
    [string] GetFullUserEnvironmentVariablesFullPath() {
        try {
            return "HKCU:\Environment"
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetFullUserEnvironmentVariablesFullPath()"

            exit
        }
    }
    
    [string] GetFullSystemEnvironmentVariablesFullPath() {
        try {
            return "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetFullSystemEnvironmentVariablesFullPath()"

            exit
        }
    }

    [bool] IsAdministrationAccessRequired() {
        try {
            $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()

            if ($this.IsAdministrator()) {
                return $false
            }

            if ($DotQLogicaePrivateApplicationFile.application.is_administration_access_required -or
                $DotQLogicaePrivateApplicationFile.windows_registry.hklm.is_enabled -or
                $DotQLogicaePrivateApplicationFile.environment_variables.system.is_enabled) {
                return $true
            }

            return $false
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::IsAdministrationAccessRequired()"
            
            exit
        }
    }

    [bool] IsAdministrationAccessRequiredForInnoSetup() {
        try {
            $DotQLogicaePrivateApplicationFile = $this.GetDotQLogicaePrivateApplicationJSON()

            if ($this.IsAdministrator()) {
                return $false
            }

            if ($DotQLogicaePrivateApplicationFile.application.is_administration_access_required -or
                $DotQLogicaePrivateApplicationFile.windows_registry.hklm.is_enabled -or
                $DotQLogicaePrivateApplicationFile.environment_variables.system.is_enabled -or
                $DotQLogicaePrivateApplicationFile.inno_setup.is_application_path_added_to_environment_variables) {
                return $true
            }

            return $false
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::IsAdministrationAccessRequiredForInnoSetup()"
            
            exit
        }
    }
    
    [bool] IsAdministrator() {
        try {                        
            return ([Security.Principal.WindowsPrincipal] `
                [Security.Principal.WindowsIdentity]::GetCurrent()
            ).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::IsAdministrator()"
            
            exit
        }
    }

    [pscustomobject] GetJSONObject(
        [string]$Path) {
        try {
            if (-not (Test-Path -Path $Path -PathType Leaf)) {
                Write-Error "> Exception at QLogicaeApplicationUtilities::GetJSONObject(): File '$Path' Not Found"
                return [pscustomobject]@{}
            }

            return (Get-Content $Path | ConvertFrom-Json)
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetJSONObject(): Failed to parse '$Path'"
            
            exit
        }
    }

    [pscustomobject] GetDotQLogicaePrivateApplicationJSON() {
        $Path = "$($this.Configurations.FullDotQLogicaeApplicationConfigurationsQLogicaeFilePath)"
        
        try {
            if (-not (Test-Path -Path $Path -PathType Leaf)) {
                Write-Error "> Exception at QLogicaeApplicationUtilities::GetDotQLogicaePrivateApplicationJSON(): File '$Path' not found"
            
                return [pscustomobject]@{}
            }

            return $this.GetJSONObject($Path)
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::GetDotQLogicaePrivateApplicationJSON(): Failed to parse '$Path'"

            exit
        }
    }

    [void] CreateFolderTree(
        [string]$Path) {
        try {
            if (-not (Test-Path $Path)) {
                New-Item -Path $Path -ItemType Directory -Force | Out-Null
            }
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::CreateFolderTree(): Failed to create '$Path'"

            exit
        }
    }

    [void] CopyFile(
        [string]$OriginalPath,
        [string]$TargetPath) {
        try {
            Copy-Item $OriginalPath $TargetPath -Force
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::CopyFile(): Failed to copy '$OriginalPath'"

            exit
        }
    }
    
    [void] CopyFolder(
        [string]$OriginalPath,
        [string]$TargetPath) {
        try {        
            Copy-Item -Path (Get-ChildItem -Path $OriginalPath -Force) -Destination $TargetPath -Recurse -Force
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::CopyFolder(): Failed to copy '$OriginalPath'"

            exit
        }
    }
    
    [void] RemoveFile(
        [string]$OriginalPath) {
        try {
            Remove-Item $OriginalPath
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::RemoveFile(): Failed to remove '$OriginalPath'"

            exit
        }
    }
    
    [void] ClearFolder(
        [string]$Path) {
        try {
            if ([string]::IsNullOrEmpty($Path)) {
                return
            }
        
            Get-ChildItem -Path $Path -Recurse | Remove-Item -Recurse
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::ClearFolder(): Failed to clear '$Path'"

            exit
        }        
    }
    
    [boolean] IsFolderEmpty(
        [string]$Path) {
        try {
            return -Not (Get-ChildItem -Path $Path -Force -Recurse)
        
        } catch {
            Write-Error "> Exception at QLogicaeApplicationUtilities::IsFolderEmpty(): Failed to parse '$Path'"

            exit
        }
    }

    static [QLogicaeApplicationUtilities] GetInstance() {
        if (-not [QLogicaeApplicationUtilities]::Instance) {
            [QLogicaeApplicationUtilities]::Instance = [QLogicaeApplicationUtilities]::new()
        }

        return [QLogicaeApplicationUtilities]::Instance
    }  
}

$script:QLogicaeApplicationUtilitiesInstance = [QLogicaeApplicationUtilities]::GetInstance()
