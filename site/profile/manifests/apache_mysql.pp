# class profile::apache_mysql
class profile::apache_mysql {
  $vhosts = lookup(profile::apache_mysql::vhosts)
  $dbs = lookup(profile::apache_mysql::dbs)

  class { 'apache_mysql_manager':
    vhosts => $vhosts,
    dbs    => $dbs,
  }
  contain apache_mysql_manager

}
