# = Class: ssh::daniel_virasto
#
# Add Daniel Virasto keys to /root/.ssh/authorized_keys
#
class ssh::daniel_virasto ($virastor_key = "present") {
  ssh_authorized_key { "daniel.virasto":
    ensure  => $virastor_key,
    key     => "AAAAB3NzaC1yc2EAAAABIwAAAQEA88k+Ql40LgmnoqNqOKqTBAeXIhj5w694PqwNxDii5F0hWtwNq9FYAIPelxhWBdIfw11XItrfV0caaU07kod14EhkH3qDz8o5IkLbibQX2fvuR8lYEae6Jy7oTH3K058XfinosnO3KOyrIgYL6+pqPwxz6CL7rN4QUT79LB23FwGbdDsYbHpkfFjzTowheKFJ6yZG6xZMRxGpH2JZelXvUckbIwoXY5ETojKaI0zwDRQI7dz1mTN2ecOuL+iiLCBZoKfiUXNISrvTmK2f1qx93BfeW3COT+vtlqobVZP2Kb8OhI8ogL4i7cLYcIBTzQDmYuV3EmYDbxaAtNCqJQaAIw==",
    type    => "ssh-rsa",
    user    => "root",
    require => [Package["sshd"], File["/root/.ssh"]]
  }
}

