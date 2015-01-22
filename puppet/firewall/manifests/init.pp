class firewall(
$serverprofile="dmz",

 ){
  service{ 'firewalld':
	enable=>false,
    ensure=>"stopped",
  }

  if $serverprofile=="dmz"
  {
		service{ 'iptables':
			enable=>true,
			ensure=>"running",
			  }
	}
	else {
		 service{ 'iptables':
	            enable=>false,
        	    ensure=>"stopped",
              	}  
	}
	file {"/etc/sysconfig/iptables":
		 ensure => present,
		owner => 'root',
		group => 'root',
		mode => 0600,
		content => template("firewall/iptables.erb"),
		require => Package["iptables"],
	}
	
	package { ['iptables','iptables-services']:
		ensure => latest,
	}

}
include firewall
