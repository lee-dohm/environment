# Lee's Environment

A collection of Lee's environment configuration, scripts and other goodies.

## Installation

Git is a requirement before any of this can be installed. I really should figure out a cool way to install the environment without needing git to already be on the system.

### Install Environment

1. Open a terminal window
1. Check out the repository: `git clone git@github.com:lee-dohm/environment.git ~/Source/environment`
1. Change to the environment directory: `cd ~/Source/environment`
1. Execute the install command: `./install.sh`
1. Change the shell, if necessary: `chsh -s /bin/zsh`
1. Reopen the terminal window

### Install Homebrew

See the [official Homebrew installation instructions][brew].

### Install Ruby

1. Open a terminal window
1. Change to the environment directory: `cd $SCRIPT_DIR`
1. Install rbenv: `brew install rbenv`
1. Install ruby-install: `brew install ruby-install`
1. Install ruby: `rbenv install 2.0.0-p353`
1. Set installed ruby as default: `rbenv global 2.0.0-p353`
1. Install bundler: `gem install bundler`
1. Install standard gems: `bundle install`

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

All else is Copyright &copy; 2011-2014 [Lee Dohm][lee], [Lifted Studios][lifted].  See [LICENSE](LICENSE.md) for details.

[brew]: http://brew.sh/
[lee]: https://github.com/lee-dohm
[lifted]: https://github.com/lifted-studios
[process]: https://github.com/jdigger/git-process
[trollop]: http://trollop.rubyforge.org/
