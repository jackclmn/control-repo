# class profile::apache_mysql
class profile::apache_mysql {
  $vhosts = {
    'vhost1' => { port => 80, docroot => '/var/www1'},
    'vhost2' => { port => 81, docroot => '/var/www2'},
    'vhost3' => { port => 8008, docroot => '/var/www3'},
    'vhost4' => { port => 8009, docroot => '/var/www4'},
    'vhost5' => { port => 9000, docroot => '/var/www5'},
  }
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
}
