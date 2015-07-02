$url = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.1_windows_386.zip'
$checksum = '76c9adad12ec266c29c6ae761f2dbc0cb898993f'
$url64bit = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.1_windows_amd64.zip'
$checksum64 = 'b128d9cd64c55d397a2b340f87f3ef3e927e4167'
$legacyLocation = "$env:SystemDrive\HashiCorp\packer"
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "packer" "$url" "$unzipLocation" "$url64bit" `
 -checksum $checksum -checksumType 'sha1' -checksum64 $checksum64

If (Test-Path $legacyLocation) {
  Write-Host "Removing old packer installation from $legacyLocation"
  Remove-Item $legacyLocation -Force -Recurse
}
