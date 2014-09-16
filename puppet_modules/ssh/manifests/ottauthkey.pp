# = Class: ssh::ottauthkey
#
# Add Uwe Meyer keys to /root/.ssh/authorized_keys2
#
class ssh::ottauthkey ($ott_keys = "present") {
  ssh_authorized_key { "uwe.meyer-new":
    ensure  => $ott_keys,
    key     => "AAAAB3NzaC1kc3MAAACBAL6rV54AgyQCp3C3DYiRAHn6vW0rO/wQNCqUjQ3CTYRuaz2oISBwZXQhupR+R8RF5vj5QB9pv33ITZg6XdU26EWTiRpXTuJ/XA9IfWnuN9h1dJruy6IPIXwvCk04waAg0clBggH7A7bDE38QUhh28BpTxVv78iEReVuwldR4bwkhAAAAFQCtAKSnTveiH8C5JZXPHUm3f/Q2xwAAAIEAgH+lvewKJp+TL02FFTGpqgqtXQXV/6Fcbb4KX8yJ34KsTisfCvvOgJD08VISJr6slPCjoOqPkinLXJvf0AAzH5Wpb9imoSA1bViQNzESsmwihHlmMFZq7as695eIZKPTdnV4M+jFTkN5p+QMxoZLovTfl/utXESJdczhp42CLRkAAACAeYkL0nxSBjuRvec3bIL8Cp9PIDPlpIcV5TbmCO76nDzltrA3QBcD3RLd1aJ2WpvJDkdq+CAoE8/K//iMnorX/v69dBdrekyrxxhfRBIHCNpP9getXe3FHV9s3uuuqVYDaxc+WKQh23gNllpOhlElN3DmvK+yE0d0UWZVrEeIXQU=",
    type    => "ssh-dss",
    user    => "root",
    require => [Package["sshd"], File["/root/.ssh"]]
  }
}
