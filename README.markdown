# MCMasterUpdate Module

Carl Caum <carl@puppetlabs.com>

This module provides a MCollective agent for updating the module checkout from 
git or subversion on puppet masters.

# Quckstart
Simply include the mcmasterupdate class, to get the agent installed

  include mcmasterupdate

Reload the agents with the following command

  mco controller reload\_agents

# Requirement

 * The [puppetlabs/mcollective](http://www.github.com/puppetlabs/puppetlabs-mcollective)  module in your modulepath 
 * The mcollective class is declared

# Example svn commit-hook

In the ext directory of the module, there is an example svn commit-hook script. MCollective must be set up on the 
subversion server and must be set up as a client.
