$url = 'https://dl.bintray.com/mitchellh/packer/0.7.2_windows_386.zip'
$url64bit = 'https://dl.bintray.com/mitchellh/packer/0.7.2_windows_amd64.zip'
$unzipLocation = "$env:SystemDrive\HashiCorp\packer"

$packerExe = $unzipLocation + "\packer.exe"
$packerPackerExe = $unzipLocation + "\packer-packer.exe"

If (Test-Path $packerExe) {
  Write-Host "Removing old $packerExe"
  Remove-Item $packerExe
}
If (Test-Path $packerPackerExe) {
  Write-Host "Removing old $packerPackerExe"
  Remove-Item "$packerPackerExe"
}

Install-ChocolateyZipPackage "packer" "$url" "$unzipLocation" "$url64bit"
Install-ChocolateyPath $unzipLocation

If (-Not (Test-Path $packerExe)) {
  If (Test-Path "$packerPackerExe") {
    Write-Host "Copying $packerPackerExe to packer.exe"
    Copy-Item -Path "$packerPackerExe" -Destination $packerExe
  }
}
