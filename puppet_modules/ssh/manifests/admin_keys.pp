class ssh::admin_keys {
  ssh_authorized_key { "lfsat02":
    ensure => present,
    key    => "AAAAB3NzaC1yc2EAAAABIwAAAIEA5qNoFWcKjZo4eCvaDJN63p5VS6rqND168bgMy2cPdfjqqkjnpY9RzyrtZEh42LfX727Sx/99hIQs5mES84izye+1OGvIeRhfutPy4CsPZuUuVbFy3GHV51/m3RvGOIf3fkkrX51iulH6nvOirlmyG9vBRGL7FxacYETqHe7Skp8=",
    type   => "ssh-rsa",
    user   => "root",
    target => "/root/.ssh/authorized_keys",
  }

  ssh_authorized_key { "jens.kuehnel":
    ensure => present,
    key    => "AAAAB3NzaC1kc3MAAAEBAOeOqXtK5oYL1NVMtSmd2pg3jweMCGj5bP2YkctitPmLn4tl6Msxjd33kkvfY9bJsNS719BkpbbfBdq4WLtjwzlZfqwzDXq1OhJIC8u2BzfW0wQxkGdxLorQYWBkhSmowHGkI7E2dYzs/ZVlLrYYZNizMWrHNyFk67H+aNWsvzM+wObidovWLVM7sQCumsL4N2dXl+cIXF8JeF88TxHn85UzuEn+wt7VSS7taoYoYG7tw6O0TWzkPqgVJLMtPjtDBDfFFIjM8Hdg2J724B68UIj17cBNdY+sPTaip1LjlpnbvmuFultMl5dvqnPxQRyvekdZ3eODL0IZ9vVpABFBWisAAAAVAPD5wldcGKL9uUa5EAl/of4eiwmrAAABAHEDEo7zfGPDf+1JdfpRYW8MC9Xn6wR83dNYzU+CE5R5zSDtjOht9B13IUQQ78WoLpcGo9zKHN0r2TQyr6z8QIHGE5Hd482Cqaw3/AODi7W7utzNZ0izZ2cM+xfxw/h+DFsoJsp8yEqAhfSw7dW28hMKrVPkJS8ZiDltDqs25yQMC2RKGBu4ZKS6NpFUQlmiPyEU+z7l/IkiWFeCFMlNPjEcRzX36gFmAfng6dVvtPJa+bDh2Xjqkqmu5hoeFfkkrgSQctT8oeI+f29aZVZKQarGL/iQN7QsedntcTMH+JrOaRSDto74xUaW9yv8ITl22F4Mk6TYSsy4lAJcxa/LJNgAAAEAN53ygE4vS7oNyfTIGK5H1AbiBY/Tpj7hFKlNpNIpqGc/PP02R/eSdFcbxD0F2MkybM9vot0Fw4jw1IkFqYMMpBMlztPgqEqYDTio/q9Mu8qMQ3vdpZ89Q5m7GINsSSGy7jTQrLf0VdjlZRvl6g3MIGqCy3H84vD6Q3Ovzrvqctqa9p/XB9NZ8toN4/UVtF93mZxQyQSXQ7K8qrf46FikS24yAxUbKpKdXgJjtfJrtbUS/T8c26qNbJ+dCEejeftkLbjxJ6D8sJgGSfdPOQexU9PMAKz17qiH3lSxEPO79aowP+S/WelXFWwcgWe5Yjnrgpsbl19ZwejXOcC1YTjw3w==",
    type   => "ssh-dss",
    user   => "root",
    target => "/root/.ssh/authorized_keys",
  }

  ssh_authorized_key { "juergen.schneider":
    ensure => present,
    key    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCiWO8WXVY0NDxNSSWzXnOSl8LYA6sZezmotgi8XdjxgGpLdZP5A49vD1xhgTGQRdz2O2nn1VpL0rgdxge2pdLWNNXiFl5fTUYvab2l+5mgtcQ7+hOTx6gp0O+PIR3TMW53v+eWtqbqPoPoqgRnJ5ko/Ni28rDXUU3Uy20lcYP7FWKtZGOSucP5XvIQ/0jk2UvLpBxQSxXLYhdNStKokeKGOmPOK3YqRwiMod1PabexJ1sEdpbP5O8Jnb6QBHjr6rY7J+f2C2NOOvF/5LoM/eEJg88rydkW21c7I3ukzQOsNfzKeBtI7V4RP6rxBF4tC0z4ZmovVIGnnx8GKIBCphef",
    type   => "ssh-rsa",
    user   => "root",
    target => "/root/.ssh/authorized_keys",
  }

  ssh_authorized_key { "bernd.hanitzsch":
    ensure => present,
    key    => "AAAAB3NzaC1kc3MAAAEAfqwJKl7S3xGFzavtpel0aKvV4+4aGI4jsVIeKAfMDEdX0UWM0/k2dLTdtu3D4/KaxU7v3gK1H+iCfesydUS1cKw8pT9bkSi0y723o6r9Uv6R5P+hLFf47BStHgM/CjEuCTqJU1+0PIy7n0hIiLm2OffPIOgaF6yTfnODBVNMdK/V7/9DqJT0sgPYTv/z+uZiH4jChBJvM73Xbz6/vaxB8tgAJgtfTAoES7kSH3eJlcKPoA+h+CKOYq+f1eUirJcPb+z1SMmTCmcKbZoGOQ+q2tz1GgTx00A0BoqOABrREQBWeAqabtPLem5J73GtoLCyEo1t6OTAq6Ge2vZyblPjuQAAABUAlfYgb08YHG1LmoMLvi9CuSueG48AAAEAbTb+r2zwoHWlnWGyfwmEnRiumIW5VX4woaRITxeo9HYD1u5lyxwufpf+w/HmbKtrhZ7SxibvWdYIFZCQe3mWV3TijFFr1KRqnOSzRsWf7RF7wQiaxuxV5mvKHg5YgnfRtOm5UzCLSpxr8QNxddQQ1suhH5LHSLOdOp5O1z001WUOIXnTiU1aDTAXHalL0a3gd+ewF7qaUO70DVjoxCFYTyk2YMZr/OTTKV/vH19JIS4v+ZILih+0cXKo/0jPKau80SCmNjV/szQi/B+F1nmPEY7NfVi+03B+pZz0MzX131J4XUzYX/xslFzQzvM3BlaWoYLYXk02nzHmFEdM+zPoOQAAAQAUpOu4dqMf2aVI+VKij8sr0VTz8GHukgmmwtDtB5KD8HDHWyqjBd6nvmjKgRCJUg3+aBlewytB2xJ/n6YGvua0aFNfwK4yR2Qgdg6Y4Jq+cFmpEjMPFJs+QfZb32rEyHDNAcufmDNvBKP8WM8zAd3uvxw71pfdnx1z1Mos3dAdBjCnlz0FujW9Nvbabr0fHEPUvgguuY/oS2K0MaPeUGscheLFt9QpV0DmCjC+qVaSXsqQ+mUic4dA/hHyXYFIjZnrT7k3yTSUTpAuwbpb1rFZXmMGuKPHxET6JTtR7Tg/YyL9iGfPr7Bu8sh3eC69rxP57f5H87Mrv2DhBghK3FN7",
    type   => "ssh-dss",
    user   => "root",
    target => "/root/.ssh/authorized_keys",
  }

  ssh_authorized_key { "joachim.stenzel":
    ensure => present,
    key    => "AAAAB3NzaC1kc3MAAAEBANuA7+wAkDPOZu2J15U7aQyg9EWCrIBT9PiS5HkHG6/xtMH/y7tlwwYL/0ToTydZjNpoyQdOq0aRWA0gfMoth08JpEbPenWkK13+xNZM6CDKaVG/ddHGmTHRvmHeKSu1B/TUUgqNaD84EnQCJfNGQJnRceVvALg6/7/Csy8nDzF4zZQKFuWzgD6yK6MYBHkTGB1N3bN2+fHIqdfp1FsF8aby9RS1D4BB/yS7FpDC3Maq0T75uLo0ZBFMyGoQdyUD7nhLX/LERdrefkxOJEKRJEBqAk4szn+NqZLxl09P3Y5aboyM6DlZvivvUuLMJk6x1E9CaYBR76eKFJkfQlBNUTUAAAAVAO4hXg3ofGa+TtEG30e47v2npogdAAABAQCcP1CNxgAhWUiRpEm8QoVlCGT8uqoXiIgcqfY7enSoqEBbOPm831BlS/jy9INUgpbDzFJC0woS3tMPRswBihSYuhSt0bsQX5EwsSnUa8sh7yRkOiAdK/BtnciXSGzJN6dAmeYQYJTgHYQJ137UmcD9yRgwkrSNgUNpzuTuSYo+mGqX/+V5YmZn+hCRELtKwvUy5PhNVvHdSnVMjc1Qe+zEAnqA/FB1UaLzJd8vkSpCaPhflm29D8iM1/YRfcIB+pqYB+g/9Wb/3TEkq7itvqgzB837KgJPM+YwrEVGDoRibsSwt/nhP1TAfpzjNeorPPe9uEH150TqGrZdntR3zVWqAAABAA2N0kifCrYuLgpJg5o2p71Pg7CS71n1z4Us484K5iizJ3fzcnhapbHSrxurG6JMp4YQwKgHmewG4s/YxkCAHGuFAYYoSEmJGj9QlB0bD6QvVPVr9Znxicm+Akp8l2qrR0/AK9nm79gkWy+YhCR6dhPZKIly3rRV/8JemTkutxe8pBJmuMaya02AecxxOAt5tPDca0NpQjWWNr88DtPcH3UB3s4tszfQpD8cbEJBwMGu20uXugfkK6asajzStNomphXTlS09Q3yncEt50D8NwygEjWoaEGVl27A6HI24LsUEYQaO0eycP96XAQ9bIbx5oZYH7U2gz9WRv3cw5AOjXL8=",
    type   => "ssh-dss",
    user   => "root",
    target => "/root/.ssh/authorized_keys",
  }

  ssh_authorized_key { "juergen.schilp":
    ensure => present,
    key    => "AAAAB3NzaC1yc2EAAAABJQAAAQEAmaVUw8B04dvj9W7YO6+ONkaeMixgbLo0kH1A84ltFTiQ+OBdkpBUTtSZDmT2aziaVCnedkeSiWrWnoKAOADs2mfOk/BD51Hg1aaFdEZCjDl3JcMpZic6S+BwrN+hx/q3hE1M+h6DsFrVA4Omb+Du3uv9MAd9o4KKU5fCw7wQndyRPhk716qn2dqrhk2GNZJ14o3zJ9ef2g1n24ChT6iBFNBu5oBhHVgytKgjtlEplv6PavczM/YeH3axv0dRZTnFRYqy+XtdgT/4DbJo7UPAXeqxy49aU12FgqhrX+s6mh7lGDwMMfpUVCu0vm+rW56Wk0eRBGIupOD99zrzkC0mKw==",
    type   => "ssh-rsa",
    user   => "root",
    target => "/root/.ssh/authorized_keys",
  }

  ssh_authorized_key { "michael.spindelboeck":
    ensure => present,
    key    => "AAAAB3NzaC1kc3MAAACBAKeJ2TMhFZT1U2TPbZ57KbW0oqGcKBmtYLJHCjAtYZWE8bAWLf8gKDRFVmENGHZsfNW3AOLivHk5o9RTuwng9z6LJ9T+O8zdZPfspO28OsezzaOvJEQzzs7R2dElu7Qbwcwaqoc37bKeezbvs2wQe9OTapDgigHyDT/DnXnYgd+rAAAAFQDicUNJYDVpYuTOIO00QqxIW7Ok2wAAAIAmniQ3edumWMZnYDrW701xDFSWjU2HrRj8dafWDjwRx0qSLvwMJ9qRmjJ7VRqxagcO0RDxETsgLowhKiPEe9wkH1fPlh6Gfq7fKK7JTGdxBOB4w2NqLz0SED393PTF9MEwcdVaGKD4rMXzjqJoOUR0ThjQOuUvmpkm4RxoJLIY1wAAAIBJgokh35MyHdnXl4d21DZvgZjmaAyhNNiD7MIppy/BYsInQ5GXlKj82xU7XFF9H4yqbzw36YHAPZS1y+UGvPgpqiDk6tMmSlHuZ844UECqfrK9+ayEjRPDeiDfE+lIFIZuYIUzjaGbutlzmkZfnWCZGnyaDQFg+Wxu/MhMAiwvkw==",
    type   => "ssh-dss",
    user   => "root",
    target => "/root/.ssh/authorized_keys",
  }

  ssh_authorized_key { "ralf.wunsch":
    ensure => present,
    key    => "AAAAB3NzaC1yc2EAAAABJQAAAQEAl2cQOadprhOs+CNhQhIO4FiGgUu7xt6htQ8MwfvUi2HXq+ohtgn235uMzfyi89X5XJHOSsi8eSb2SxiBGcoeZ5mm2iNZ0rRX6qKk15mkRFYaWAlL4eJlHrwhWcKekcX3L3CbVVgI/BKlSo3euzRZYbduVLzgJIDGRiPBWasefMJ/dpBtSvz96X/igS7//ryqZJT/19VNnuTiUs64aytmXO6drQ4gNdW34Rkyk87zw1g+JsuTkwgUutctujqRw6TPH6KsWy+L8XZJjN7ZzL34c9Ab7H50IuM32BBCZ4cRCE6SmcPbdJz+2Mobz8QsxpaWF+yOqXaTJKG5pVLWB2aYWQ==",
    type   => "ssh-rsa",
    user   => "root",
    target => "/root/.ssh/authorized_keys",
  }

  ssh_authorized_key { "zheng.liu":
    ensure => present,
    key    => "AAAAB3NzaC1yc2EAAAABIwAAAQEAvcDSc/TNUS+fKtVmVJc8VDal7jeLNJ0Ys2eieXruiEkgc1KaMy25GQQ+50VqRrWmZe3KDfeOank1PbRaUZsTtIX6NFJLdZDUBmgRmbVQsT+WstN31lvsUlSKR9vpS3owZcn255bJm8o3lRxVtQUd+jGZWxbzuWmfCO2RlkCm9LFHMlT2hv4fv+AiWr6YLxUJWqKUVSzZSweKg+8yynu+9LkGpp1LTBzDgDzyKELYnDCFiLmYD1KydjcBu6n0cUa7uYmlsaov2GeQdBfCUX8TILgEhoOvdKrLqRiXv0x8OvXHk99L2woI5+QqWALDMFEnbmFU2ni5IkyEvSFVwTVIUQ==",
    type   => "ssh-rsa",
    user   => "root",
    target => "/root/.ssh/authorized_keys",
  }
}

class ssh::admin_keys::prod inherits ssh::admin_keys {
  ssh_authorized_key { "lfpsat01":
    ensure => present,
    key    => "AAAAB3NzaC1kc3MAAACBAPorky4D7UK0yy3ea2kieo8ZXUaf68Vu3KKRmwD5JvsvXWBCzEe8LseFoNJ2OEY8SJ5XdsigxrJYccOKSLHzPV/9Nic/BkUEc4VpYqmp+NPvfBQE3A586ntbyNkGDOhn4Tjh2ydCG/NTpzC0Di108Q6jrPdnWf/E/CWzXlhlud2dAAAAFQDeyzy4U+vNuVeny1JMUft5VgCW1QAAAIAQlYPZ46rjXynMbHL8OhZR+17j9kwXC9Ypg8zPBnE0U5R5L4Wc6kr/zYq+I5ZNh71VQm660Ic2mjnlx90hQnMR/DwwU99QHiquBsv6qomU6iVPcTDl+bRzhGKxQTDiAOIOhtDHpo1SbHmOXgDBw4UZ3td4SNp7hGuLiXxxLmVCSAAAAIB9QoQe8fO8ZKO6q/aMJoz6CJqFR7nL1AU6bGH4ghFmqvWQP/IV+Eq7/YymFlhYBrHA0+4HLQTOQ6DCZXMbjPyobveVae51YgL5tokde8tfxW8TP4fyoKZZthTWng6ucQdF5ICaP9dEWmZbhIx+/zOM1YgZjCVma7RqDETHJ/uIew==",
    type   => "ssh-dss",
    user   => "root",
    target => "/root/.ssh/authorized_keys",
  }

  Ssh_authorized_key["joachim.stenzel"] {
    key  => "AAAAB3NzaC1kc3MAAACBAORr5LUYVgmqsNvY11aD9j0HORR6Rgzeb/5xkCS97JpkDM4YD7kG30Yu6T4StAlR9RX864VHrEa5nTaRXiAyP+u7iwV7BJo53SGkSHoPt+MbP9nVPODKb3lNBNFmPuUGvXnRyrfTiGigs36lN8prSc562LMVa9OFnR3Hs+WX9IshAAAAFQDDqwcjFaX9UPf9Gzbo3Ia5v6bcwQAAAIBkADkIZgKUR39kAHQVWaIc73/VGOTLdKhewfYpfseDilKYScdtPpyb+SlaoK7LrnBh3TxJmE4SxeA/3KGNs6DyI0qS6KEdP4Ua+PnFMuxtQGOYHrSPgx7g2YGjBAFzVkyLKn2FSBErCQJyzPIdJ22EjOkzjDzLI2h9eLI3Y22eQgAAAIB5W3yeAwCecT54natdFbfNXlY9HV4ZUsVGwZkU580y9d6L87t9Akqba0KCiGe9hdASxf2219Z2PX1NiVeHmGKYGUDOeb0CpR4vYHOQYmrl8boUXGWXM6z0VF1UcqlGRhOdAvcvkbZt3pOzBNIKx40VWt4cPkEz+fUe++O7XfQbpA==",
    type => "ssh-dss",
  }

  Ssh_authorized_key["bernd.hanitzsch"] {
    key  => "AAAAB3NzaC1yc2EAAAABIwAAAQEA135aASYCMv7RcJbEHry/cZyxoJtjEPfRBaio1H0xRdkSooF3r3WKVbZ4Gji+JQtHE7UEt5axA7yGVlD8Y+BH4oWEaqMCHlofvHQ+grU/rgAUwfHJJxenSKxfFi4OjEnTP2hDJdb9iXpUhKW0gvPUEXHj2wxFuxHHtiD3nYEyBHjKFW1yKoPL5jF6QGjjjma2xRwVqd4FcIF7RIpM0Rys+xXJpHIme9lZ2gZ/3ZzgK243qzoF2HMJqHLicr7hi6CdYdD6OQJPd4l0wAL58/Q1JNnb1wGl2UvHxGZwjveaYShzDdOhFhgowhE11T9JQheBSrwPAFqDg6pFqQsH2EVTZQ==",
    type => "ssh-rsa",
  }

  Ssh_authorized_key["michael.spindelboeck"] {
    key  => "AAAAB3NzaC1kc3MAAACBAIcMIg7j7F7jMa4DYEKbl+KZ6Tt8Hoh7l4KoujifxqAUsMQ5ln5e4GyOAzLdRWN+kuRpp9YDrqiZntZOQOI6Ezuh7tOQAp+GR4ewuTA6vO/5I1g235bVZNecvEkSlTjW0Wwal2FMGWikitHJXvo06t8UcYTKTTRE/63T6mVoumUbAAAAFQDshK4rwBxMIi8qhMHr3YrFOgS5BQAAAIEAgulnKdPLSMvr2OWeQYZ5IRXnSYmKpe35z2GcUAvL1Ff/MmJqqmMnB0PxbAOb/4o2rQZJZ0iBIH+Clnp4jpGsfRzn0ffW1jlPr20XxTbtiIE3jjXZu8/y0ASslGDY77SJskABDWyOCepDKkA8ukv6DroEW/jwNTb9TihgHiGp24YAAACAdoXziiiQ3ColnoPEIRb1cX2Q0iTCNDxquIGrSpcui1PcCY1gLFK4Peb41PAsHRff7fJBuF+9IpFIynODUjv8M/7qErwg/7loidFgQ4f74kdrTrUZLAmt0rJK2Ef/f3WcxFl4nhrLwc295+HZDPtSp9lvTqgyzRqxLd30gbdCwfc=",
    type => "ssh-dss",
  }

  Ssh_authorized_key["ralf.wunsch"] {
    key  => "AAAAB3NzaC1yc2EAAAABIwAAAQEA5zZbfFYcXk+fPR4Yrav8GsUJ561/My7EPWdpYTOiFVQgRxdAaSvtNvKA08vIXvitdlYgg9rul444yWKtt8xLf4oCY3zzb5eevA3KhsVpNeEoIwwYvlmsSa7s/do09RSMXBGS3CNNUNjdQtUfX574lUqMloilK1VrO1o+u7gtIpZ/tTu4smUoXun9FnCETRr2wRigSQO5Yrc7pBrgvOqVf6ALFerAebtbjvPjOiAcgLA1w474sxetAc75fD9/ECF3gkoIDhUPeONmE5Llq3LeTQhn0lvyxbtlp1xO85Y3yO39P1rTa61kHGVfZCcbOiMswh1x6BnEu1u13rkemU4y6Q==",
    type => "ssh-rsa",
  }

  Ssh_authorized_key["juergen.schneider"] {
    key  => "AAAAB3NzaC1kc3MAAACBANSRgiga+2tnNGHOOzh9J8Z3dQY+w4MMygPS06MUgKf9A+Wt4I3JJ3EFH40hQaKWA394xIYrl2SYASAvFNedmXlrg5OlPdk2lJUImQ1r9NPNND4Gg34yWYfJUj3fdLQtkRS7ML91I08n/i19Aj/5/vN6+Sig+1Fo26jQWjs0DN87AAAAFQD4mB8e9K9mAUa1Lu0Cz10pUbzRPwAAAIBqpJPNRJt1eEi/d71bEiwdO270mq5Cyjyap3ARi1AIBINiOUteHLLnGvLy+up3iV1lnAMlfyMenrhHBovuV8GH3Q0nvmVSRJOf09A9iLHPrvlQf3jVbjD37OIE/R6H+5FDOED+oRAuI3XJgitagqOpFYakxWFl0BCcuCF+Z0+iSQAAAIEAigHZN6ICsC6V1/O4SfHi1NCkKtTooFn/31Mw8/HYV2hh10INyU+oEuPnqmb6VpFuzk+FRB+FnWW0Eh3Z2xvePLNi15X3ILsNL+OtTdt482obpEz2/i9Oj3pVirkfwUMwDjitoyQ2SqQp1vEwgksXfrgjqmBpG9qikUTEfmjpovw=",
    type => "ssh-dss",
  }

  Ssh_authorized_key["juergen.schilp"] {
    key  => "AAAAB3NzaC1kc3MAAACBAIR8s0m07ltrtP3MDdvYkOuqVB8W7XYOdqSGX5TLXbUE7Ba0Z5gbhu6JURIiZHgLZC+8LYvZ8ZL6HIYouSJK1V94jU58XnpgpoUlpOotE8RMWHxMeO9zX0fn3WazYtyAM6mv1rHo9e8sa5bXT/fcffp+kTpLUrAC1X+y0o7xjAd/AAAAFQDMy7qtW2ivRM/sqhBMHM390zmYYQAAAIB0aJT83p59AC0rYy1iHHFG3nn6XYqzq5NN1iBweRMyKT4nkw3jDFZCWN+7oLb/YMMSGHkgzOLXdO5hjai4oPubhhqUY2VDWq3cfC8ea7AwEKHCd02wZHummtDkNf3MWi6Hnog83xhTGaxsKflp+DyFit0aVhAy1RnQyeal7h0gaAAAAIB8bxhDOfezxyy83FUzuyKEQBpwbJemZwOel8+CLq30QV9ACpXCmD12gawENJcBexGGg3pG1zpIldk3j3Iw/n88fPd63UOI3sR1B1GldQyWj8Fz2ItuKReSnNs+18ZgUESEoQXAsrHOpBubXurYklt2MGgxGSH9GIfUsmvCu/TWyA==",
    type => "ssh-dss",
  }

  Ssh_authorized_key["jens.kuehnel"] {
    key  => "AAAAB3NzaC1yc2EAAAABIwAAAgEAywfbUTfjsmH0tdb9zIjgry3gi/YbdqE6YpbQ8+5UmDqeA7CHp4/N+Ka14qH7krHAep/oQcdhbOjs4EY1RFAoXjgeSY+QlmZHlWizFrUzkjmh6muWJInYdt9Fy1+MzRZ3/iuuQCmGIXWasS/dwynQ+uLwr/41Cp/0S9qGre1MADaONHAFzQe7LwLHUG0ZK0YTPhSiQU0e4D7wK/u5ubtAHVuSVWrcX9+UcIECn9xAuPPrnN4QR+5jKDb/ERtdR6HIyu38smEBOMkVwUkre8SOYqoBJ2r8VTccUksX+hAIrEv38YAx2hLiBH00SDe+Uxag8UiL5Q+2h/TGCLpyN/8LTBMKlcnlSx0qoKAujDgr4MT7eHKci9R/ca+U27ddal19umbea420Vn98FY+Xaz7JcKObyQA7hSisa/eB6TuuWxJjHOc+nKTgFOh6COyfW+La4NEMkGadyuy8sYmhZBERH3zhuf4LPxNBRTH88yosCz/4U1mvxt0wyVNg8lrmR9zbutjuohb/Usu9LhDuQnh6/vo+ncxKqxMIc2V/ZMCRfGsCszzK1uH9zFjp6CswPrkohLQNDKI1r98mGnSSbxvVA2vMCz4duPkSETad48wCS7BQ3GkYdJohp0WepfphukIhnRbU7mjvmbSMDVvI5bWUiR1N9/peAuSMUIjuXgNPBJ0=",
    type => "ssh-rsa",
  }
}
