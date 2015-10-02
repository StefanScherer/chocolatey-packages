$url = 'https://dl.bintray.com/mitchellh/otto/otto_0.1.1_windows_386.zip'
$checksum = '3835230431A29D6E5656108DC93308C5D74F73EA'
$url64bit = 'https://dl.bintray.com/mitchellh/otto/otto_0.1.1_windows_amd64.zip'
$checksum64 = 'C25404B34AC98DB12D41C604B8CFE95FB3902DFE'
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "otto" "$url" "$unzipLocation" "$url64bit" `
 -checksum $checksum -checksumType 'sha1' -checksum64 $checksum64
