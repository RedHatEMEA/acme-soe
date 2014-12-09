# == Class: role_db_postgres ==
#
# Postgres Database Role
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
class role_db_postgres {
  tag 'role_db_postgres'
 
  include role_db
  include profile_postgres  
 
}

