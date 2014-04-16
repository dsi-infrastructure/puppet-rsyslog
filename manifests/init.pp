# Class rsyslog
#
class rsyslog($server = hiera(rsyslog::logserver )) {

  if $fqdn == $server {
    $centralized = 'enable'
  } else {
    $centralized = 'disable'
  }

  package { 'rsyslog':
    ensure => installed,
  }

  file { '/etc/rsyslog.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    content => template('rsyslog/rsyslog.conf.erb'),
    require => Package['rsyslog'],
    notify  => Service['rsyslog'],
  }

  service{'rsyslog':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['rsyslog'],
  }

}
