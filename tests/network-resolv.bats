#!/usr/bin/env bats

@test "dns_search, can I ping a short hostname?" {
  ping -c 1 $(hostname -s)
}

@test "nameserver, is at least one nameserver set?" {
  grep -q nameserver /etc/resolv.conf
}

@test "nameserver, is the first nameserver pingable?" {
  nameserver1=$(grep nameserver /etc/resolv.conf | awk '{ print $2 }' | 
head -n 1)
  ping -c 1 ${nameserver1}
}

@test "nameserver, is the last nameserver pingable?" {
  nameserver2=$(grep nameserver /etc/resolv.conf | awk '{ print $2 }' | 
tail -n 1)
  ping -c 1 ${nameserver2}
}

# bind-utils is not part of a base install, so install it and check
@test "was bind-utils successfully installed?" {
  yum -y --quiet install bind-utils
  rpm -q bind-utils
}
# try to resolve the SUT's hostname
@test "name resolution, can I resolve System Under Test fqdn?" {
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
