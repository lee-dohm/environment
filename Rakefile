#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

require 'yard'

# @return [Symbol] OS identifier.
def os_name
  case `uname -s`
  when 'Darwin' then :os_x
  when 'Linux' then :linux
  else :unknown
  end
end

task :default => :yard

desc 'Install the standard environment'
task :install => [:zsh, :zshrc, :git]

task :git do
  root = Dir.pwd

  include_path = File.join(root, 'config', 'git')
  if `git config --global --get include.path`.split($/).grep(/^#{include_path}/).nil?
    sh "git config --global --add include.path '#{include_path}'"
  end

  if os_name == :os_x
    excludes_path = File.join(root, 'config', 'gitignore_osx')
  end

  if excludes_path && `git config --global --get core.excludesfile`.split($/).grep(/^#{excludes_path}/).nil?
    sh "git config --global --add core.excludesfile '#{excludes_path}'"
  end
end

task :zsh do
  sh "chsh -s /bin/zsh"
end

task :zshrc do
  home = File.expand_path('~')
  zshrc = File.join(Dir.pwd, 'Profile', 'zshrc')

  File.open(File.join(home, '.zshrc'), 'w') do |file|
    file.puts "[[ -e #{zshrc} ]] && source #{zshrc}"
  end
end

YARD::Rake::YardocTask.new
