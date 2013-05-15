#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

require 'yard'

def os_name
  `uname -s`
end

task :default => :yard
task :install => [:git, :zshrc]

task :git do
  root = Dir.pwd

  include_path = File.join(root, 'config', 'git')
  if `git config --global --get include.path`.split($/).grep(/^#{include_path}/).nil?
    sh "git config --global --add include.path '#{include_path}'"
  end

  if os_name.downcase == 'darwin'
    excludes_path = File.join(root, 'config', 'gitignore_osx')
  end

  if excludes_path && `git config --global --get core.excludesfile`.split($/).grep(/^#{excludes_path}/).nil?
    sh "git config --global --add core.excludesfile '#{excludes_path}'"
  end
end

task :zshrc do
  home = File.expand_path('~')
  zshrc = File.join(Dir.pwd, 'Profile', 'zshrc')

  File.open(File.join(home, '.zshrc'), 'w') do |file|
    file.puts "[[ -e #{zshrc} ]] && source #{zshrc}"
  end
end

YARD::Rake::YardocTask.new
