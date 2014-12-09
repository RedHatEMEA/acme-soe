# == Class: profile::apache ==
#
# Install apache
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
class profile::apache inherits from profile {
  tag 'profile::apache'

  package {"httpd":
	ensure => installed,
  }

  service {"httpd":
	ensure => running,
	enable => true,
	require => Package["httpd"],
  }
}

