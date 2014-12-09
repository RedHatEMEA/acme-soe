# == Class: role::db::postgres ==
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
class role::db::postgres inherits role::db {
  tag 'role::db::postgres'
 
  include profile::postgres  
 
}

