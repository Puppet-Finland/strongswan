#
# == Class: strongswan::install
#
class strongswan::install {

    include strongswan::params

    package { 'strongswan-strongswan':
        name => "${::strongswan::params::package_name}",
        ensure => installed,
    }

}
