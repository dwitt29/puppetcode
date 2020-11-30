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
}

