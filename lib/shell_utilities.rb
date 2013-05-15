#
# Copyright (c) 2013 by Lifted Studios.  All Rights Reserved.
#

# Collection of utility functions for writing helpful Ruby shell scripts.
module ShellUtilities
  # Climbs the directories starting with `dir` or the current working directory and returns the first directory for which the
  # supplied block returns `true`.
  #
  # @param [String] dir Directory within which to start the search.
  # @return [String] Matching directory.
  # @return [nil] If no directory is found which matches.
  # @yieldparam dir [String] Directory to test.
  # @yieldreturn [Boolean] `true` if the directory passed the test; `false` otherwise.
  def climb(dir = Dir.pwd)
    dir = File.expand_path('.', dir)

    while dir != '/'
      return dir if yield dir
      dir = File.expand_path('..', dir)
    end

    nil
  end

  # Executes the given shell command.
  #
  # @param [String] cmd Command to be executed in the shell.
  # @return Exit code of the command.
  def sh(cmd)
    puts cmd
    system cmd
  end
end
