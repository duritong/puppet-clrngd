# modules/clrngd/manifests/init.pp - manage clrngd stuff
# Copyright (C) 2007 admin@immerda.ch
#

# modules_dir { "clrngd": }

class clrngd {

    package{clrngd:
        ensure => installed,
        category => $operatingsystem ? {
            gentoo => sys-apps,
            default => ''
        },
    }


    service{clrngd:
        ensure => running,
        enabled => true,
    }    

    #no config file needed
}
