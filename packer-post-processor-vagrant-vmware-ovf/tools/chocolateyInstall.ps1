$url = 'https://github.com/gosddc/packer-post-processor-vagrant-vmware-ovf/releases/download/v0.1.2/packer-post-processor-vagrant-vmware-ovf.windows-i386.zip'
$url64bit = 'https://github.com/gosddc/packer-post-processor-vagrant-vmware-ovf/releases/download/v0.1.2/packer-post-processor-vagrant-vmware-ovf.windows-amd64.zip'
$unzipLocation = "$env:SystemDrive\HashiCorp\packer"

Install-ChocolateyZipPackage "packer" "$url" "$unzipLocation" "$url64bit"
Install-ChocolateyPath $unzipLocation
