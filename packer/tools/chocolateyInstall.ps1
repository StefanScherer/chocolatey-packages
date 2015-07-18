$url = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.2_windows_386.zip'
$checksum = 'eae387bf87163425afd438a277756761f3ae0c38'
$url64bit = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.2_windows_amd64.zip'
$checksum64 = '6963dde0e763adc8ea3a2f432260e60ce3da71d7'
$legacyLocation = "$env:SystemDrive\HashiCorp\packer"
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "packer" "$url" "$unzipLocation" "$url64bit" `
 -checksum $checksum -checksumType 'sha1' -checksum64 $checksum64

If (Test-Path $legacyLocation) {
  Write-Host "Removing old packer installation from $legacyLocation"
  Remove-Item $legacyLocation -Force -Recurse
}
