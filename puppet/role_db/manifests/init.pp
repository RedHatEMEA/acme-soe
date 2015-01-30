# == Class: role_db ==
#
# Database Role
#
# === Parameters ===
#
# [*database*]
#  Type of database to configure (oracle or postgres)
#  Default: postgres
#
# === Facts ===
#
# None
#
# === Examples ===
#
# none
#
class role_db (
  $database = 'postgres',
) {
  tag 'role_db'
  tag 'role'

  include role
  
  case $database {
    'postgres':		{ include profile_postgres }
    'oracle':		{ include profile_oracle }
    default:		{ fail("$database is not currently supported") }  
}

