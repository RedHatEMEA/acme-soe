# == Class: profile::postgres ==
#
# set up the server to run in the dmz
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
class profile::dmz {
  tag 'profile::dmz'

  include firewall
}

