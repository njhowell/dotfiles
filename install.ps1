Write-Output "Installing Chocolatey"
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Output "Install applications"

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


Write-Output "Setup links to Atom config and packages directory"

mklink /J ~/.atom/packages $PSScriptRoot/.atom/packages
mklink /H ~/.atom/config.cson $PSScriptRoot/.atom/config.cson
mklink /H ~/.atom/init.coffee $PSScriptRoot/.atom/init.coffee
mklink /H ~/.atom/keymap.cson $PSScriptRoot/.atom/keymap.cson
mklink /H ~/.atom/snippets.cson $PSScriptRoot/.atom/snippets.cson
mklink /H ~/.atom/styles.less $PSScriptRoot/.atom/styles.less



