# == Class: resource_auto ==
#
# Auto include classes based on hiera
#
# === Parameters ===
#
# None
#
# === Facts ===
#
# None
#
# === Examples ===
#
# none
#
class resource_auto() {
  tag 'resource'
  tag 'resource_auto'

  hiera_include('classes')
}
