group { 'puppet': ensure => 'present' }

class php54 {
  file { "/etc/apt/sources.list.d/dotdeb.list":
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/php54/dotdeb.list",
  }

  exec { 'apt-update':
    command => '/usr/bin/apt-get update',
    require => [File["/etc/apt/sources.list.d/dotdeb.list"], Exec["import-gpg"]]
  }

  exec { "import-gpg":
    command => "/usr/bin/wget -q http://www.dotdeb.org/dotdeb.gpg -O -| /usr/bin/apt-key add -"
  }

  package { [
    "php5"
  ] :
    ensure => latest,
    require => Exec["apt-update"]
  }

  package { [
    "php5-dev"
  ] :
    ensure => latest,
    require => Exec["apt-update"]
  }

  package { [
    "php5-cli"
  ] :
    ensure => latest,
    require => Exec["apt-update"]
  }

  package { [
    "php5-apc"
  ] :
    ensure => latest,
    require => Exec["apt-update"]
  }

  package { [
    "php5-xdebug"
  ] :
    ensure => latest,
    require => Exec["apt-update"]
  }

  package { [
    "memcached"
  ] :
    ensure => latest,
    require => Exec["apt-update"]
  }

  package { [
    "php5-memcached"
  ] :
    ensure => latest,
    require => Exec["apt-update"]
  }

  package { [
    "php5-ldap"
  ] :
    ensure => latest,
    require => Exec["apt-update"]
  }

  package { [
    "php5-curl"
  ] :
    ensure => latest,
    require => Exec["apt-update"]
  }

  package { [
    "php5-mysqlnd"
  ] :
    ensure => latest,
    require => Exec["apt-update"]
  }
}