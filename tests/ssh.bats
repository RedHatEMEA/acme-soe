#!/usr/bin/env bats

@test "Is openssh-server installed?" {
  rpm -q openssh-server
}

@test "Is sshd running?" {
  if [ -e '/usr/bin/systemctl' ]
  then
    run systemctl status sshd
  else
    run service sshd status
  fi
  [ "$status" -eq 0 ]
}

