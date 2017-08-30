# class profile::apache_mysql
class profile::apache_mysql (
  $vhosts = $profile::apache::vhosts,
  ) {

  class { 'apache-mysql-manager':
    vhosts => $vhosts,
    dbs    => $dbs,
  }
}
