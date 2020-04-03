#!/bin/sh

function field()
{
  INPUT=$1
  USER=$2
  
  for i in A B C;
  do 
    for j in 1 2 3;
    do
      typeset ${i}${j}=" "
    done
  done

  typeset "${INPUT}=${USER}"

  printf "         1          2         3       \n"
  printf " A       $A1   |   $A2   |   $A3      \n"
  printf "      ------------------------------  \n"
  printf " B       $B1   |   $B2   |   $B3      \n"
  printf "      ------------------------------  \n"
  printf " C       $C1   |   $C2   |   $C3      \n"
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
