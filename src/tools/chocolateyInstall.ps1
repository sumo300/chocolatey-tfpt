Install-ChocolateyPackage `
    -PackageName 'tfpt' `
    -FileType 'MSI' `
    -SilentArgs '/qn /norestart ADDDEFAULT=CHECKINPOLICIES,CLI,VSIP,TFPS,TSX_64' `
    -Url 'https://visualstudiogallery.msdn.microsoft.com/898a828a-af00-42c6-bbb2-530dc7b8f2e1/file/177107/1/tfpt.msi' `
    -Checksum '503F1677D74556A37D0F5AD08B75DB62430429A2E758E0DE2B5DD4A37A355825' `
    -ChecksumType 'SHA256'

$programs = @{64=${ENV:PROGRAMFILES(X86)};32=$ENV:PROGRAMFILES}[(Get-ProcessorBits)]
$bin = Join-Path $programs 'Microsoft Team Foundation Server 2015 Power Tools'

Install-ChocolateyPath `
    -PathToInstall $bin `
    -PathType 'Machine'
