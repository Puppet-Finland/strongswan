#
# == Class: strongswan
#
# A class for managing strongswan ipsec tools / IKE daemon
#
# == Parameters
#
# [*monitor_email*]
#   Email address where local service monitoring software sends it's reports to.
#   Defaults to global variable $::servermonitor.
#
# == Authors
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-lisence
# See file LICENSE for details
#
class strongswan
(
    $monitor_email = $::servermonitor
)
{

    include strongswan::install

    include strongswan::service

    if tagged('monit') {
        class { 'strongswan::monit':
            monitor_email => $monitor_email,
        }
    }
}
