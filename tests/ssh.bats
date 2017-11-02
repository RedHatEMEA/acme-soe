#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

@test "ssh, is openssh-server installed?" {
    tPackageExists openssh-server
}

@test "ssh, is sshd running?" {
  if [ -e '/usr/bin/systemctl' ]
  then
    run systemctl status sshd
  else
    run service sshd status
  fi
  [ "$status" -eq 0 ]
}
