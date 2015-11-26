require 'rubygems'
require 'hoe'

Hoe.plugin :doofus, :git

Hoe.spec 'hoe-geminabox' do
  developer 'Ben Bleything', 'ben@bleything.net'
  ### Use markdown for changelog and readme
  self.history_file = 'CHANGELOG.md'
  self.readme_file  = 'README.md'

  ### dependencies!
  self.extra_deps << ['geminabox', '~> 0.12']
end
