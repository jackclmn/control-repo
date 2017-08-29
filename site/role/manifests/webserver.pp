# Webserver Role
class role::webserver {
  include profile::base
  include profile::apache
  include profile::mysql

  Class[profile::base]
  -> Class[profile::apache]
  -> Class[profile::mysql]
#commentt
}
