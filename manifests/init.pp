# Class: springiotools
# ===========================
#
# Full description of class springiotools here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class springiotools (
  $package_name = $::springiotools::params::package_name,
  $url_location     = $::springiotools::params::url_location,
) inherits ::springiotools::params {

  # validate parameters here

  class { '::springiotools::install': } ->
  class { '::springiotools::config': } ~>
  Class['::springiotools']
}
