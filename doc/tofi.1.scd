tofi(1)

# NAME

tofi - Tiny dynamic menu for Wayland, inspired by *rofi*(1) and *dmenu*(1).

# SYNOPSIS

*tofi* [options...]

*tofi-run* [options...]

*tofi-drun* [options...]

*dmenu* [options...]

# DESCRIPTION

*tofi* is a tiny dynamic menu for Wayland compositors supporting the
layer-shell protocol. It reads newline-separated items from stdin, and displays
a graphical selection menu. When a selection is made, it is printed to stdout.

When invoked via the name *tofi-run*, *tofi* will not accept items on stdin,
instead presenting a list of executables in the user's $PATH.

When invoked via the name *tofi-drun*, *tofi* will not accept items on stdin,
and will generate a list of applications from desktop files as described in the
Desktop Entry Specification.

When invoked via the name *dmenu*, *tofi* will only use the flags in
DMENU-OPTIONS.

# OPTIONS

*-h, --help*
	Print help and exit.

*-c, --config* <path>
	Specify path to custom config file.

*-d, --dmenu*

	Turns on dmenu compatibility flags. All flags after are treated like
DMENU-OPTIONS.

All config file options described in *tofi*(5) are also accepted, in the form
*--key=value*.

# DMENU-OPTIONS

*-b*

	Anchor to the bottom of the screen.

*-f, -i*

	Ignored, included for dmenu compatibility.

*-r*

	Require a match to complete.

*-v*

	Prints the version and exits.

*-P*

	Hide the input text.

*-p*

	Prompt text.

*-m*

	Sets the output to display tofi on.


# KEYS

<Up> | <Left> | <Ctrl>-k | <Ctrl>-p | <Ctrl>-b | <Alt>-k | <Alt>-p | <Alt>-h |
<Shift>-<Tab>
	Move the selection back one entry.

<Down> | <Right> | <Ctrl>-j | <Ctrl>-n | <Ctrl>-f | <Alt>-j | <Alt>-n  | <Alt>-l |
<Tab>
	Move the selection forward one entry.

<Page Up>
	Move the selection back one page.

<Page Down>
	Move the selection forward one page.

<Backspace> | <Ctrl>-h
	Delete character.

<Ctrl>-u
	Delete line.

<Ctrl>-w | <Ctrl>-<Backspace>
	Delete word.

<Enter> | <Ctrl>-m
	Confirm the current selection and quit.

<Escape> | <Ctrl>-c | <Ctrl>-g | <Ctrl>-[
	Quit without making a selection.

# FILES

_/etc/xdg/tofi/config_
	Example configuration file.

_$XDG_CONFIG_HOME/tofi/config_
	The default configuration file location.

_$XDG_CACHE_HOME/tofi-compgen_
	Cached list of executables under $PATH, regenerated as necessary.

_$XDG_CACHE_HOME/tofi-drun_
	Cached list of desktop applications, regenerated as necessary.

_$XDG_STATE_HOME/tofi-history_
	Numeric count of commands selected in *tofi-run*, to enable sorting
	results by run count.

_$XDG_STATE_HOME/tofi-drun-history_
	Numeric count of commands selected in *tofi-drun*, to enable sorting
	results by run count.

# EXIT STATUS

*tofi* exits with one of the following values:

0
	Success; a selection was made, or *tofi* was invoked with the *-h*
	option.

1
	An error occurred, or the user exited without making a selection.

# AUTHORS

Philip Jones <philj56@gmail.com>

# SEE ALSO

*tofi*(5), *dmenu*(1), *rofi*(1)
