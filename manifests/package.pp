class owncloud::package {

  package  { $owncloud::package_name:
    ensure => present,
  }

  # apt::source { 'owncloud':
  # ensure      => $owncloud::server::ensure,
  # location    => 'http://download.opensuse.org/repositories/isv:ownCloud:community/xUbuntu_12.10/',
  # release     => '/',
  # repos       => '',
  # key         => '977C43A8BA684223',
  # include_src => false,
  #
}
