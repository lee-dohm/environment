
# Lee's Environment

A collection of Lee's environment configuration, scripts and other goodies.

## Installation

[Ruby][ruby] (v1.9+) and [Rake][rake] are required to be installed before the installation script will work.

1. Check out the repository.
1. Open a shell window.
1. Change to the directory where the repository is installed.
1. Execute the command: `rake install`

### Actions

The installation script performs the following actions:

1. Adds a line to `~/.zshrc` to source `Profile/zshrc`.
1. Configures Git to include the configuration file at `config/git`.
1. If it is being executed on OS X:
    1. Configures Git to use `config/gitignore_osx` as its global ignores file.

## Copyright

`lib/trollop.rb` is Copyright &copy; 2008-2012 William Morgan. Trollop is distributed under the same terms as Ruby. For more information see [the Trollop homepage][trollop].

All else is Copyright &copy; 2013 [Lee Dohm][lee], [Lifted Studios][lifted].  See [LICENSE](LICENSE.md) for details.

[lee]: https://github.com/lee-dohm
[lifted]: https://github.com/lifted-studios
[rake]: http://www.rubygems.org/gems/rake
[ruby]: http://www.ruby-lang.org
[trollop]: http://trollop.rubyforge.org/
