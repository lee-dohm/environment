
# Lee's Environment

A collection of Lee's environment configuration, scripts and other goodies.

## Installation

### Install Ruby Environment

1. Install [RVM][rvm]
1. Install [Ruby][ruby] (v1.9+)
1. Install [Rake][rake]

### Install Environment

1. Check out the repository
1. Open a shell window
1. Change to the directory where the repository is installed
1. Execute the command: `rake install`

### Actions

The installation script performs the following actions:

1. If it is being executed on OS X, installs [Homebrew][brew]
1. Installs the [fish shell][fish]
1. Sets the shell to fish
1. Adds a line to `~/.config/fish/config.fish` to source `Profile/config.fish`
1. Installs Git
1. Configures Git to include the configuration file at `config/git`
1. If it is being executed on OS X, configures Git to use `config/gitignore_osx` as its global ignores file

## Notes

* [Homebrew][brew] works best if the path `/usr/local/bin` is on the `PATH` before `/usr/bin`. Follow [these instructions][osx-path] to update the defaults when installing a new OS X machine.

## Copyright

`lib/trollop.rb` is Copyright &copy; 2008-2012 William Morgan. Trollop is distributed under the same terms as Ruby. For more information see [the Trollop homepage][trollop].

All else is Copyright &copy; 2011-2013 [Lee Dohm][lee], [Lifted Studios][lifted].  See [LICENSE](LICENSE.md) for details.

[brew]: http://brew.sh/
[fish]: http://fishshell.com
[lee]: https://github.com/lee-dohm
[lifted]: https://github.com/lifted-studios
[osx-path]: http://serverfault.com/questions/16355/how-to-set-global-path-on-os-x
[rake]: http://www.rubygems.org/gems/rake
[ruby]: http://www.ruby-lang.org
[rvm]: https://rvm.io/
[trollop]: http://trollop.rubyforge.org/
