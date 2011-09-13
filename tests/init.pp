class { 'mcollective':
   mc_security_psk => 'abc123',
   client          => true,
   stomp_port      => 6163,
   #stomp_server    => 'ec2-107-20-16-247.compute-1.amazonaws.com',
   manage_packages => true,
}

include mcmasterupdate
