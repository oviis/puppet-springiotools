
class springiotools {
	
	$tar_filename = 'spring-tool-suite-3.7.0.RELEASE-e4.5-linux-gtk-x86_64.tar.gz'

	exec {"wget_springtoolsuite":
            command => "/usr/bin/wget --progress=bar http://dist.springsource.com/release/STS/3.7.0.RELEASE/dist/e4.5/${tar_filename}",
            unless  => "/usr/bin/test -f /tmp/${tar_filename}",
            cwd     => "/tmp"
            #timeout => 0
    }

	exec {"extract_springtoolsuite":
            command => "/bin/tar -xzf /tmp/$tar_filename",
            unless  => "/usr/bin/test -d /opt/sts-bundle",
            cwd     => "/opt",
            require => Exec["wget_springtoolsuite"],	
    }

	file {"/tmp/$tar_filename":
		ensure => absent,
		require => Exec["extract_springtoolsuite"]
	}

}
