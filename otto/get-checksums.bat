rem @echo off
if "%1" == "" (
  echo Usage: %0 version
  echo Example: %0 0.0.1
  goto EOF
)

choco install -y checksum -version 0.0.3
choco install -y curl
curl -Lko 32.zip https://dl.bintray.com/mitchellh/otto/otto_%1_windows_386.zip
curl -Lko 64.zip https://dl.bintray.com/mitchellh/otto/otto_%1_windows_amd64.zip
checksum -t sha1 32.zip
checksum -t sha1 64.zip
del 32.zip
del 64.zip
