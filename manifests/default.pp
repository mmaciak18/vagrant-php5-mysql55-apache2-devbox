group { 'puppet': ensure => 'present' }


class system {
	exec { 'apt-get update':
	    command => '/usr/bin/apt-get update'
	}
	package { [
    "nfs-common"
  ] :
    ensure => latest,
    require => Exec["apt-get update"]
  }
}

include system
include apache2
include mysql55
include php54
include composer