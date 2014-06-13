#
# == Class: strongswan::monit
#
# Setup local monitoring for strongswan
#
class strongswan::monit
(
    $monitor_email
)
{
    include strongswan::params

    monit::fragment { 'strongswan-strongswan.monit':
        modulename => 'strongswan',
    }
}
