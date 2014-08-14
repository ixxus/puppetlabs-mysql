class mysql::client::install(
  $package_name   = $mysql::client_package_name,
  $package_ensure = $mysql::client_package_ensure
) {

  if $package_name {
    package { 'mysql_client':
      ensure => $package_ensure,
      name   => $package_name,
    }
  }
}

