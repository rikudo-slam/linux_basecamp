#!/bin/bash

USERNAME=alexmilshtein
DIR_PATH=/home/alexmilshtein

user_check () {

if cat /etc/passwd | cut -d: -f1 | grep -x "$USERNAME" >/dev/null 2>&1 ; then
  echo "The user $USERNAME exists in the system."
else
  echo "The user $USERNAME does not exist in the system. Please select another user and try again."
  exit 42;
fi
}

dir_check () {
if [ -d $DIR_PATH ];
then
echo "The $DIR_PATH directory exists in the system."
else
echo "The $DIR_PATH directory does not exist. Please select another path directory and try again."
exit 42;
fi
}

root_check () {
if [ "root" == "$USERNAME" ]; then
echo "Finding “root” user data is not allowed!"
exit 42;
  fi
}

find_function ()
{
find $DIR_PATH -user $USERNAME

}

process_fuction ()
{
ps -U $USERNAME -u $USERNAME u

}

root_check
dir_check
user_check
find_function
process_fuction


