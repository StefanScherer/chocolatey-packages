$packageName = 'docker-compose'
$url = 'https://github.com/docker/compose/releases/download/1.5.0rc1/docker-compose-Windows-x86_64.exe'
$url64 = $url
$destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file = "$($destination)\docker-compose.exe"

if ($packageName) {
  $packagelibPath=$env:chocolateyPackageFolder
  if (!(Test-Path -path $packagelibPath)) {
    New-Item $packagelibPath -type directory
  }
}

if (![System.IO.Directory]::Exists($destination)) {[System.IO.Directory]::CreateDirectory($destination)}

Update-SessionEnvironment

try {
  Get-ChocolateyWebFile $packageName $file $url $url64bit

  Write-ChocolateySuccess $packageName
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}
