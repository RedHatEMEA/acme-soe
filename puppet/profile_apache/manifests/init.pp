# == Class: profile_apache ==
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
class profile_apache {
  tag 'profile_apache'

  include profile

  package {"httpd":
	ensure => installed,
  }

  service {"httpd":
	ensure => running,
	enable => true,
	require => Package["httpd"],
  }
}

