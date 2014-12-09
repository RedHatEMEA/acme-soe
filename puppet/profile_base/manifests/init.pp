# == Class: profile_base ==
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
class profile_base {
  tag 'profile_base'

  include profile

  file { '/etc/issue':
    ensure  => present,
    content => template('base/issue.erb'),
  }

  file { '/etc/issue.net':
    ensure  => present,
    content => template('base/issue.net.erb'),
  }
}

