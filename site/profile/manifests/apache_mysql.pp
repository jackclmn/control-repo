# class profile::apache_mysql
class profile::apache_mysql {
  $vhosts = {
    'vhost1' => { port => 80, docroot => '/var/www1'},
    'vhost2' => { port => 8080, docroot => '/var/www2'},
    'vhost3' => { port => 9090, docroot => '/var/www3'},
    'vhost4' => { port => 9000, docroot => '/var/www4'},
    'vhost5' => { port => 8000, docroot => '/var/www5'},
  }

  class { 'apache-mysql-manager':
    vhosts => $vhosts,
  }
}
