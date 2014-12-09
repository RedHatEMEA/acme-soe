# == Define: profile_nfs::add_export ==
#
# Define to edit /etc/exports via file_line
#
# === Parameters ==
#
# [*directory*]
#   Directory to exports
#   Default is title
# [*clients*]
#   Client pattern allow to connect to the export
#   Default is all (*)
# [*opts*]
#   Export options
#   Default is 'rw,sync,root_squash'
#
# === Facts ===
#
# None
#
# === Examples ==
#
#  profile_nfs::add_export { '/mnt/exports1':
#    require     => File['/mnt/exports1'],
#  }
#
#  profile_nfs::add_export { '/mnt/export2':
#    directory   => '/mnt/exports2',
#    clients     => 'foo.example.com',
#    opts        => 'rw,sync,all_squash',
#  }
#
define profile_nfs::add_export(
  $directory = $title,
  $clients   = '*',
  $opts      = 'rw,sync,root_squash',
) {
  # Check input parameters
  if ($directory == undef) {
    fail('The directory parameter is required')
  }

  # Make sure that the NFS server services are started
  require profile_nfs::server

  # Add/replace line in /etc/exports
  file_line { $title:
    path   => '/etc/exports',
    line   => "${directory} ${clients}(${opts})",
    match  => "^${directory} ",
    notify => Exec["reload-exports-${title}"],
  }

  exec { "reload-exports-${title}":
    command     => '/usr/sbin/exportfs -r',
    refreshonly => true,
  }
}
