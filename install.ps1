Write-Output "Setting execution policy"
Set-ExecutionPolicy RemoteSigned

Write-Output "Installing Chocolatey"
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))


choco install googlechrome
choco install 7zip
choco install git -params '"/noAutoCrlf"'
choco install gitextensions
choco install vlc
choco install atom
choco install keepass
choco install putty
choco install dropbox
choco install winscp
choco install poshgit
choco install slack




