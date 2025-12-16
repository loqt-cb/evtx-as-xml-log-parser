
#!/bin/bash

FILE_PATH="$1"

if [ -z "$FILE_PATH" ]; then
	echo "XML Log Parser for .evtx files"
	echo "Usage: $0 <file_path>"
	exit l
fi

echo "Parsing XML file: $FILE_PATH"
echo ""
echo ""

cat $FILE_PATH | grep -E "<EventID>4688</EventID>|<EventID>4672</EventID>|<EventID>4720</EventID>|<EventID>4728</EventID>|<EventID>4732</EventID>|<EventID>4756</EventID>|<EventID>4625</EventID>|<EventID>4673</EventID>|<EventID>4674</EventID>|<EventID>1102</EventID>" -A 22 -B 1 --color=always --group-separator "
" |  less -R
