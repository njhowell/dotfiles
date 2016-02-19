Write-Output "Installing Chocolatey"
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Output "Install base applications"

choco install git -params '"/noAutoCrlf"' -y
choco install putty.install -y
choco install dropbox -y



write-output "Set GIT_SSH environment variable"
[Environment]::SetEnvironmentVariable("GIT_SSH", "C:\Program Files (x86)\PuTTY\plink.exe", "User")


write-host "Git, Putty and Dropbox installed. Now go set them up and clone this repo properly. Then run install.ps1"