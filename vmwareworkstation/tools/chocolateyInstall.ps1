$packageName = 'vmwareworkstation'
$installerType = 'exe'
$url = 'https://download3.vmware.com/software/wkst/file/VMware-workstation-full-14.0.0-6661328.exe'
$url64 = $url
$checksum = 'c596279eceb407d376daae2e91038529182af24a3144afc451aa85e9f41d48dd'
$checksum64 = $checksum
$checksumType = 'sha256'
$silentArgs = '/s /v/qn EULAS_AGREED=1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType -checksum64 $checksum64
