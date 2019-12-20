# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
  # Shell is non-interactive.  Be done now!
  return
fi

alias ls='ls -G'
alias ldd='otool -L'
alias libtoolize='glibtoolize'

alias code='open -a "Visual Studio Code.app"'
alias firefox='open -a Firefox.app'
alias chrome='open -a Chrome.app' 
alias finder='open -a Finder.app'
alias play='open -a VLC.app'
alias sublime='open -a "Sublime Text.app"'
alias seashore='open -a "Seashore.app"'
