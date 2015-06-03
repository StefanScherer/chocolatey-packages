$url = 'https://dl.bintray.com/mitchellh/packer/packer_0.7.5_windows_386.zip'
$checksum = '4223a8e76eed0f8ad22a24b68495c37d85a334c7'
$url64bit = 'https://dl.bintray.com/mitchellh/packer/packer_0.7.5_windows_amd64.zip'
$checksum64 = '4d5db9c33e471729561cd9a83ae3024b34b2d934'
$legacyLocation = "$env:SystemDrive\HashiCorp\packer"
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "packer" "$url" "$unzipLocation" "$url64bit" `
 -checksum $checksum -checksumType 'sha1' -checksum64 $checksum64

If (Test-Path $legacyLocation) {
  Write-Host "Removing old packer installation from $legacyLocation"
  Remove-Item $legacyLocation -Force -Recurse
}
