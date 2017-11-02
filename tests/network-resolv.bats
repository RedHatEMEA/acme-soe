#!/usr/bin/env bats

# test that the DNS setup is correct

@test "network-resolv, is at least one nameserver set?" {
  grep -q nameserver /etc/resolv.conf
}

@test "network-resolv, is the first nameserver pingable?" {
  nameserver1=$(grep nameserver /etc/resolv.conf | awk '{ print $2 }' | head -n 1)
  ping -c 1 ${nameserver1}
}

@test "network-resolv, is the last nameserver pingable?" {
  nameserver2=$(grep nameserver /etc/resolv.conf | awk '{ print $2 }' | tail -n 1)
  ping -c 1 ${nameserver2}
}

# ensure that bind-utils is installed, otherwise we have no nslookup command
@test "network-resolv, is bind-utils installed?" {
  yum -y --quiet install bind-utils
  rpm -q bind-utils
}

# try to resolve the SUT's hostname
@test "network-resolv, can I resolve System Under Test fqdn?" {
  nslookup $(hostname -f)
}

###
### add some DNS lookups of internal machines
### obviously you need to adjust these to your site name
###
#
# webserver at ACME
@test "name resolution, can I resolve the webserver fqdn?" {
  skip "user did not configure this test correctly"
  nslookup www.example.com
}

# Jenkins server at ACME
@test "name resolution, can I resolve my Jenkins server's fqdn?" {
  skip "user did not configure this test correctly"
  nslookup jenkins.example.com
}
