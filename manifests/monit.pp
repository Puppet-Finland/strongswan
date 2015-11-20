#
# == Class: strongswan::monit
#
# Setup local monitoring for strongswan
#
class strongswan::monit
(
    $monitor_email

) inherits strongswan::params
{
    monit::fragment { 'strongswan-strongswan.monit':
        basename   => 'strongswan',
        modulename => 'strongswan',
    }
}
