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


If(Test-Path $home\.atom)
{
    Write-Output "Atom config already present"
}
else
{
    Write-Output "Setup links to Atom config and packages directory"

    mkdir $home\.atom

    cmd /c "mklink /J $home\.atom\packages $PSScriptRoot\atom\packages"
    cmd /c "mklink /H $home\.atom\config.cson $PSScriptRoot\atom\config.cson"
    cmd /c "mklink /H $home\.atom\init.coffee $PSScriptRoot\atom\init.coffee"
    cmd /c "mklink /H $home\.atom\keymap.cson $PSScriptRoot\atom\keymap.cson"
    cmd /c "mklink /H $home\.atom\snippets.cson $PSScriptRoot\atom\snippets.cson"
    cmd /c "mklink /H $home\.atom\styles.less $PSScriptRoot\atom\styles.less"
}

Write-Output "Setup link to git config"

$homepath = $ENV:HOMEPATH

$lastchar = $homepath.Substring($homepath.Length-1)

if($lastchar -ne "\")
{
   $homepath += "\"
}

If (Test-Path $ENV:HOMEDRIVE$homepath.gitconfig)
{
    Write-Output "Git config already present"
}
else
{
    cmd /c "mklink /H $ENV:HOMEDRIVE$homepath.gitconfig $PSSCriptRoot\git\.gitconfig"
}
