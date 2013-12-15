#
# Copyright (c) 2013 by Lifted Studios. All rights reserved.
#

require 'shell_utilities'

include ShellUtilities

def open_report(path)
  report_path = proc { |dir| File.join(dir, path) }

  dir = climb { |d| File.exists?(report_path.call(d)) }

  unless dir
    puts 'No report found'
    exit 1
  end

  sh "open #{report_path.call(dir)}"
end
