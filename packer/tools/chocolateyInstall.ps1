$url = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.3_windows_386.zip'
$checksum = 'bf6e87bc575704d48d6a29d06e818b684c2de9a4'
$url64bit = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.3_windows_amd64.zip'
$checksum64 = '62d18d91be62211e18f6ea31bec2c71d7cf32333'
$legacyLocation = "$env:SystemDrive\HashiCorp\packer"
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "packer" "$url" "$unzipLocation" "$url64bit" `
 -checksum $checksum -checksumType 'sha1' -checksum64 $checksum64

If (Test-Path $legacyLocation) {
  Write-Host "Removing old packer installation from $legacyLocation"
  Remove-Item $legacyLocation -Force -Recurse
}
