# fish Environment Notes

## Configuration

The `Rakefile` creates a login script in the normal location, `~/.config/fish/config.fish`, that sources the login script in this project, `fish/config.fish`. That login script only performs a few tasks:

1. Creates a `PROFILE` environment variable that points to the running script
1. Creates a `SCRIPT_DIR` environment variable that points to the root of this project
1. Creates a `SOURCE_DIR` environment variable that points to the directory above the root of the project
1. Adds `$SCRIPT_DIR/fish/functions` to the front of the `fish_function_path` list so that the functions contained here override the ones that came with fish
1. Sources each file that matches: `$SCRIPT_DIR/fish/init/*.fish`

The individual initialization scripts perform other environment configuration and initialization for particular purposes. See the comments in each script for more information.
