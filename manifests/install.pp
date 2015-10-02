# == Class springiotools::install
#
# This class is called from springiotools for install.
#
class springiotools::install {


  exec {'wget_springtoolsuite':
    command => "/usr/bin/wget --progress=bar ${::springiotools::url_location}${::springiotools::package_name}",
    unless  => "/usr/bin/test -f /tmp/${::springiotools::package_name}",
    cwd       => '/tmp',
  }

  exec {'extract_springtoolsuite':
    command => "/bin/tar -xzf /tmp/${::springiotools::package_name}",
    unless  => '/usr/bin/test -d /opt/sts-bundle',
    cwd     => '/opt',
    require => Exec['wget_springtoolsuite'],
  }

  file { '/opt/sts-bundle/sts-home':
    ensure => 'link',
    target => '/opt/sts-bundle/sts-3.7.0.RELEASE',
  }

#    exec {'change_mod':
#    command => '/bin/chmod -R 755  /opt/sts-bundle/sts-home/ ',
#    cwd     => '/opt',
#    require => File['/opt/sts-bundle/sts-home'],
# }
}
