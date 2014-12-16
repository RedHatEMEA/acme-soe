# == Class: profile_nfs::server ==
#
# Configures an NFS server
# - nfs rpcbind daemon
# - Support NFSv3 only
# Relies on profile_nfs::client for nfs-utils package
# and the start of nfs-lock service
# Implicitly included from profile_nfs::add_export
#
# === Parameters ===
#
# [*managed*]
#   Boolean, checks if module is enabled to manage the configuration
#   Default value is true.
# [*rpcnfsdcount*]
#   Number of NFS server threads to start
#   Default value is 8.
#
# === Facts ===
#
# None
#
# === Examples ===
#
# profile_nfs::server::managed: false
# profile_nfs::server::rpcnfsdcount: 128
#
class profile_nfs::server (
  $managed      = true,
  $rpcnfsdcount = 8,
) {
  # The profile_nfs::client will install nfs-utils
  # and start nfs-lock
  require profile_nfs::client

  file { '/etc/sysconfig/nfs':
    ensure  => present,
    content => template('profile_nfs/nfs.erb'),
    require => Package['nfs-utils'],
  }

  if (str2bool($managed)) {
    service { 'nfs':
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => true,
      subscribe  => File['/etc/sysconfig/nfs'],
      require    => Service['rpcbind'],
    }
  }

  # Shared exec to reload /etc/exports
  exec { 'reload_exportfs':
    command     => '/usr/sbin/exportfs -r',
    refreshonly => true,
  }
}
