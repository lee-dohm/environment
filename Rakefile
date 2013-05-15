#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

require 'yard'

task :default => :yard
task :install => :zshrc

task :zshrc do
  home = File.expand_path('~')
  zshrc = File.join(Dir.pwd, 'Profile', 'zshrc')

  File.open(File.join(home, '.zshrc'), 'w') do |file|
    file.puts "[[ -e #{zshrc} ]] && source #{zshrc}"
  end
end

YARD::Rake::YardocTask.new
