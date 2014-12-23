# Alexandria CMDB Vagrant

*A CMDB from the future!!!*

[Alexandria CMDB](https://github.com/cavaliercoder/alexandria) is an open source configuration management database written in [Google Go](https://golang.org/) with a [MongoDB](http://www.mongodb.org/) backend.

This project aims to create a portable, transient and lightweight development and testing environment for Alexandria using [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/).

To get started, install VirtualBox and Vagrant, then from your cloned source:
    ```bash
    vagrant up && vagrant ssh
    ```

Vagrant will then download a ~400mb CentOS 6.5 image from PuppetLabs with Puppet preconfigured.
Puppet will then be invoked to install and configure a development environment and clone Alexandria sources.

## License

Alexandria CMDB - Open source configuration management database
Copyright (C) 2014  Ryan Armstrong (ryan@cavaliercoder.com)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
