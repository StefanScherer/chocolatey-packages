$packageName = 'vmwareworkstation'
$installerType = 'exe'
$url = 'https://download3.vmware.com/software/wkst/file/VMware-workstation-full-12.5.0-4352439.exe'
$url64 = $url
$checksum = 'bacaa3b74484dea9fdaf7bd5ad02935c90841632'
$checksum64 = $checksum
$checksumType = 'sha1'
$silentArgs = '/s /v/qn EULAS_AGREED=1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType -checksum64 $checksum64
