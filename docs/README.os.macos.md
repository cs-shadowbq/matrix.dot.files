# OSX / macOS 

God help us with Catalina. 

It breaks.. so much.. local compilation, and the security restrictions are all over userspace.

Reference: https://stackoverflow.com/questions/58278260/cant-compile-a-c-program-on-a-mac-after-upgrading-to-catalina-10-15/58278392#58278392

## Opt

### Sublime3 Keymaps

Settings and keymaps are stored within both packed and unpacked packages. Those can be overruled/extended by saving them to `$HOME/Library/Application Support/Sublime Text 3/Packages/User/.`

Install the home/end key fix for sublime

```shell
$> cp "$HOME/.matrix/os/Darwin/opt/Default (OSX).sublime-keymap" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/."
```


## Installation help

### ffmpeg (circa 2019)

https://github.com/homebrew-ffmpeg/homebrew-ffmpeg

Install ffmpeg on OSX in 2019 with sane options

```shell
brew tap homebrew-ffmpeg/ffmpeg
brew install homebrew-ffmpeg/ffmpeg/ffmpeg
```


## Iterm 

There are a few itermcolor schemes. Make sure to also set your font to a powerline compliant one if you are using powerline.

`.matrix/os/Darwin/opt/*.itermcolors`


## Bins

There are a few bins like `java-switch` that are useful.

## OSX Tweaks

There are a number of different OSX tweaks `SYSTEM_*` that can be run like:

* show all files in OSX Finder
* don't write DSStores in shares
* etc


### Other useful tools

cli notification disabled  

https://github.com/sindresorhus/do-not-disturb-cli

### Disabling Dashboards 

With just a couple of simple terminal commands you can be rid of the Dashboard forever. To get started fire up the Terminal app and type the following into the console.

    defaults write com.apple.dashboard mcx-disabled -boolean YES
    killall Dock


And this is it! Your Dashboard will be gone forever, even when you restart your mac. However if you think you have made a big mistake then you can always undo this by entering the following command at the Terminal and restarting your computer.

    defaults write com.apple.dashboard mcx-disabled -boolean NO

