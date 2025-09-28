param(   
    [string]$RootPath,
    [string]$SubPath,
    [string]$Key,
    [string]$Value
)

. (Join-Path (Split-Path -Parent $PSScriptRoot) "utilities.ps1")

if (($RootPath -eq "system") -and
    ($QLogicaeApplicationUtilitiesInstance.IsAdministrator() -eq $false)) {

    Write-Host "> Restarting as Administrator"

    $argList = @(
        "-NoProfile",
        "-ExecutionPolicy", "Bypass",
        "-File", "`"$PSCommandPath`""
    )

    if ($RootPath) {
        $argList += "-RootPath `"$RootPath`""
    }
    
    if ($SubPath) {
        $argList += "-SubPath `"$SubPath`""
    }
    
    if ($Key) {
        $argList += "-Key `"$Key`""
    }
    
    if ($Value) {
        $argList += "-Value `"$Value`""
    }

    Start-Process powershell -Verb RunAs -ArgumentList $argList
    exit
}

$QLogicaeApplicationUtilitiesInstance.SetWindowsRegistry(
    $RootPath,
    $SubPath,
    $Key,
    $Value
)
