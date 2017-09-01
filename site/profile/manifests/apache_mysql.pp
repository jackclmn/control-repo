# class profile::apache_mysql
class profile::apache_mysql {
  notify { 'hello':
    message => hiera('message')
  }
  $vhosts = hiera('vhosts')
  $dbs = hiera('dbs')

  class { 'apache_mysql_manager':
    vhosts => $vhosts,
    dbs    => $dbs,
  }
  contain apache_mysql_manager

}
