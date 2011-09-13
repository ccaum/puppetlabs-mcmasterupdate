module MCollective
    module Agent
        # An agent that uses Reductive Labs Puppet to manage packages
        #
        # See http://code.google.com/p/mcollective-plugins/
        #
        # Released under the terms of the GPL, same as Puppet
        class Puppetupdate<RPC::Agent
            metadata :name => "Puppet Update",
              :description => "Agent To Update SVN checkouts on puppet masters",
              :author      => "Carl Caum",
              :license     => "GPLv2",
              :version     => "1.0",
              :url         => "http://puppetlabs.com",
              :timeout     => 10

            action 'update' do 
              begin
                require 'puppet'
              rescue LoadError => e
                reply[:error] = "Cannot load Puppet"
              end
              
              case request[:rcs]
              when 'svn'
                command = "svn update"
              when 'git'
                command = "git pull"
              else
                reply[:error] = "Unknown RCS #{request[:rcs]}"
              end

              Puppet[:config] = '/etc/puppet/puppet.conf'
              Puppet.parse_config
              Puppet::Node::Environment.new(request[:environment])[:modulepath].split(':').each do |path|
                run "#{command} #{path}"
              end
            end
        end
    end
end
