$url = 'https://dl.bintray.com/mitchellh/otto/otto_0.1.0_windows_386.zip'
$checksum = 'c0949e03eae0f853a4cea62556202664110265bd'
$url64bit = 'https://dl.bintray.com/mitchellh/otto/otto_0.1.0_windows_amd64.zip'
$checksum64 = '9c536d080db8908d22a30ab444de8410269b07f1'
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "otto" "$url" "$unzipLocation" "$url64bit" `
 -checksum $checksum -checksumType 'sha1' -checksum64 $checksum64
