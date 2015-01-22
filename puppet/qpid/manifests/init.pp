class qpid {
	package {
		'qpid-cpp-server':
		ensure => installed,
		allow_virtual => true,
	}
	->
	service {
		'qpidd':
		ensure => 'running',
		enable => true,
		# require => Package['qpid-cpp-server'] # covered by the arrow
	}
}
