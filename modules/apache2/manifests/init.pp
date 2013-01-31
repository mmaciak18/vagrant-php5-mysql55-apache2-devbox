group { 'puppet': ensure => 'present' }

class apache2 {
  package { "apache2":
    ensure => present,
    require => Exec['apt-get update']
  }

  service { "apache2":
    ensure => running,
    require => Package["apache2"],
  }
}