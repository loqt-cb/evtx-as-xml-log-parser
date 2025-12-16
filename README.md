# evtx-as-xml-log-parser
A Shell script that takes in a .xml file that was taken from the output from parsing a .evtx file, and searches for malicious EventIDs while still showing critical information.


<h2> Installation (for Linux) </h2>
1. Make the directory for the script to be accessed from, or use `opt` (user's choice)
2. Download the script and place it in your directory of choice
3. Run `alias evtxxml='<your directory>/evtxAsXmlSearcher.sh'`
4. If you'd like to make your alias permanent, run place `<your directory>/evtxAsXmlSearcher.sh` into `~/.bashrc`
5. Run `chmod +x <your directory>/evtxAsXmlSearcher.sh`
