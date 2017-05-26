$packageName = 'vmwareworkstation'
$installerType = 'exe'
$url = 'https://download3.vmware.com/software/wkst/file/VMware-workstation-full-12.5.6-5528349.exe'
$url64 = $url
$checksum = 'ec5c654c2f61af93eb38b6a28b45743916aa5fdd6d522492f36ec0b4b4434223'
$checksum64 = $checksum
$checksumType = 'sha256'
$silentArgs = '/s /v/qn EULAS_AGREED=1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType -checksum64 $checksum64
