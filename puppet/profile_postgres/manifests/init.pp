# == Class: profile_postgres ==
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
class profile_postgres {
  tag 'profile_postgres'
  
  include profile

  package {"postgresql-server":
	ensure => installed,
  }

}

