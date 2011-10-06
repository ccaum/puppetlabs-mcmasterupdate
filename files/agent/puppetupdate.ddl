metadata    :name        => "Puppet Update",
            :description => "Agent To Update SVN checkouts on puppet masters",
            :author      => "Carl Caum",
            :license     => "GPLv2",
            :version     => "1.0",
            :url         => "http://puppetlabs.com",
            :timeout     => 10

action update, :description => "Update Environment on puppet master" do
    input :vcs,
          :prompt      => "VCS",
          :description => "Version Control System (git or svn)",
          :type        => :string,
          :validation  => /^svn$|^git$/,
          :optional    => false,
          :maxlength   => 90

    input :environment,
          :prompt      => "Environment",
          :description => "Which environment to update",
          :type        => :string,
          :validation  => '.',
          :optional    => false,
          :maxlength   => 90

end 
