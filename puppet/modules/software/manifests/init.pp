class software {
    package { 'googlechrome':
        ensure          => 'latest',
        provider        => 'chocolatey',
        install_options => ['--ignore-checksums'],
        require => Class['chocolatey']
    }

    package { 'git':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    windows_env { 'PATH=C:\Program Files\Git\bin':
      require => Package['git']
    }

    package {'vscode':
        ensure   => 'latest',
        provider => 'chocolatey',
        require  => Class['chocolatey']
    }

    windows_env {'GIT_SSH=C:\Program Files\PuTTY\plink.exe':
      require => [Package['git'], Package['putty.install']]
    }

    package { 'putty.install':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { '7zip':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'vlc':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'winscp':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'poshgit':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'slack':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'launchy':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'terminals':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'vagrant':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'virtualbox':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'vmwareworkstation':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'dropbox':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'adobereader':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'github-desktop':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }

    package { 'powershell-core':
        ensure   => 'latest',
        provider => 'chocolatey',
        require  => Class['chocolatey']
    }
}
