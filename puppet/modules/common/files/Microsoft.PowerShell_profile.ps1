
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

# Load Office 365 helper
. 'C:\Users\nick.howell\Documents\git\IS-Scripts\PowerShell Profile Helpers\Connect-Office365.ps1'

# Load Exchange Hybrid Helper
. 'C:\Users\nick.howell\Documents\git\IS-Scripts\PowerShell Profile Helpers\Connect-ExchangeHybrid.ps1'

# Load AD Sync Helper
. 'C:\Users\nick.howell\Documents\git\IS-Scripts\PowerShell Profile Helpers\Sync-Office365.ps1'
# Load Openstack Helper
. 'C:\Users\nick.howell\Documents\git\IS-Scripts\PowerShell Profile Helpers\Connect-Openstack.ps1'
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
