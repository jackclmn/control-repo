# class profile::apache_mysql
class profile::apache_mysql {
  notify { 'test':
    message => hiera('message'),
  }
  $vhosts = hiera_hash('vhosts')
  $dbs = hiera_hash('dbs')

  class { 'apache_mysql_manager':
    vhosts => $vhosts,
    dbs    => $dbs,
  }
  contain apache_mysql_manager

}
