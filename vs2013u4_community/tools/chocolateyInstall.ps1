Install-ChocolateyPackage `
  'vs_community.exe' 'exe' "/Passive /NoRestart /Log $($env:temp)\vs_community.log" `
  'http://download.microsoft.com/download/7/1/B/71BA74D8-B9A0-4E6C-9159-A8335D54437E/vs_community.exe' -validExitCodes @(0,3010)