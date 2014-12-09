# == Class: role_www_apache ==
#
# Apache Webserver Role
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
class role_www_apache {
  tag 'role_www_apache'
 
  include role
  include profile_apache  
 
}

