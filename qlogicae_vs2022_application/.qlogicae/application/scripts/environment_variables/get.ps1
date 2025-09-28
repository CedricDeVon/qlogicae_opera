param(
    [string]$RootPath,
    [string]$Key
)

. (Join-Path (Split-Path -Parent $PSScriptRoot) "utilities.ps1")

$QLogicaeApplicationUtilitiesInstance.GetEnvironmentVariable(
    $RootPath,
    $Key
)
