#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

# this test is only useful if you set up LVM via puppet
# most people use the LVM module from forge for this
#
# we set up the lvm puppet module for the test machine as follows;
#---
#vg_system:
#  physical_volumes:
#  - "/dev/sda2"
#  logical_volumes:
#    for_testing:
#      size: 1G
#      ensure: present
#      createfs: true
#      mountpath: "/mnt/for_testing"
#      mountpath_require: false
#...
#
# maybe test for some options in /etc/tvm/lvm.conf

# test for the lvm2 packages
@test "lvm, lvm2-libs packages installed ?" {
  tPackageExists lvm2
  tPackageExists lvm2-libs
}

# check that there is a /etc/lvm/lvm.conf 
@test "lvm, is there a /etc/lvm/lvm.conf file?" {
  tFileExists /etc/lvm/lvm.conf
}

# check that we have more than 0 VGs, PVs and LVs
@test "lvm, are there one or more VG, PV and LV?" {
  NUM_VG="$(vgs --noheadings | wc -l)"
  [[ ${NUM_VG} -gt 0 ]]
  NUM_PV="$(pvs --noheadings | wc -l)"
  [[ ${NUM_PV} -gt 0 ]]
  NUM_LV="$(lvs --noheadings | wc -l)"
  [[ ${NUM_LV} -gt 0 ]]
}

# test for the VG (name from the partition table set in Satellite)
@test "lvm, is the VG vg_system present?" {
  skip "user did not set up test correctly"
  vgs --noheadings | grep -q vg_system
}

# test for the PV (set via Host Group variables)
@test "lvm, is the PV sda2 present?" {
  skip "user did not set up test correctly"
  pvs --noheadings | grep -q sda2
}

# test for the LV (set via Host Group variables)
@test "lvm, is the LV for_testing present?" {
  skip "user did not set up test correctly"
  if tIsRHEL 6; then
    skip "this has return code 141, even with LVM_SUPPRESS_FD_WARNINGS=1"
  fi
  lvs --noheadings | grep -q for_testing
}

@test "lvm, is the LV for_testing mounted?" {
  skip "user did not set up test correctly"
  grep -q for_testing /proc/mounts
}

@test "lvm, can we write to the LV for_testing?" {
  skip "user did not set up test correctly"
  run rm -rf /mnt/for_testing/testdir
  mkdir /mnt/for_testing/testdir
  df /mnt/for_testing/testdir | grep -q "/dev/mapper/vg_system-for_testing"
  dd if=/dev/zero of=/mnt/for_testing/testdir/testfile bs=8M count=10 status=none
}
