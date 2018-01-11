$packageName = 'vmwareworkstation'
$installerType = 'exe'
$url = 'https://download3.vmware.com/software/wkst/file/VMware-workstation-full-14.1.1-7528167.exe'
$url64 = $url
$checksum = '2d360e5f90cdbef9cbd1ec598b99890dfc26a06d7227bcbc30da1ec635d055e8'
$checksum64 = $checksum
$checksumType = 'sha256'
$silentArgs = '/s /v/qn EULAS_AGREED=1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType -checksum64 $checksum64
