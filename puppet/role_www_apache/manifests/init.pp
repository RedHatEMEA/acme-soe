# == Class: role::www::apache ==
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
class role::www::apache inherits role::www {
  tag 'role::www::apache'
 
  include profile::apache  
 
}

