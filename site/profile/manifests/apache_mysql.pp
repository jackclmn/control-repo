# class profile::apache_mysql
class profile::apache_mysql {
  $vhosts = lookup(profile::apache_mysql::vhosts)
  $dbs = {
    'db1' => {},
    'db2' => {},
    'db3' => {},
    'db4' => {},
    'db5' => {},
  }
  class { 'apache_mysql_manager':
    vhosts => $vhosts,
    dbs    => $dbs,
  }
  contain apache_mysql_manager
  #commenttsssss
}
