class owncloud::config {

  user { 'owncloud':
    ensure  => present,
    gid     => 'owncloud',
    home    => '/usr/share/owncloud',
    require => Class['owncloud::package'],
  }

  group { 'owncloud':
    ensure  => present,
  }

  # make sure data directory is writeble by php-fpm
  file { '/var/lib/owncloud/data/':
    owner   => owncloud,
    group   => owncloud,
    mode    => '0600',
    recurse => true
  }

  file { '/etc/owncloud/':
    ensure  => present,
    owner   => owncloud,
    group   => owncloud,
    mode    => '0600',
    recurse => false
  }

  # This file is mentionned but no source to be found
  #file { '/etc/owncloud/config.php':
  #  owner   => owncloud,
  #  group   => owncloud,
  #  mode    => '0600',
  #  recurse => false
  #}

  # Should not call module from here..
  #php::fpm::pool { 'owncloud':
  #  port    => '9006',
  #  require => User['owncloud']
  #}

}
