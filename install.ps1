Write-Output "Cleaning up Windows 10"
.$PSScriptRoot\CleanWin10\CleanWin10.ps1

Write-Output "Install applications"

choco install googlechrome -y
choco install 7zip -y
choco install vlc -y
choco install atom -y
choco install winscp -y
choco install poshgit -y
choco install slack -y
choco install conemu -y
choco install gitkraken -y
