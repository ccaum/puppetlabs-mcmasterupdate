class mcmasterupdate {
  mcollective::plugins::plugin { 'puppetupdate':
    ddl           => true,
    type          => 'agent',
    module_source => 'puppet:///modules/mcmasterupdate',
  }
}
