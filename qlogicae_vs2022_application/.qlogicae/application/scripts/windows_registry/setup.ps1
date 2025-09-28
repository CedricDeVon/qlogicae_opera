param(
    [string]$EnvironmentType
)

. (Join-Path (Split-Path -Parent $PSScriptRoot) "utilities.ps1")

$QLogicaeApplicationUtilitiesInstance.SetupWindowsRegistry($EnvironmentType)
