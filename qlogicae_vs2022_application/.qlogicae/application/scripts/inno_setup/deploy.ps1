param(
    [string]$EnvironmentType,
    [string]$ProjectName,
    [string]$InputFolderPath,
    [string]$OutputFolderPath
)

. (Join-Path (Split-Path -Parent $PSScriptRoot) "utilities.ps1")

$QLogicaeApplicationUtilitiesInstance.DeployViaInnoSetup(
    $EnvironmentType,
    $ProjectName,
    $InputFolderPath,
    $OutputFolderPath
)
