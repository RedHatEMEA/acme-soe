#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

@test "rsyslog, is rsyslog installed?" {
    tPackageExists rsyslog
}

@test "rsyslog, is rsyslog running?" {
  if [ -e '/usr/bin/systemctl' ]
  then
    run systemctl status rsyslog
  else
    run service rsyslog status
  fi
  [ "$status" -eq 0 ]
}

