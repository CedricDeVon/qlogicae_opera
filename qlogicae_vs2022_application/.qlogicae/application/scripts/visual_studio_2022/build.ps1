param(
    [string]$EnvironmentType,
    [string]$VisualStudio2022Architecture,
    [string]$VisualStudio2022Build,
    [string]$VisualStudio2022InputProject,
    [string]$VisualStudio2022StartupProject
)

. (Join-Path (Split-Path -Parent $PSScriptRoot) "utilities.ps1")

if ($QLogicaeApplicationUtilitiesInstance.IsAdministrationAccessRequired() -eq $true) {

    Write-Host "> Restarting as Administrator"

    $argList = @(
        "-NoProfile",
        "-ExecutionPolicy", "Bypass",
        "-File", "`"$PSCommandPath`""
    )

    if ($EnvironmentType) {
        $argList += "-EnvironmentType `"$EnvironmentType`""
    }
    
    if ($VisualStudio2022Architecture) {
        $argList += "-VisualStudio2022Architecture `"$VisualStudio2022Architecture`""
    }
    
    if ($VisualStudio2022Build) {
        $argList += "-VisualStudio2022Build `"$VisualStudio2022Build`""
    }
    
    if ($VisualStudio2022InputProject) {
        $argList += "-VisualStudio2022InputProject `"$VisualStudio2022InputProject`""
    }
    
    if ($VisualStudio2022StartupProject) {
        $argList += "-VisualStudio2022StartupProject `"$VisualStudio2022StartupProject`""
    }

    Start-Process powershell -Verb RunAs -ArgumentList $argList
    exit
}

$QLogicaeApplicationUtilitiesInstance.BuildVisualStudio2022Project(
    $EnvironmentType,
    $VisualStudio2022Architecture,
    $VisualStudio2022Build,
    $VisualStudio2022InputProject,
    $VisualStudio2022StartupProject
)
