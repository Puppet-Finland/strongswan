##
# StrongSwan connection
#
# $title: name of the connection
#

define strongswan::connection (
    $conn_cipher_suites = ['aes256-sha1-modp1536'],
    $ike_cipher_suites = ['aes256-sha1-modp1536'],
    $ike_version = 'ikev1',
    $local_ip,
    $local_identifier,
    $remote_ip,
    $remote_identifier,
    $local_subnet,
    $remote_subnet,
    $psk,
)
{

    file {"/etc/ipsec.conf":
        ensure    => 'file',
        owner     => 'root',
        group     => 'root',
        mode      => '0644',
        content   =>  template('strongswan/ipsec.conf-fragment.erb'),
    }
    file {"/etc/ipsec.secrets":
        ensure    => 'file',
        owner     => 'root',
        group     => 'root',
        mode      => '0640',
        content   =>  "${remote_identifier} : PSK \"RxS4LuYib\"",
        notify    => Service['strongswan'];
    }

}
