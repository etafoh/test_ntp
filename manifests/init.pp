class test_ntp{
	ensure_packages(['ntp'])

	file {'/etc/ntp.conf':
		source  => 'puppet:///modules/test_ntp/ntp.conf',
		notify  => Service['ntp'],
		require => Packages['ntp'],
	}

	service {'ntp':
		ensure => running,
		enable => true,
	}
}
