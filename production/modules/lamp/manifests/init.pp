class lamp {

  package { 'iotop' :
    ensure => present,
  }

  package { 'Installing rsyslog rpm' :
    name => 'rsyslog',
    ensure => present,
  }

  service { 'Starting rsyslog service' :
    name => 'rsyslog',
    ensure => true,
    enable => true,
  }

  package { 'Installing crond rpm' :
    name => 'cronie',
    ensure => present,
  }

  service { 'Starting cronie service' :
    name => 'cronie',
    ensure => true,
    enable => true,
  }

}

