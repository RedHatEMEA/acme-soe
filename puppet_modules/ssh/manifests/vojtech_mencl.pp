# = Class: ssh::vojtech_mencl
#
# Add Vojtech Mencl keys to /root/.ssh/authorized_keys
#
class ssh::vojtech_mencl($mencl_key = "present") {
  ssh_authorized_key { "vojtech.mencl":
    ensure  => $mencl_key,
    key     => "AAAAB3NzaC1yc2EAAAABIwAAAQEAwOHWPfh9ghg8vDP6hx6fjBLOMUrNzXVD9yKtyoM+cURBRTFzE0xINXdaG/ydItOxUIy6iY4FZu9KSVLMUCbFMo3geXuzyZHAz1BOxvFyxpCUBWyteTaL5uJ9ZJUD03bkllnzFV7v3Hx012KlYz+pVe1NfLWhJbdbzG9m0RqL4SzGGQODd2gXg9ZF4lCZUTj5KKLghYYlIUe8YzY07LA76omJxz0fy8A6KLec2oxV4A1Mjz3mTAZWxGM3vdYzy2+IPzd/bYth3y7tR6vRUPHNpGdV8OsIxmKVQfilDFOFsMMXrcHpX3g4awMKtDsoR6u50B+fcSJuDRdLVhNWJnmSrw==",
    type    => "ssh-rsa",
    user    => "root",
    require => [Package["sshd"], File["/root/.ssh"]]
  }
}

