# = Class: ssh
#
# install/configure sshd.
#
# Add admin keys to /root/.ssh/authorized_keys
#
# [*ssh_allow*]
#  If set add AllowGroups to /etc/ssh/sshd_config
#
class ssh (
  $ssh_allow         = '',
  $banner_desc       = '',
  $banner_owner      = '',
  $permit_root_login = 'yes',
  $root_sudo         = '%sysadm',
  $listen_address    = ['']) {
  package { sshd:
    name   => "openssh",
    ensure => latest,
  }

  service { "sshd":
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Package["sshd"],
    subscribe  => File["/etc/ssh/sshd_config"],
  }

  file { "/etc/ssh/sshd_config":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0600,
    content => template("ssh/sshd_config.erb"),
    require => Package["sshd"],
  }

  file { "/etc/sudoers.d/root":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0440,
    content => template("ssh/root.erb"),
    require => Package["sshd"],
  }

  file { "/root/.ssh":
    ensure => "directory",
    owner  => "root",
    group  => "root",
    mode   => 700
  }

  file { "/root/.ssh/config":
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => 0644,
    source => "puppet:///modules/ssh/ssh-config-root",
  }

  file { "/etc/banner":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("ssh/banner.erb"),
  }

  if ($domain == "xeop.de") or ($domain == "rdev.deutsche-boerse.de") {
    class { ssh::admin_keys: }
  } elsif ($domain == "dbag.prod") {
    class { ssh::admin_keys::prod: }
  }
}
