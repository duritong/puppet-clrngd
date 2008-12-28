# modules/clrngd/manifests/init.pp - manage clrngd stuff
# Copyright (C) 2007 admin@immerda.ch
#

class clrngd {
    case $operatingsystem {
        gentoo: { include clrngd::gentoo }
        default: { include clrngd::base }
    } 
}

class clrngd::base {
    package{'clrngd':
        ensure => installed,
    }
    service{clrngd:
        ensure => running,
        enable => true,
        hasstatus => true,
        require => Package['clrngd']
    } 
}

class clrngd::gentoo inherits clrngd::base {
    Package['clrngd']{
        category => 'sys-apps',
    }
}
