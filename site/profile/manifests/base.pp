# test class right now
class profile::base {
  file { '/tmp/foo':
    ensure => file,
  }
  #the base profile should include component modules that will be on all nodes

}
