#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

# if you use ntp, then this test is not for you

@test "ntp-chrony, is relevant package installed?" {
  if tIsRHEL 6; then
    tPackageExists ntp
  elif tIsRHEL 7; then
    tPackageExists chrony
  else
    echo "Do not know this OS"
    false
  fi
}

@test "ntp-chrony, is the daemon running?" {
  if tIsRHEL 6; then
    run service ntpd status
  elif tIsRHEL 7; then
    run systemctl status chronyd
  else
    echo "Do not know this OS"
    false
  fi
  [ "$status" -eq 0 ]
}

@test "ntp-chrony, are we talking to at least two servers?" {
  if tIsRHEL 6; then
    result="$(ntpdc -l 127.0.0.1 | grep ^client | wc -l)"
  elif tIsRHEL 7; then
    result="$(chronyc sources | grep ^\^ | wc -l)"
  else
    echo "Do not know this OS"
    false
  fi 
  [ ${result} -ge 2 ]
}
