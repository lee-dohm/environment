#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

require 'English'
require 'fileutils'
require 'yard'

# Retrieves all global values of the given `key`.
#
# @param [String] key Configuration key for which to retrieve values.
# @return [Array<String>] List of values for the given `key`.
def git_config_get(key)
  `git config --global --get #{key}`.split($RS)
end

# Gets the user's home directory.
#
# @return [String] Absolute path to the user's home directory.
def home
  ENV['HOME']
end

# Gets the root path to use for environment project files.
#
# @return [String] Absolute path to the environment directory root.
def root
  File.dirname(__FILE__)
end

# @return [Symbol] OS identifier.
def os_name
  case `uname -s`
  when /Darwin/ then :os_x
  when /Linux/ then :linux
  else :unknown
  end
end

# Symlinks the file or directory at `src` to `~/dest`.
#
# @param [String] src Source file or directory.
# @param [String] dest Destination path beneath `HOME`.
# @return [nil]
def symlink_home(src, dest)
  actual_src = File.join(root, src)
  actual_dest = File.join(home, dest)

  if( !File.exists?(actual_dest) || File.symlink?(actual_dest) )
    FileUtils.rm(actual_dest) if File.symlink?(actual_dest)
    FileUtils.ln_s(File.join(actual_src), actual_dest)
    puts "  #{dest} -> #{src}"
  else
    puts "  Unable to symlink #{dest} because it exists and is not a symlink"
  end
end
task :default => :yard

desc 'Install the standard environment'
task :install => [:package_manager, :fish, :tools, :bin]

desc 'Install the standard tools'
task :tools => [:git, :ruby]

desc 'Install Ruby environment'
task :ruby => [:gemrc, :pry]

task :bin do
  symlink_home('bin', 'bin')
end

task :gemrc do
  symlink_home('config/gemrc', '.gemrc')
end

task :git => [:git_install] do
  include_path = File.join(root, 'config', 'git')
  if !(git_config_get('include.path').any? { |path| path =~ /^#{include_path}/ })
    sh "git config --global --add include.path '#{include_path}'"
  end

  if os_name == :os_x
    excludes_path = File.join(root, 'config', 'gitignore_osx')
  end

  if excludes_path && !(git_config_get('core.excludesfile').any? { |path| path =~ /^#{excludes_path}/ })
    sh "git config --global --add core.excludesfile '#{excludes_path}'"
  end
end

task :git_install do
  unless File.exists? '/usr/local/bin/git'
    case os_name
    when :os_x
      sh 'brew install git'
    when :linux
      sh 'apt-get install --assume-yes git'
    end
  end
end

task :pry => :pry_config

task :pry_config do
  symlink_home('config/pryrc', '.pryrc')
end

task :package_manager do
  if os_name == :os_x && !(File.exists? '/usr/local/bin/brew')
    sh 'ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"'
  end
end

desc 'Print out the detected OS'
task :os do
  puts os_name
end

task :fish_install => :package_manager do
  unless File.exists? '/usr/local/bin/fish'
    case os_name
    when :os_x
      sh 'brew install fish'
    when :linux
      sh 'apt-get install --assume-yes fish'
    end
  end
end

task :fish do
  fish_config = File.join(Dir.pwd, 'fish', 'config.fish')

  File.open(File.join(home, '.config', 'fish', 'config.fish'), 'w') do |file|
    file.puts "[ -r #{fish_config} ]; and . #{fish_config}"
  end
end

YARD::Rake::YardocTask.new
