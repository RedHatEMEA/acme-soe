# == Class: profile_nfs::server ==
#
# Configures an NFS client
# - Support NFSv3 only
# - Start nfs-lock
# Implicitly included from profile_nfs
#
# === Parameters ===
#
# [*managed*]
#   Boolean, checks if module is enabled to manage the configuration
#   Default value is true.
#
# === Facts ===
#
# None
#
# === Examples ===
#
# None
#
class profile_nfs::client (
  $managed  = true,
) {
  package { ['rpcbind','nfs-utils']:
    ensure  => installed,
  }

  if (str2bool($managed)) {
    service { 'rpcbind':
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => true,
    }

    service { 'nfs-lock':
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => true,
      require    => Service['rpcbind'],
    }
  }
}
