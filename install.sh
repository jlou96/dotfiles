#!/bin/sh


DOTFILES_DIR=$(pwd)
DOTFILES_CONFIG_DIR=$DOTFILES_DIR/config
DOTFILES_NCMPCPP_DIR=$DOTFILES_DIR/ncmpcpp

TARGET_HOME_DIR=$HOME
TARGET_CONFIG_DIR=$HOME/.config/
TARGET_NCMPCPP_DIR=$HOME/.ncmpcpp


echo 'Installing...'

# Make symlinks for every subdirectory in config/
# Every subdirectory is guaranteed to be non-empty
for dir in $DOTFILES_CONFIG_DIR/*/
do
    echo $dir | sed -e 's/^(.*)$/.\1/' > $dotdir
    mkdir -p $TARGET_CONFIG_DIR/$dotdir

    for file in $dir/*
    do
        if 
        ln -s $DOTFILES_DIR/$dir/$file \
            $TARGET_CONFIG_DIR/$dotdir/$file

        echo 'Created a symlink to config/$dir/$file \
            in $TARGET_CONFIG_DIR/$dotdir/$file'
    done
done

# Make symlinks for other configuration files
for dir in $DOTFILES_NCMPCPP_DIR/*/
do
    mkdir -p $TARGET_CONFIG_DIR/$dir

    for file in $dir/*
    do
        ln -s $DOTFILES_NCMPCPP_DIR/$dir/$file \
            $TARGET_NCMPCPP_DIR/$dir/$file

        echo 'Created symlink to ncmpcpp/$dir/$file \
            in $TARGET_NCMPCPP_DIR/$dir/$file'
    done
done

