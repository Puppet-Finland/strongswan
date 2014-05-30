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
