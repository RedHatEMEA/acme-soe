#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

@test "crontab, is cronie installed?" {
    tPackageExists cronie
}

@test "crontab, is crond running?" {
  if [ -e '/usr/bin/systemctl' ]
  then
    run systemctl status crond
  else
    run service crond status
  fi 
  [ "$status" -eq 0 ]
}
