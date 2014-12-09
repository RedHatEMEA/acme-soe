# == Define: profle_nfs::add_export_hiera ==
#
# Wrapper to convert (Array of) Hash from hiera
# passed as single hash in $title to indiviual parameters
# of profile_nfs::add_export
#
# === Parameters ==
#
# See profile_nfs::add_export
#
# === Facts ===
#
# None
#
# === Examples ==
#
#  $exports = hiera_array('profile_nfs::exports', [])
#  profile_nfs::add_export_hiera{$exports:}
#
define profile_nfs::add_export_hiera(
) {
  profile_nfs::add_export{ $title['directory']:
    clients => $title['clients'],
    opts    => $title['opts'],
  }
}
