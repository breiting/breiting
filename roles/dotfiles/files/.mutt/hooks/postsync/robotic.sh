#!/bin/sh

# ~/.mutt/scripts/notmuch.sh

find ~/Mail/robotic/INBOX -type f -mtime -3d -exec sh -c 'cat {} | lbdb-fetchaddr' \;
