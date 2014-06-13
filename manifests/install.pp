#
# == Class: strongswan::install
#
# Install strongswan
#
class strongswan::install {

    include strongswan::params

    package { 'strongswan-strongswan':
        name => "${::strongswan::params::package_name}",
        ensure => installed,
    }
}
