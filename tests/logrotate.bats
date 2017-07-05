#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

@test "logrotate, is logrotate installed?" {
    tPackageExists logrotate
}

# this test should be extended.
