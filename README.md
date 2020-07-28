# dotfiles
![](https://raw.githubusercontent.com/jlou96/dotfiles/windows/splash.png)

Various configuration files for Windows.
Work in progress.

## Overview
* [bug.n](https://github.com/fuhsjr00/bug.n)
* [Firefox]
    * [Homepage](https://github.com/Jaredk3nt/homepage)
    * [minimal-functional-fox](https://github.com/mut-ex/minimal-functional-fox)
    * [Vimium](https://github.com/philc/vimium)
* [mpv](https://github.com/mpv-player/mpv)
* [Neovim](https://github.com/neovim/neovim)
* PowerShell
    * wfetch
* [VSCodium](https://github.com/VSCodium/vscodium)
    * [Gruvbox Material](https://github.com/sainnhe/gruvbox-material-vscode)
* [Windows Terminal](https://github.com/Microsoft/Terminal)

## Install
(Work in progress) The install script essentially symlinks the configuration files to target the
files in this repository.

## Thoughts (read: ramble)
I recently made the decision to reset my Windows installation from scratch.
With a clean slate, I thought it would be a good idea to note down some thoughts and feelings I had
in mind going into this. It turns out I just rambled about my set-up.

### Package management
First off, I wanted a central authority in terms of managing the software that I download and use as
much as possible. I decided to go with [Chocolatey](https://chocolatey.org/), a package manager for
Windows. I've grown fond of command-line tools, and as much as I think that Windows is lacking in
terms of its terminal emulators, I still much prefer them to GUI applications.

I use Chocolatey to manage the applications that I think make sense. Firefox, Neovim, mpv...
even though these programs are trivial to update and uninstall as-is, I dunno, I just feel better
doing it this way.

### Terminal emulators & shells
Another thing about Windows that I've never really appreciated. I hate Command Prompt, and for the
longest time I just couldn't bring myself to use PowerShell either. (Why shove a blue screen at my
face, Microsoft?) I've recently learned to theme these consoles, which makes them a little more
pleasant. I also spent some time configuring PowerShell, tweaking my profile and writing some
(poorly coded) cmdlets for personal use. That being said, I think my heart will always be on the
Unix side for this one.

There, I use [zsh](https://www.zsh.org/) as my shell, but I was also interested in others, such as
[fish](https://github.com/fish-shell/fish-shell) and [nushell](https://github.com/nushell/nushell).
I also grew to appreciate the minimalist approach of [st](https://st.suckless.org/), which was my
default terminal emulator. I used [kitty](https://github.com/kovidgoyal/kitty) for some other
things, too. Both are great.

On Windows, well, I think the new [Windows Terminal](https://github.com/Microsoft/Terminal) is an
acceptable product. It's nice that it integrates well with WSL (although I don't actually have that
installed). I don't like how it ships with Ctrl+C and Ctrl+V set to copy and paste, but I'm glad
that it's configurable. The aesthetics are alright, but I want to remove the built-in tabs.
Let me do that with my own window manager!

On that note...

### Window management
To continue with the list of things that I think Windows is terribly lacking in, window management
is at the top.

Coming from the land of Unix (I've played with [i3](https://i3wm.org/),
[dwm](https://dwm.suckless.org/), and [bspwm](https://github.com/baskerville/bspwm)), the only
option I felt acceptable was [bug.n](https://github.com/fuhsjr00/bug.n). bug.n is probably most
similar to dwm.

AutoHotkey provides a pretty good layer of abstraction on top of Windows' native window management
in that I can freely choose to opt in or out. And although I'd like to keep it active forever, it
doesn't seem to play nice with Windows' Remote Desktop Connection, which I use for work.

An alternative is [FancyZones](https://github.com/microsoft/PowerToys/wiki/FancyZones-Overview),
which is part of the Windows PowerToys collection. I definitely feel that FancyZones has a bigger
audience than bug.n, but it's not my cup of tea. I've also tried
[workspacer](https://github.com/rickbutton/workspacer) and used it for a while.
I appreciate the fact that it's heavily extensible, but I had some issues using programs that I
consider core to my workflow.

Another option is [HashTWM](https://github.com/ZaneA/HashTWM), which I've yet to try.
Maybe I'll give it a spin in the future, but who knows? I'm fairly happy with bug.n.

### Editor
This is a contentious topic. I know people who are perfectly fine using
[Visual Studio Code](https://github.com/Microsoft/vscode), or even those who swear by
[Notepad++](https://github.com/notepad-plus-plus/notepad-plus-plus).
I started using the JetBrains suite of IDEs, later transitioning into VSCode.
After using Linux for a while, I've really taken a liking to Vim.

Right now, I'm in a weird state where I use both [Neovim](https://github.com/neovim/neovim) and
[VSCodium](https://github.com/VSCodium/vscodium) depending on the situation.
For work, I have to use Visual Studio and IntelliJ. That being said, I use the Vim plugins on all
other editors. I guess you could say I'm still transitioning!

### Web browser
I like Firefox. I've never really tried skinning it much before now, though. I'm not much of a
front-end kind of guy, so I ended up blatantly ripping off other people and then making some
personal modifications.

The two attributions I have to make are to [Homepage](https://github.com/Jaredk3nt/homepage) and
[minimal-functional-fox](https://github.com/mut-ex/minimal-functional-fox). Although it's far from
perfect, I'm pretty pleased with the current result.

The last thing I wanted to mention is [Vimium](https://github.com/philc/vimium), an extension which
emulates vim-like bindings on web browsers (targets Chromium-based browsers and Firefox). It's a
wonderful extension and it's a bit easier to transition into than something like
[qutebrowser](https://github.com/qutebrowser/qutebrowser). A keyboard-centric experience is
something that I've come to appreciate and I'm trying to integrate that into Windows.
