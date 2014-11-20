# == Class: profile::base ==
#
# Base dummy class
#
# === Parameters ===
#
# None
#
# === Facts ===
#
# None
#
# === Examples ===
#
# none
#
class profile::base inherits profile {
  tag 'profile::base'

  file { '/etc/issue':
    ensure  => present,
    content => template('base/issue.erb'),
  }

  file { '/etc/issue.net':
    ensure  => present,
    content => template('base/issue.net.erb'),
  }
}

