#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

@test "cups, is cups installed?" {
    tPackageExists cups
}

@test "cups, is cups running?" {
  if [ -e '/usr/bin/systemctl' ]
  then
    run systemctl status cups
  else
    run service cups status
  fi 
  [ "$status" -eq 0 ]
}

@test "cups, is /etc/cups/client.conf existing and not 0 bytes?" {
    [[ -s /etc/cups/client.conf ]]
}
