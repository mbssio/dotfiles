#!/bin/bash

PLUGIN_DIR="$HOME/.dotfiles/nvim/.config/nvim/lua/mbss/plugins"
DISABLED_DIR="$PLUGIN_DIR/disabled"
PLUGIN_NAME=$1
ACTION=$2

if [[ -z $PLUGIN_NAME || -z $ACTION ]]; then
    echo "Usage: $0 <lua_file> <on|off>"
    exit 1
fi

PLUGIN_FILE="$PLUGIN_NAME.lua"

case $ACTION in
    on)
        if [[ -f "$DISABLED_DIR/$PLUGIN_FILE" ]]; then
            mv "$DISABLED_DIR/$PLUGIN_FILE" "$PLUGIN_DIR/"
            echo "Enabled $PLUGIN_NAME"
        else
            echo "$PLUGIN_NAME is already enabled or does not exist in the disabled directory."
        fi
        ;;
    off)
        if [[ -f "$PLUGIN_DIR/$PLUGIN_FILE" ]]; then
            mv "$PLUGIN_DIR/$PLUGIN_FILE" "$DISABLED_DIR/"
            echo "Disabled $PLUGIN_NAME"
        else
            echo "$PLUGIN_NAME is already disabled or does not exist in the plugins directory."
        fi
        ;;
    *)
        echo "Unknown action: $ACTION"
        echo "Usage: $0 <plugin_name> <on|off>"
        exit 1
        ;;
esac
