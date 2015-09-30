# == Class springiotools::params
#
# This class is meant to be called from springiotools.
# It sets variables according to platform.
#
class springiotools::params {

  $default_package_name = 'spring-tool-suite-3.7.0.RELEASE-x86_64.tar.gz'
  $default_url_location      = 'http://java-nexus.sixt.de:8081/nexus/content/repositories/thirdparty/com/springsource/spring-tool-suite/3.7.0.RELEASE/'
  case $::osfamily {
    'Debian': {
      $package_name = $default_package_name
      $url_location = $default_url_location
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
