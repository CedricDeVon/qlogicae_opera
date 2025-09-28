param(
    [string]$RootPath,
    [string]$SubPath,
    [string]$Key
)

. (Join-Path (Split-Path -Parent $PSScriptRoot) "utilities.ps1")

$QLogicaeApplicationUtilitiesInstance.GetWindowsRegistry(
    $RootPath,
    $SubPath,
    $Key
)
