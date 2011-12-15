#
# hoe-geminabox :: hoe-geminabox.rb
#
# Copyright (c) 2011 Ben Bleything <ben@bleything.net>, released under
# the terms of the MIT License. See README.md for details.
#

module Hoe::Geminabox
  VERSION = "0.1.1"

  attr_accessor :geminabox_server

  def define_geminabox_tasks
    Rake::Task[:release_to].clear_prerequisites
    Rake::Task[:release_to].prerequisites << "release_to_geminabox"

    task :check_geminabox_server do
      raise "You must specify a geminabox server in your Rakefile using self.geminabox_server=" unless self.geminabox_server
    end

    task :release_to_geminabox => [:gem, :check_geminabox_server] do
      sh "gem inabox -g #{self.geminabox_server} #{self.pkg_path}.gem"
    end
  end
end
