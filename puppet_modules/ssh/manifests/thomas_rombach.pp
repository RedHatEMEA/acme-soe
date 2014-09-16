# = Class: ssh::thomas_rombach
#
# Add Thomas Rombach keys to /root/.ssh/authorized_keys2
#
class ssh::thomas_rombach ($rombach_key = "present") {
  ssh_authorized_key { 'thomas.rombach':
    ensure  => $rombach_key,
    key     => 'AAAAB3NzaC1kc3MAAACBAIgaG4uNi5iQNYAjI3T7tgGfzF8m9ZU9B4cMmPljEQhoj98V1jZ1o9x1kzsEuHdyXfFjDLlaKX/DrsgW0RvHq1lu5zi8YLu0xKp8HFZJaf1196jglxFCRX2h2ZNXFUvssysUDyCEKcyiYC2IPzd3X6+qbtVZBuzVy4TaRaD0Dbo9AAAAFQDFX8EJm0M7WoBB3iKMZDYc/FfBmwAAAIASUWUWfcvHizfa/Z6asatQKLn9XTj4Z5t0/StjM1w9FEuupP9qAyRZ7bdJNreWUQTDh3SHK7fuKBOyWkHmGrNP2mylyyLr5dZWodAPc08sMUfF8uM1CyYmK096CoGnfz7TetjP7hfZZ7I5oG9j1/Yp0iulBenU4mhNZ8rZ0gYDrAAAAIAYNg07qDwXdElFPucnlfg/WYhR1w1jD7WjuINvAY24H1Y6mhsKT5nFpDgNxToQR0gIDK0rHevKPwzn80c0vpyjVjZ1KxqgV2FEBC4DjsMZk8IKFvVBy+G6I2MNqo8seaZsIwEAfUbKViSaiJr+35HfhyFM6BkriZTPPu76MxzxcA==rombtho@otd0194.xeop.de',
    type    => 'ssh-dss',
    user    => 'root',
    require => [Package['sshd'], File['/root/.ssh']]
  }
}
