# = Class: ssh::armin_noll
#
# Add Armin Noll keys to /root/.ssh/authorized_keys
#
class ssh::armin_noll ($noll_key = "present") {
  ssh_authorized_key { "armin.noll":
    ensure  => $noll_key,
    key     => "AAAAB3NzaC1kc3MAAACBAJQljVfiwXx1aefLnHgKjCCP2TtVygqO9P7crI9euvuL6Eue/zl1DHc8UsuG7fwzMVgVAL3IAUBR4xW/NSl4WJapJNAahuxtY5O3E9ijnyh8FjTwCxv5Bu6EmgLr1ZBW1hvenGHtoiG7BYpVlfLdTATtwFO+U46BbW7zmAPHHpJVAAAAFQCW7ILGafxthU7933wROHPMAOLgtQAAAIBRuejtAQdQxr4vZujYH9GB9ZzUETWHT1qIeydj4QTffGxG4BuJWT9e3InlOKgGwTccgh3z5f0bd/2/hzH1le7xJZpbF2pDJo7bp83sn5SbC9mhGoaUIjiJXgUWWGd4ukOVo4MeMYLJAoDAXW3SMUdS2wkX3JGP6lExZWb7CoYaDwAAAIAq6ZjMxao3xU+EzVo/n0hC+SuldxgFDArTTvulB2dHVoxBTNcHaIX89ksXr+YeUShEbSNaCrEj2GT9UuUtU8uFI+WH5CueKxWuqePCzAxJo0wc7/LbetUQQKZDYkvk5+8d+5iJO9jA4ciEsGxy7i04mc9SD3/Rp6eYfVh1JDNtwA==",
    type    => "ssh-dss",
    user    => "root",
    require => [Package["sshd"], File["/root/.ssh"]]
  }
}

