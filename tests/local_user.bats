#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

# this test is ony useful if you set up users via a puppet module
#
# we set up the local_user puppet module for the test machine as follows;
#---
#test1:
#  create_group: false
#  ensure: present
#  groups:
#    - users
#...


# check that the user test1 exists
@test "local_user, was the user test1 created" {
  skip "user did not set up test correctly"
  getent passwd test1
}

# check that the user test1 is local
@test "local_user, is the user test1 in passwd" {
  skip "user did not set up test correctly"
  grep -q test1 /etc/passwd
}

# try to touch a file as the user in it's home
@test "local_user, can the user test1 create a file in it's home?" {
  skip "user did not set up test correctly"
  su -c "touch testfile" - test1
  tFileExists ~test1/testfile
}
