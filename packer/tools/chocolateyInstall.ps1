$url = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.0_windows_386.zip'
$checksum = '0f87bcb0d35c998b9a119e472d58e1b319519ccf'
$url64bit = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.0_windows_amd64.zip'
$checksum64 = 'b7127b02abe620c5c0276b9d9ecb78bd93400225'
$legacyLocation = "$env:SystemDrive\HashiCorp\packer"
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "packer" "$url" "$unzipLocation" "$url64bit" `
 -checksum $checksum -checksumType 'sha1' -checksum64 $checksum64

If (Test-Path $legacyLocation) {
  Write-Host "Removing old packer installation from $legacyLocation"
  Remove-Item $legacyLocation -Force -Recurse
}
