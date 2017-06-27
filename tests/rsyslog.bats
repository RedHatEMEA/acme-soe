#!/usr/bin/env bats

###
### you may want to make this test a bit more intelligent
###

@test "Is rsyslog installed?" {
  rpm -q rsyslog
}

@test "Is rsyslog running?" {
  if [ -e '/usr/bin/systemctl' ]
  then
    run systemctl status rsyslog
  else
    run service rsyslog status
  fi
  [ "$status" -eq 0 ]
}

