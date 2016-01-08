$packageName = 'vmwareworkstation'
$installerType = 'exe'
$url = 'https://download3.vmware.com/software/wkst/file/VMware-workstation-full-12.1.0-3272444.exe'
$url64 = $url
$checksum = 'b8096e025e30e7015711b83644e851207a0f1d82'
$checksum64 = $checksum
$checksumType = 'sha1'
$silentArgs = '/s /nsr /v EULAS_AGREED=1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType -checksum64 $checksum64
