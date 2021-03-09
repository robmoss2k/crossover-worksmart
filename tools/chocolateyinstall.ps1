$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://s3.amazonaws.com/crossover-clients/crossovertool.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'Crossover WorkSmart*'
  checksum       = 'F7FC7B2881C3C68F204C04317E934AE2ED5E485D1B5CB7338820610A0E9305EB'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  silentArgs     = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs
