$packageName = 'vmwareworkstation'
$installerType = 'exe'
$url = 'https://download3.vmware.com/software/wkst/file/VMware-workstation-full-11.1.0-2496824.exe'
$url64 = $url
$checksum = '2031a55c7630bb6e1e3b06751879498fdecc4110'
$checksum64 = $checksum
$checksumType = 'sha1'
$silentArgs = '/s /nsr /v EULAS_AGREED=1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType -checksum64 $checksum64
