class { 'mcollective':
   mc_security_psk => 'abc123',
   client          => true,
   stomp_port      => 6163,
   manage_packages => true,
}

include mcmasterupdate
