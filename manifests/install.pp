#
# == Class: strongswan::install
#
# Install strongswan
#
class strongswan::install inherits strongswan::params {

    package { 'strongswan-strongswan':
        ensure => installed,
        name   => $::strongswan::params::package_name,
    }
}
