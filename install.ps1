﻿Write-Output "Installing Chocolatey"
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Output "Install applications"

choco install googlechrome -y
choco install 7zip -y
choco install git -params '"/noAutoCrlf"' -y
choco install gitextensions -y
choco install vlc -y
choco install atom -y
choco install keepass -y
choco install putty.install -y
choco install dropbox -y
choco install winscp -y
choco install poshgit -y
choco install slack -y


Write-Output "Setup links to Atom config and packages directory"

cmd /c "mklink /J $home\.atom\packages $PSScriptRoot\atom\packages"
cmd /c "mklink /H $home\.atom\config.cson $PSScriptRoot\atom\config.cson"
cmd /c "mklink /H $home\.atom\init.coffee $PSScriptRoot\atom\init.coffee"
cmd /c "mklink /H $home\.atom\keymap.cson $PSScriptRoot\atom\keymap.cson"
cmd /c "mklink /H $home\.atom\snippets.cson $PSScriptRoot\atom\snippets.cson"
cmd /c "mklink /H $home\.atom\styles.less $PSScriptRoot\atom\styles.less"


Write-Output "Setup link to git config"
cmd /c "mklink /H $ENV:HOMEDRIVE$ENV:HOMEPATH.gitconfig $PSSCriptRoot\git\.gitconfig"

write-output "Set GIT_SSH environment variable"
[Environment]::SetEnvironmentVariable("GIT_SSH", "C:\Program Files (x86)\PuTTY\plink.exe", "User")
