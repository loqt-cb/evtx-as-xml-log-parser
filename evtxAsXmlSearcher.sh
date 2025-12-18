
#!/bin/bash


if [ -z "$1" ]; then
	# if no file
	echo -e "\nXML Log Parser for .evtx files\nMade by loqt-cb on github\n\nUsage: \t evtxxml <file_path> <event_id>\nLeave event ID blank for default list of ids."
	echo -e "For a list of these default ids, use: evtxxml idlist\n"
	exit 
elif [ "$1" == "idlist" ]; then
	echo -e "Ids included: \n4688 4672 4720 4728 4732 \n4756 4625 4673 4674 1102"
elif [ -z "$2" ]; then
	# run main command
	cat $1 | grep -E "<EventID>4688</EventID>|<EventID>4672</EventID>|<EventID>4720</EventID>|<EventID>4728</EventID>|<EventID>4732</EventID>|<EventID>4756</EventID>|<EventID>4625</EventID>|<EventID>4673</EventID>|<EventID>4674</EventID>|<EventID>1102</EventID>" -A 22 -B 1 --color=always --group-separator "" |  less -R
else
	cat $1 | grep -E "<EventID>$2</EventID>" -A 22 -B 1 --color=always --group-separator "" | less -R
fi
