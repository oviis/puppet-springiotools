# == Class springiotools::service
#
# This class is meant to be called from springiotools.
# It ensure the service is running.
#
class springiotools::service {

  service { $::springiotools::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
