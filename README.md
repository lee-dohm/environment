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
1. Execute the command: `bundle install`

### Actions

The installation script performs the following actions:

1. If it is being executed on OS X, installs [Homebrew][brew]
1. Installs the [fish shell][fish]
1. Sets the default shell to fish
1. Adds a line to `~/.config/fish/config.fish` to source `Profile/config.fish`
1. Installs Git
1. Configures Git to include the configuration file at `config/git`
1. If it is being executed on OS X, configures Git to use `config/gitignore_osx` as its global ignores file

## Notes

* [Homebrew][brew] works best if the path `/usr/local/bin` is on the `PATH` before `/usr/bin`. If running a shell other than fish, follow [these instructions][osx-path] to update the defaults when installing a new OS X machine. The fish environment includes a dynamic fix.
* For more information on how the fish environment is configured: [fish Environment Notes][fishnotes]

### git-process

I've added the [git-process][process] gem to the standard environment. This enables a simpler way to do a proper branching work flow in Git. Here is the standard single-user work flow:

* Start a new branch

```bash
$ git new-fb [branch name]
```

* Update feature branch with the latest from the integration branch (also pushes feature branch to the remote server)

```bash
$ git sync
```

* Rebase feature branch onto integration branch and push integration branch to origin server

```bash
$ git to-master
```

## Copyright

`lib/trollop.rb` is Copyright &copy; 2008-2012 William Morgan. Trollop is distributed under the same terms as Ruby. For more information see [the Trollop homepage][trollop].

All else is Copyright &copy; 2011-2013 [Lee Dohm][lee], [Lifted Studios][lifted].  See [LICENSE](LICENSE.md) for details.

[brew]: http://brew.sh/
[fish]: http://fishshell.com
[fishnotes]: FishNotes.md
[lee]: https://github.com/lee-dohm
[lifted]: https://github.com/lifted-studios
[osx-path]: http://serverfault.com/questions/16355/how-to-set-global-path-on-os-x
[process]: https://github.com/jdigger/git-process
[rake]: http://www.rubygems.org/gems/rake
[ruby]: http://www.ruby-lang.org
[rvm]: https://rvm.io/
[trollop]: http://trollop.rubyforge.org/
