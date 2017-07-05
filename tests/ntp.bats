#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

# if you use chrony, then this test is not for you

@test "ntp, is ntp installed?" {
    tPackageExists ntp
}

@test "ntp, is ntpd running?" {
  if [ -e '/usr/bin/systemctl' ]
  then
    run systemctl status ntpd
  else
    run service ntpd status
  fi
  [ "$status" -eq 0 ]
}

@test "ntp, are we talking to at least two servers?" {
  result="$(ntpdc -l 127.0.0.1 | grep ^client | wc -l)"
  [ ${result} -ge 2 ]
}

