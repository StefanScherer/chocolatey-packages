$url = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.6_windows_386.zip'
$checksum = '8d0bd037909206926d988b30e9336faf105dffe97c2924d455b28de437557c7f'
$url64bit = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.6_windows_amd64.zip'
$checksum64 = '786503f2ffe658c1b318af227eabb8c10f3f425608ad4ef709206757931b7eee'
$legacyLocation = "$env:SystemDrive\HashiCorp\packer"
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "packer" "$url" "$unzipLocation" "$url64bit" `
 -checksum $checksum -checksumType 'sha256' -checksum64 $checksum64

If (Test-Path $legacyLocation) {
  Write-Host "Removing old packer installation from $legacyLocation"
  Remove-Item $legacyLocation -Force -Recurse
}
