class common {
    include chocolatey


    file {'c:/users/nick.howell/Documents/WindowsPowerShell':
        ensure => directory,
    }

    file {'c:/users/nick.howell/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1':
        ensure => present,
        source => 'puppet:///modules/common/Microsoft.PowerShell_profile.ps1'
    }

    file {'C:/Users/nick.howell/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/pageant.lnk':
      ensure => present,
      source => 'puppet:///modules/common/pageant.lnk'
    }

}
