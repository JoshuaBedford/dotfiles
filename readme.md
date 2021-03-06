# Installation instructions

Though the instructions Dries's Dotfiles contain are fantastic, my personal touches have rendered some of the steps unnecessary or inaccurate.

1. Update MacOS to the newest available version.
2. Download the dotfiles.
3. Now lets install. Two options:
    - Long Version
        - `mv ~/Downloads/dotfiles-master ~/.dotfiles` (this assumes you download a folder `dotfiles-master` to a mac `~/Downloads` folder)
        - `cd ~/.dotfiles` (move into the dotfiles directory)
        - `chmod a+x ./setup.sh` (make sure permissions are executable)
        - `./setup.sh` (run the setup script)
    - Short version
        - `mv ~/Downloads/dotfiles-master ~/.dotfiles && cd ~/.dotfiles && chmod a+x ./setup.sh && ./setup.sh`
4. Want to automatically configure macOS settings? 
    - *Note* These are configured to my preference and may include settings you do not wish to have.
    - `source .macos`
5. Now everything should be installed and ready to configure (assuming you uncommented and installed it, you must configure Sublime Text to your preference).
6. Restart your computer to finalize all changes.

This does not account for every scenario. The original dotfile I based mine off of's README is below. Because this also installs and configures oh-my-zsh, it reloads the terminal after oh-my-zsh and stops the execution of the script. Because of this, if you wish to extend this you will need to have another 

** Note: In the original guide, it asks to install the xcode command line tools manually, but I've found that brew now does that automatically as dependencies needed for the script. It's easier for me to allow Brew to handle it rather than manually complete the process.

See below for some more great notes from Dries's dotfiles, or go visit his repository for the untouched (and newest) version.

## Lando ZSH (Plugin)
While we are on the topic, checkout [Lando ZSH](https://github.com/JoshuaBedford/lando-zsh). It's a useful little plugin to be able to use normal commands rather than typing 'lando' in front of every command.


---------------------------------------------------------------------------------


# A Spinoff of Dries's Dotfiles (everything below was written by him)

## What Is This?

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually. Everything which is needed to install my preffered setup of macOS is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy! :smile:

Read the blog post: https://driesvints.com/blog/getting-started-with-dotfiles

## A Fresh macOS Setup

He formerly had installation instructions for setting up a fresh macbook, but I've updated to fit my fork. See above.

> Note: you can use a different location than `~/.dotfiles` if you want. Just make sure you also update the reference in the `.zshrc` file.

## Your Own Dotfiles

If you want to start your own dotfiles from this setup, it's pretty easy to do so. First of all you'll need to fork this repo. After that you can tweak it the way you want.

Go through the [`.macos`](./.macos) file and adjust the settings to your liking. You can find much more settings at [the original script by Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) and [Kevin Suttle's macOS Defaults project](https://github.com/kevinSuttle/MacOS-Defaults).

Check out the [`Brewfile`](./Brewfile) file and adjust the apps you want to install for your machine. Use [their search page](https://caskroom.github.io/search) to check if the app you want to install is available.

Check out the [`aliases.zsh`](./aliases.zsh) file and add your own aliases. If you need to tweak your `$PATH` check out the [`path.zsh`](./path.zsh) file. These files get loaded in because the `$ZSH_CUSTOM` setting points to the `.dotfiles` directory. More info about how to customize oh-my-zsh can be found [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization).

One thing you'll need to do manually is add your `~/.zshrc` file. You can't symlink the `.zshrc` file from your dotfiles because Mackup will already symlink your `.zshrc` from your home directory. That's why we'll need to create the file manually. Add the contents below to a `.zshrc` file in your user directory. What it will do is load the `.zshrc` file from your dotfiles. Make sure that the path to your dotfiles is correct.

```zsh
# Load Zsh
source ~/.dotfiles/.zshrc
```

> I've thought about backing up the `.zshrc` file entirely to Mackup and removing it from this repo. But I like it to be versioned with the repo so I can use it for documentation and as an example. I also believe that it makes more sense to keep it in this repo because it's pretty tied into this repo's files and settings.

When installing these dotfiles for the first time you'll need to backup all of your settings with Mackup. Install and backup your settings with the command below. Your settings will be synced to your Dropbox so you can use them to sync between computers and reinstall them when reinstalling your Mac. If you want to save your settings to a different folder or different medium than Dropbox, [checkout the documentation](https://github.com/lra/mackup#supported-storages).

```zsh
brew install mackup
mackup backup
```

You can tweak the shell theme, the Oh My Zsh settings and much more. Go through the files in this repo and tweak everything to your liking.

Enjoy your own Dotfiles!

## Thanks To...

I first got the idea for starting this project by visiting the [Github does dotfiles](https://dotfiles.github.io/) project. Both [Zach Holman](https://github.com/holman/dotfiles) and [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) were great sources of inspiration. [Sourabh Bajaj](https://twitter.com/sb2nov/)'s [Mac OS X Setup Guide](http://sourabhbajaj.com/mac-setup/) proved to be invaluable. Thanks to [Taylor Otwell](https://twitter.com/taylorotwell) for his awesome Zsh theme! And lastly, I'd like to thank [Maxime Fabre](https://twitter.com/anahkiasen) for [his excellent presentation on Homebrew](https://speakerdeck.com/anahkiasen/a-storm-homebrewin) which made me migrate a lot to a `Brewfile` and [Mackup](https://github.com/lra/mackup).

In general, I'd like to thank every single one who open-sources their dotfiles for their effort to contribute something to the open-source community. Your work means the world! :earth_africa: :heart:
