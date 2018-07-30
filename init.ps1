$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (! ($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))) {
    Write-Host -ForegroundColor Red "You must run this script as an administrator."
    Exit 1
}

Write-Output "Install and run puppet"

if(Get-Command puppet -ErrorAction 0) {
    Write-Host "puppet is already installed."
}
else
{
    if( [Environment]::Is64BitOperatingSystem ) {
        $MsiUrl = 'https://downloads.puppetlabs.com/windows/puppet5/puppet-agent-x64-latest.msi'
    } else {
        $MsiUrl = 'https://downloads.puppetlabs.com/windows/puppet5/puppet-agent-x86-latest.msi'
    }


    $installFile = 'C:\Windows\Temp\puppet-agent.msi'
    while(!(Test-Path $installFile)) {
        Write-Host "Downloading puppet-agent from $MsiUrl to $installFile"
        (new-object net.webclient).DownloadFile($MsiUrl, $installFile)
    }

    $install_args = @(
        '/qn',
        '/norestart',
        '/i',
        'C:\Windows\Temp\puppet-agent.msi',
        "PUPPET_AGENT_STARTUP_MODE='Disabled'"
    )

    Write-Host "Installing Puppet. Running msiexec.exe $install_args"
    $process = Start-Process -FilePath msiexec.exe -ArgumentList $install_args -Wait -PassThru
    if ($process.ExitCode -ne 0) {
        Write-Host "Installer failed with code $($process.ExitCode)"
        Exit 1
    }

    Write-Host "Puppet successfully installed."

}

# Update the path environment variable so that we can use the puppet command
# without requiring an awkward reboot.
if($env:Path -notcontains 'C:\Program Files\Puppet Labs\Puppet\bin' ) {
  $env:Path += ';C:\Program Files\Puppet Labs\Puppet\bin'
  [Environment]::SetEnvironmentVariable('Path', $env:Path, 'Machine')
}

puppet apply .\puppet\manifests\site.pp --modulepath .\puppet\modules\


write-output "Set GIT_SSH environment variable"
[Environment]::SetEnvironmentVariable("GIT_SSH", "C:\Program Files (x86)\PuTTY\plink.exe", "User")
