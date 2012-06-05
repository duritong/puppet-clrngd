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
