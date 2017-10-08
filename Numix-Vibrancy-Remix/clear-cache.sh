#!/bin/bash

sudo update-icon-caches $HOME/.local/share/icons/*
sudo update-icon-caches $HOME/.icons/*
sudo update-icon-caches /usr/share/icons/*
sudo touch /usr/share/icons/hicolor ~/.local/share/icons/hicolor
sudo gtk-update-icon-cache
