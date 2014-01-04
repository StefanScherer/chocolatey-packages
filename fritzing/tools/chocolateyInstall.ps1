$url = 'http://fritzing.org/download/0.8.5b/windows/fritzing.2013.12.17.pc.zip'
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "fritzing" "$url" "$unzipLocation" 
Install-ChocolateyDesktopLink "$unzipLocation\fritzing.2013.12.17.pc\fritzing.exe"
