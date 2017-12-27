$packageName= 'tfpt'
$url        = 'https://tfspowertoolsteam.gallerycdn.vsassets.io/extensions/tfspowertoolsteam/microsoftvisualstudioteamfoundationserver2015power/14.0.23206.0/1490046324206/177107/1/tfpt.msi'
$silentArgs = '/Q ADDLOCAL=ALL'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= @(0, 3010, 1641)
  checksum      = '503F1677D74556A37D0F5AD08B75DB62430429A2E758E0DE2B5DD4A37A355825'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
