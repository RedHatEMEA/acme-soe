# == Class: profile::postgres ==
#
# Install postgres
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
class profile::postgres inherits from profile {
  tag 'profile::postgres'

  package {"postgresql-server":
	ensure => installed,
  }

}

