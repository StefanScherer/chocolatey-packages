#$url = 'http://fritzing.org/download/0.8.5b/windows/fritzing.2013.12.17.pc.zip'
#$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

remove-item "$env:UserProfile/Desktop/fritzing.exe.lnk"  -ErrorAction SilentlyContinue

# UnInstall-ChocolateyZipPackage "fritzing" "$url"
