
#!/bin/bash


if [ -z "$1" ]; then
	# if no file
	echo -e "\nXML Log Parser for .evtx files \n Usage: evtxxml  <file_path>\n"
	exit 
else
	# run main command
	cat $1 | grep -E "<EventID>4688</EventID>|<EventID>4672</EventID>|<EventID>4720</EventID>|<EventID>4728</EventID>|<EventID>4732</EventID>|<EventID>4756</EventID>|<EventID>4625</EventID>|<EventID>4673</EventID>|<EventID>4674</EventID>|<EventID>1102</EventID>" -A 22 -B 1 --color=always --group-separator "" |  less -R
fi
