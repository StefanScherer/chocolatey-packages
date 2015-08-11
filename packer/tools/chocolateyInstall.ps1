$url = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.5_windows_386.zip'
$checksum = 'a3215ab245137fdd8a097612b85fe2deedcba93f'
$url64bit = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.5_windows_amd64.zip'
$checksum64 = '5b04f6a04b7068a075e4238f4d04aa79e57613ee'
$legacyLocation = "$env:SystemDrive\HashiCorp\packer"
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "packer" "$url" "$unzipLocation" "$url64bit" `
 -checksum $checksum -checksumType 'sha1' -checksum64 $checksum64

If (Test-Path $legacyLocation) {
  Write-Host "Removing old packer installation from $legacyLocation"
  Remove-Item $legacyLocation -Force -Recurse
}
