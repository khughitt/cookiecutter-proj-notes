#!/bin/env bash
#
# Extract high-priority TODO items across multiple projects
# Keith Hughitt (July 2020)
#
# Usage:
#
# todo.sh /path/to/docs
#
# In the above, "/path/to/docs" refers to the parent directory containing your project
# notes. The script will scan each sub-directory of the specified directory and attempt
# to extract high-priority todo list items from those docs.
#
# To make it easier to use, I would suggest creating an alias so that you don't have to
# specify the path every time, and adding it to your ~/.zshrc or ~/.bashrc file, e.g.:
#
# alias td="bash ~/scripts/todo.sh ~/notes"
#

# check to make sure valid directory specified
if [ ! -e "$1" ]; then
    echo "Invalid input directory specified!"
    exit 0;
fi

# check to make sure that at least one todo.md file is present
infiles=`find $1 -maxdepth 2 -type f -name todo.md `
numfiles=`find $1 -maxdepth 2 -type f -name todo.md | wc -l`

if [ $numfiles -eq 0 ]; then
    echo "No todo.md files found at specified locatio!"
    exit 0;
fi

# iterate over todo lists for each project, and extract high-priority entries, if
# present
echo ""
for x in $infiles; do
    #echo $x;

    # get lines in between high and medium priority sections
    entries=`sed -n -e '/High-priority/,/Medium-priority/ p' $x | head -n-2 | tail -n+3`
    num_entries=`echo "$entries" | wc -l`

    if [ "$num_entries" -gt 1 ]; then
        header=`dirname $x`;
        echo -e "\e[31m$header"
        #echo $header
        printf '=%.s' $(seq 1 ${#header})
        echo -e "\n\e[39m$entries\e[39m";
    fi
done


