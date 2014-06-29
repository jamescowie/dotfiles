# Dot Files

## Requirements
*   OSX
*   Fish

## Installation
To use my DotFiles you need to be on a mac and use Fish Shell. Once you have cloned this git repo you can then
just run

```bash
install.sh
```

This will create symlinks to all of the locations the files are required. The installer does not detect already existing folders
so you might get errors if you already have files / folders at these locations. If this is the case you should back these up and then re run the installer.

Over time I will add / update these scripts with new additions if you would like to bring these into your workflow and you have already run the installer all
you need to do is update the git repo.

```git
g pull
```

## Requirements
To use these dot files you will need to have:
*   Fish Installed
*   Composer installed and available via common loaded path and named ( composer )

## About

These DotFiles contain many useful additions / helpers to my most commonly used applications. I have added / collected functions that extend fish for:
*   Git to alias g to git
*   Vagrant to alias v to vagrant
*   A sane and maintainable fish config

The git configuration I have included is a mixture of several sources. Alistair Stead ( https://github.com/alistairstead/dotfiles ) Being the main inspiration
