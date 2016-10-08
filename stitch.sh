#!/bin/bash

# get page name
pagename=$(head -1 $2 | sed 's/<[^>]*>//g')

# get template top with correct name
cat $1 | sed "s/\[TITLE\]/$pagename/"

# get content
cat $2

# get footer
cat $3