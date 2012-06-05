# modules/clrngd/manifests/init.pp - manage clrngd stuff
# Copyright (C) 2007 admin@immerda.ch
#

class clrngd {
  case $::operatingsystem {
    gentoo: { include clrngd::gentoo }
    default: { include clrngd::base }
  } 
}
