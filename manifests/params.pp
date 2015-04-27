#
# == Class: strongswan::params
#
# Defines some variables based on the operating system
#
class strongswan::params {

    include ::os::params

    case $::osfamily {
        'RedHat': {
            $package_name = 'strongswan'
            $service_name = 'strongwan'
            $pidfile = '/var/run/charon.pid'
        }
        'Debian': {
            $package_name = 'strongswan'
            $service_name = 'strongswan'
            $pidfile = '/var/run/charon.pid'
        }
        'FreeBSD': {
            $package_name = 'security/strongswan'
            $service_name = 'strongswan'
            $pidfile = '/var/run/charon.pid'
        }
        default: {
            fail("Unsupported operating system ${::osfamily}")
        }
    }

    $service_start = "${::os::params::service_cmd} ${service_name} start"
    $service_stop = "${::os::params::service_cmd} ${service_name} stop"
}
