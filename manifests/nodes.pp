node 'wsdev' {
	include nginx
	include ssh
	include sudoers
	
	user { 'werkspot':
		ensure => present,
		comment => 'Werkspot User',
		home => '/home/werkspot',
		managehome => true,
		password   => '*', # to disable login with password and passwords at all
	}
	ssh_authorized_key { 'werkspot_ssh':
		user => 'werkspot',
		type => 'rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDhSFq3fdAr3GMt6IIIY9FGQBFhxzgO6SqAE+HBqLR20rUV4MmYkBAUZrsVRNJDZb4IcSQBW1V3f+mV+Nfn8qgnt/vKSEXnkPfp7pqdd8Sg1Oa90PkdOJjBnvob0AL+egYOJbO7ObuZG6a8QsufTmAuqaUnxxfOrL+tWIspxNRWxMm3ru3DJE5JZMyzJrjKpY6YPjukBiTJ+42QzbY1NZ69ETSRXmRhL+hs3kjR/gcMEu+cyQ/71GfVfqFjdQreFtfaGs0T2WjiZ/EgQ68jfqyHQgCIEwC6w68f9LByvI7EEbjwFaz08ISP5Zc2hJvNF6x6szxGVsiquOYKfUXYH/b7'
	}
}
