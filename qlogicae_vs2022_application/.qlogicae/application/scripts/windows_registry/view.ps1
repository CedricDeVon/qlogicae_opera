param(
    [string]$EnvironmentType,
    [string]$RootPath
)

. (Join-Path (Split-Path -Parent $PSScriptRoot) "utilities.ps1")

$QLogicaeApplicationUtilitiesInstance.ViewWindowsRegistry(
    $EnvironmentType,
    $RootPath
)
