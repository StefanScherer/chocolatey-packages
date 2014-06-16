$url = 'https://github.com/gosddc/packer-post-processor-vagrant-vmware-ovf/releases/download/v0.1.2/packer-post-processor-vagrant-vmware-ovf.windows-i386.zip'
$url64bit = 'https://github.com/gosddc/packer-post-processor-vagrant-vmware-ovf/releases/download/v0.1.2/packer-post-processor-vagrant-vmware-ovf.windows-amd64.zip'
$unzipLocation = "$env:SystemDrive\HashiCorp\packer"

Install-ChocolateyZipPackage "packer-post-processor-vagrant-vmware-ovf" "$url" "$unzipLocation" "$url64bit"
Install-ChocolateyPath $unzipLocation


# install .packerconfig 
# TODO: if already exists, append the post-processor to .packerconfig
$packerConfig = "$env:USERPROFILE\.packerconfig"

$json = @"
{
  "post-processors": {
      "vagrant-vmware-ovf": "packer-post-processor-vagrant-vmware-ovf"
  }
}
"@

if (!(Test-Path $packerConfig)) {
  Set-Content -path $packerConfig -value $json
  Write-Host "Creating .packerconfig"
} else {
  Write-Host "Please update your .packerconfig manually"
}
