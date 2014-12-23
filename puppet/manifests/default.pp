include ::go
include ::git

include ::alexandria::vagrant

$packages = [
  'github.com/cavaliercoder/alexandria',
  'github.com/cavaliercoder/alexandria-cli'
]

go::package { $packages :
  ensure  => 'present'
}

class {'::mongodb::globals':
  manage_package_repo => true,
}->
class {'::mongodb::server': }->
class {'::mongodb::client': }
