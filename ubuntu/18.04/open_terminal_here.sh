#! /usr/bin/env bash


SCRIPT_LOCATION_DIR=$HOME/.local/share/nautilus/scripts
SCRIPT_NAME=Terminal
SCRIPT_CONFIGURATION_DIR=$HOME/.config/nautilus
SCRIPTS_ACCELS=scripts-accels

[[ ! -d $SCRIPT_LOCATION_DIR ]] && mkdir -p $SCRIPT_LOCATION_DIR

cat <<- EOF > $SCRIPT_LOCATION_DIR/$SCRIPT_NAME
#!/usr/bin/env sh
gnome-terminal
EOF
chmod u+x $SCRIPT_LOCATION_DIR/$SCRIPT_NAME
nautilus -q

if [[ ! -d  $SCRIPT_CONFIGURATION_DIR ]]; then
  echo "$SCRIPT_CONFIGURATION_DIR not found!"
  exit 1;
fi

if [[ ! -f $SCRIPT_CONFIGURATION_DIR/$SCRIPTS_ACCELS ]]; then
  cat <<- EOF > $SCRIPT_CONFIGURATION_DIR/$SCRIPTS_ACCELS
  F12 Terminal
  EOF
fi
