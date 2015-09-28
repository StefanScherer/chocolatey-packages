$url = 'https://dl.bintray.com/mitchellh/otto/otto_0.1.0_windows_386.zip'
$checksum = '0df2fc8c69b27f08bd03e98dcbbf45f5941121a0769b9ac253f201c9c314ff71'
$url64bit = 'https://dl.bintray.com/mitchellh/otto/otto_0.1.0_windows_amd64.zip'
$checksum64 = '8aa135bd40db9211015626a618b8aaae5487b28eb5fba04a04d5eedfa14fd177'
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "otto" "$url" "$unzipLocation" "$url64bit" `
 -checksum $checksum -checksumType 'sha256' -checksum64 $checksum64
