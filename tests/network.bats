#!/usr/bin/env bats

@test "network, check that I can ping my gateway" {
  gw=$(ip route show | grep default | cut -d" " -f3)
  ping -c 1 ${gw}
}

@test "network-resolv, can I ping my short hostname?" {
  ping -c 1 $(hostname -s)
}

@test "network-resolv, can I ping my fqdn?" {
  ping -c 1 $(hostname -f)
}

# you want to ping a few more hosts in your network.
# picjk hosts you know to reply to ICMP
