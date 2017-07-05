#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

@test "cgroups, are required packages installed?" {
  if tIsRHEL 6; then
    tPackageExists libcgroup
  elif tIsRHEL 7; then
    tPackageExists libcgroup
    tPackageExists libcgroup-tools
  else
    echo "Do not know this OS"
    false
  fi
}

@test "cgroups, is cgconfig running?" {
  if [ -e '/usr/bin/systemctl' ]
  then
    run systemctl status cgconfig
  else
    run service cgconfig status
  fi 
  [ "$status" -eq 0 ]
}
