class owncloud(
  $package_name = $owncloud::params::package_name
)
{

  include owncloud::package
  include owncloud::config
  notify {'yeah':}
}
