# ZSH Navi Plugin

Plugin to use navi with ZSH, it will insert the selected command in the terminal for its use.

![Plugin demo](demo.gif?raw=true)

## Usage

Use `bindkey` to define a hotkey for this:

```
# use ctrl-n
bindkey '^n' navi_widget
```

```
# use ctrl-space
bindkey '^ ' navi_widget
```

## Run vs Insert
Prefixing a command with `run:` will make the plugin run the command as opposed to inserting it in the terminal.

```
# Open current repo in github
run: gh repo view --web
```
