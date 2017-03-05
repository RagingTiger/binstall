#!/usr/bin/env bash

# globals
location="/usr/local/bin"

# funcs
parsex() {
 echo "$1" | sed 's/\.[^\.]*$//'
}

remove() {
  rm $1
}

install_bin() {
  # check for install command
  mv $1 $location
}

main() {
  # first get filename
  fname=
  if [ -z "$2" ]; then
    fname=$( parsex $1 )
  else
    fname="$2"
  fi

  # next create link
  link $1 $fname

  # next install
  install_bin $fname

}

# run main
if [ -z "$1" ]; then
  echo "Please provide binary to install as an argument :)"
else
  case $1 in
    "-r") remove $location/$2
      ;;
    *) main $1 $2
      ;;
  esac
fi
