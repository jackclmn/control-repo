# apache_mysql_server role
class role::apache_mysql_server {
  include profile::base
  include profile::apache_mysql

  Class[profile::base]
  -> Class[profile::apache_mysql]
}
