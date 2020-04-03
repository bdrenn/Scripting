#!/bin/sh

function field()
{
  INPUT=$1
  USER=$2

  typeset "${INPUT}=${USER}"
 
  echo "         1          2           3      "
  echo " A      $A1    |   $A2     |   $A3     "
  echo "      ------------------------------   "
  echo " B      $B1    |   $B2     |   $B3     "
  echo "      ------------------------------   "
  echo " C      $C1    |   $C2     |   $C3     "
}

function get_value()
{
  read -p "Please enter a value (ex. A3): " value
  echo $value
}

function get_user()
{
  read -p "Which user? Enter (X/O): " user
  echo $user
}

# Main

USER=$(get_user)
VALUE=$(get_value)

field $VALUE $USER
