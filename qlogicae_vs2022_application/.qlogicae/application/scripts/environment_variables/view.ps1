param(
    [string]$RootPath
)

. (Join-Path (Split-Path -Parent $PSScriptRoot) "utilities.ps1")

$QLogicaeApplicationUtilitiesInstance.ViewEnvironmentVariables(
    $RootPath
)
