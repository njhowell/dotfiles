Write-Output "Installing Chocolatey"
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))


choco install googlechrome -y
choco install 7zip -y
choco install git -params '"/noAutoCrlf"' -y
choco install gitextensions -y
choco install vlc -y
choco install atom -y
choco install keepass -y
choco install putty -y
choco install dropbox -y
choco install winscp -y
choco install poshgit -y
choco install slack -y




