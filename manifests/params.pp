#
# == Class: strongswan::params
#
# Defines some variables based on the operating system
#
class strongswan::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'strongswan'
            $service_name = 'strongwan'
            $service_start = "/sbin/service $service_name start"
            $service_stop = "/sbin/service $service_name stop"
            $pidfile = '/var/run/charon.pid'
        }
        'Debian': {
            $package_name = 'strongswan'
            $service_name = 'strongswan'
            $service_start = "/usr/sbin/service $service_name start"
            $service_stop = "/usr/sbin/service $service_name stop"
            $pidfile = '/var/run/charon.pid'
        }
        'FreeBSD': {
            $package_name = 'security/strongswan'
            $service_name = 'strongswan'
            $service_start = "/usr/local/etc/rc.d/$service_name start"
            $service_stop = "/usr/local/etc/rc.d/$service_name stop"
            $pidfile = '/var/run/charon.pid'
        }
        default: {
            $package_name = 'strongswan'
            $service_name = 'strongswan'
            $service_start = "/usr/sbin/service $service_name start"
            $service_stop = "/usr/sbin/service $service_name stop"
            $pidfile = '/var/run/charon.pid'
        }
    }
}
