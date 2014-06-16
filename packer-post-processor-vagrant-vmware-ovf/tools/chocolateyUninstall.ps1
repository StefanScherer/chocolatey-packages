$unzipLocation = "$env:SystemDrive\HashiCorp\packer"
$pluginExe = $unzipLocation + "\packer-post-processor-vagrant-vmware-ovf.exe"

if (Test-Path $pluginExe) {
  Remove-Item $pluginExe
}
