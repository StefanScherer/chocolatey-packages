$packageName = 'vmwareworkstation'
$installerType = 'exe'
$url = 'https://download3.vmware.com/software/wkst/file/VMware-workstation-full-11.1.2-2780323.exe'
$url64 = $url
$checksum = 'c7091d31b8cf2d4d097bbd6f26d807d3d66278a9'
$checksum64 = $checksum
$checksumType = 'sha1'
$silentArgs = '/s /nsr /v EULAS_AGREED=1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType -checksum64 $checksum64
