class alexandria::vagrant (
  
) {    
    file { '/etc/motd' :
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template('alexandria/vagrant/motd.erb')
    }

    service { ['iptables', 'ip6tables'] :
    	ensure => 'stopped',
    	enable => false,
	}
}