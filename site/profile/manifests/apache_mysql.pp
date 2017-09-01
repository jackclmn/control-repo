# class profile::apache_mysql
class profile::apache_mysql {
  $vhosts = hiera(profile::apache_mysql::vhosts)
  $dbs = hiera(profile::apache_mysql::dbs)

  class { 'apache_mysql_manager':
    vhosts => $vhosts,
    dbs    => $dbs,
  }
  contain apache_mysql_manager

}
