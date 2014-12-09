# == Class: profile_nfs
#
# Main class for configuring NFS services
# - NFSv3 only
# - client is always enabled
# - optionally enable server
# - expose exports variable to add exported directories
#
# === Parameters ===
#
#
# [*config_server*]
#   Boolean, force configuration of NFS server even if no
#   exports are made
#   Default is implicitly true when exports are configured
#
# [*exports*]
#   Array of exports to add
#   Hash entries of exports
#   -  directory: Directory to export
#   -  clients: Clients allowed to connect, Default is '*'
#   -  opts: Export options, default is 'rw,sync,root_squash'
#
# === Facts ===
#
# None
#
# === Examples ===
#
# profile_nfs::exports:
#   - directory: /mnt/exports1
#     clients: *
#     opts: rw,sync,all_squash
#
# Install-only option without managing /etc/exports:
# profile_nfs::config_server: true
#
class profile_nfs(
  $config_server = false,
) {
  include profile 
  tag 'profile_nfs'

  # Always install the NFS client, optionally
  # also the server if not implicity added by add_export
  require profile_nfs::client
  if (str2bool($config_server)) {
    require profile_nfs::server
  }

  # retrieve the list of exports using hiera to get a merged array of hashes
  # call profle_nfs::add_export through a wrapper to process each hash
  $exports = hiera_array('profle_nfs::exports', [])
  profile_nfs::add_export_hiera{$exports:}
}
