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
        install_options => ['-params "/noAutoCrlf"'],
        require => Class['chocolatey']
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
    
    package { 'atom':
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
    
    package { 'conemu':
        ensure          => 'latest',
        provider        => 'chocolatey',
        require => Class['chocolatey']
    }
    
    package { 'gitkraken':
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
    
}