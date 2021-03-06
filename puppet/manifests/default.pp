include ::go
include ::git

include ::alexandria::vagrant

$packages = [
  'github.com/cavaliercoder/alexandria',
  'github.com/cavaliercoder/alexandria-cli',
  'github.com/cavaliercoder/alexandria-dashboard',
  'github.com/cavaliercoder/alexandria-docs',
  'github.com/pilu/fresh',
  'github.com/codegangsta/gin',
  'github.com/revel/cmd/revel',
]

go::package { $packages :
  ensure  => 'present'
}

class {'::mongodb::globals':
  manage_package_repo => true,
}->
class {'::mongodb::server': }->
class {'::mongodb::client': }

package { 'mongodb-org-tools' : 
	ensure => 'present',
	allow_virtual => false,
	require => Class['::mongodb::client']
}