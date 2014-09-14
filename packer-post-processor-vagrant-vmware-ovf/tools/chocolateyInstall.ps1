$url = 'https://github.com/gosddc/packer-post-processor-vagrant-vmware-ovf/releases/download/v0.2.0/packer-post-processor-vagrant-vmware-ovf.windows-i386.zip'
$url64bit = 'https://github.com/gosddc/packer-post-processor-vagrant-vmware-ovf/releases/download/v0.2.0/packer-post-processor-vagrant-vmware-ovf.windows-amd64.zip'
$unzipLocation = "$env:SystemDrive\HashiCorp\packer"

Install-ChocolateyZipPackage "packer-post-processor-vagrant-vmware-ovf" "$url" "$unzipLocation" "$url64bit"
Install-ChocolateyPath $unzipLocation


# install %APPDATA%/packer.config 
# TODO: if already exists, append the post-processor to .packerconfig
$packerConfig = "$env:APPDATA\packer.config"

$json = @"
{
  "post-processors": {
      "vagrant-vmware-ovf": "packer-post-processor-vagrant-vmware-ovf"
  }
}
"@

if (!(Test-Path $packerConfig)) {
  Set-Content -path $packerConfig -value $json
  Write-Host "Creating %APPDATA%\packer.config"
} else {
  Write-Host "Please update your %APPDATA%\packer.config manually with"
  Write-Host $json
}
