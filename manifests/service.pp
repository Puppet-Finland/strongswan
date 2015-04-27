#
# == Class: strongswan::service
#
# Configures strongswan to start on boot
#
class strongswan::service inherits strongswan::params {

    service { 'strongswan':
        name    => $::strongswan::params::service_name,
        enable  => true,
        require => Class['strongswan::install'],
    }
}
