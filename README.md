# Lee's Environment

:rotating_light: This project is obsolete and has been supplanted by [lee-dohm/dotfiles](https://github.com/lee-dohm/dotfiles). :rotating_light:

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

## Git Support

I've spent a lot of time looking around at how other people use [Git][git] from the command line. This has turned into a number of tweaks and (hopeful) optimizations to how my scripts work. One thing I wanted to make note of in particular is the relation between Git commands, Git aliases, and shell aliases for Git commands.

There are a few categories to the changes I have made in my Git environment: simplifying the common case, optimizing the execution of Git commands, and creating new commands.

### Simplifying the Common Case

This is typically done through a Git alias in the `gitconfig` file. For example, I almost always want to see my fancy graph one-line log format instead of the standard log format. So I have the following alias:

```ini
[alias]
    l = log --graph --decorate --pretty=oneline --abbrev-commit --all
```

This allows me to simply type `git l` to get the log display that I normally choose. If I want to use the standard log display, then I can always type the full command, `git log`.

### Optimizing the Execution of Git Commands

The fewer characters I have to type, the faster I can execute the commands. Also, the most common commands should be the simplest to type. For this purpose, I use shell aliases because then I don't even have to type the space between `git` and the rest of the command. For example:

```bash
alias gg='git l'
```

This aliases `gg` to my standard `git log` view, since this is probably the second most common git command I use (second only to `git st`).

### Creating new Commands

This is either done through Git aliases for simple commands like `git aliases`, which lists all of the Git aliases currently defined, or through shell scripts like the `git update-fork` command.

### git-process

The [git-process][process] gem is part of the standard environment. This enables a simpler way to do a proper branching work flow in Git. Here is the standard single-user work flow:

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

[brew]: http://brew.sh
[git]: http://gitscm.org
[lee]: https://github.com/lee-dohm
[lifted]: https://github.com/lifted-studios
[process]: https://github.com/jdigger/git-process
[trollop]: http://trollop.rubyforge.org/
