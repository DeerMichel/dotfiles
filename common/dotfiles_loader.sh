#!/bin/zsh

# load exports
for e in ~/.dotfiles/exports/*
do
  [ -s $e ] && source $e
done

# load aliases
for a in ~/.dotfiles/aliases/*
do
  [ -s $a ] && source $a
done