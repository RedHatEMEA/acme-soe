# = Class: ssh
#
# Add Wilkosz, Majchrowski, Tasz keys to /root/.ssh/authorized_keys2
#
class ssh::cmqaauthkey ($cmqa_keys = "present") {
  ssh_authorized_key { "piotr.wilkosz":
    ensure  => $cmqa_keys,
    key     => "AAAAB3NzaC1yc2EAAAABIwAAAQEA2CMzams6gmDUtgMalUp2dBmUoXk3PQcN4vNVAcOc00Ki5qgiJ4Q1s5NRw3pVLMx0XbRIUgTPiWPZLFG9CBkn+nrpbTBNNGIPJ5jt9VMtKt8WKje8zoNdBnehueoJt0EJermXv1UuMK+yhGb1z3G2u07TFBOBGi1uR9dC+0DAXb+Zoz7AN73yDz4VNyaokIeFKzCjtIfzsi1at7M8N01XVaiQ2tqSwS7su60OY1/2yUqRuH2PvJ83IS5/8DuZMXAYLkksTdMVqx2xXxSXHRCkT2u2OYIy2IZlkRmrOgJK2hmwgjk/VWl+FzjOma+wEO7jtDpE9LsDQ7VIrzyGOxSA/Q==",
    type    => "ssh-rsa",
    user    => "root",
    require => [Package["sshd"], File["/root/.ssh"]]
  }

  ssh_authorized_key { "tomasz.majchrowski":
    ensure  => $cmqa_keys,
    key     => "AAAAB3NzaC1yc2EAAAABIwAAAgEAxttzc3+E89Farqe+77hV/+26KKtGSmicizOsiEU3VWFD7KsVEoWy0oc8g+Pg9XdZU4iuWyslA5uonhv4U4zhhKRiIiFwJTGSzEFQtLSRvivgiFrJRgJdiaLd3GNzvYNucgO2UEOeiwhE1Uj659pUG2fSnIIMycyscAnPOnxhvEl8vpZe67Y1eJ9YW7ov/n2067yXxU8viDWJZD5e2rxHAstfnZ0cy+9i6S1zYQgTBb4MEeSEctZy3BmSQPCU9Y2DgvPl1GKEVtaJy2a4BNseHoxy3VGWQ5iyzqDXbcm0ScvDh1htdsVlty93g93OHK5bZnHHflPK1LVd52YoGaO+7QxAm0qZVE4vxOimqq7KwvkYEREZlDY3c2S02fuSqp6k+LK1IdEiBBQDAUdJkPpH/ImBYYawj6Ksk/+CJkJlcAckp2nvyZk/peGWdcoPqnLqvPxBsL+b+dXZQ6Tnnfo+vUikRxn5ryqvsQil5SK3oZFar24Pn9Axfpt4/K+0AT2vgNuISyHMlD8vA2DzyR0L/OSqMKjpxhesla0lcxHG5jtTOyqpbj1PoBhOaKxuNf5pWaVY8+iMiglk3KaSiLraqYGq4hHmaEBT8zTZXTsrJCChcXeouLc5ZDwsiqMuPqwKPC0/0G1wOtY2MsHB0Mbb2n/B0994jd9AFDc/2bvZoqk=",
    type    => "ssh-rsa",
    user    => "root",
    require => [Package["sshd"], File["/root/.ssh"]]
  }

}
 