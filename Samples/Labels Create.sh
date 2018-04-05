<!--#!/bin/bash

echo "GitHub User:"
read USER

echo "Password:"
read -s PASS

echo "Repository:"
read REPO

curl --user "$USER:$PASS" --include --request POST --data '{"name":"Epic","color":"3E4B9E","description":"Complex story that encapsulate some issues as stories"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"in progress","color":"FFD700","description":"Work in progress"}' "https://api.github.com/repos/$USER/$REPO/labels"

curl --user "$USER:$PASS" --include --request POST --data '{"name":"group: analysis","color":"006B75","description":"Requirements gathering"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"group: code","color":"006B75","description":"Implementation"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"group: deploy","color":"006B75","description":"Setup and migration"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"group: design","color":"006B75","description":"Modeling"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"group: manual","color":"006B75","description":"Documentation and guides"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"group: project","color":"006B75","description":"Management"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"group: training","color":"006B75","description":"Learning"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"group: user","color":"006B75","description":"Assistance and communication"}' "https://api.github.com/repos/$USER/$REPO/labels"

curl --user "$USER:$PASS" --include --request POST --data '{"name":"item: application","color":"1D76DB","description":"Product and executable"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"item: data","color":"1D76DB","description":"Information"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"item: diagram","color":"1D76DB","description":"Representation"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"item: installer","color":"1D76DB","description":"Packager"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"item: other","color":"1D76DB","description":""}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"item: source","color":"1D76DB","description":"Code file"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"item: text","color":"1D76DB","description":"Writing"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"item: tool","color":"1D76DB","description":"Third party software"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"item: ui","color":"1D76DB","description":"User interface"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"item: ux","color":"1D76DB","description":"User experience"}' "https://api.github.com/repos/$USER/$REPO/labels"

curl --user "$USER:$PASS" --include --request POST --data '{"name":"prio: critical ","color":"900000","description":""}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"prio: high","color":"CA2525","description":""}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"prio: low","color":"BFDADC","description":""}' "https://api.github.com/repos/$USER/$REPO/labels"

curl --user "$USER:$PASS" --include --request POST --data '{"name":"state: 10%","color":"FFD700","description":"Work started"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"state: 25%","color":"FFD700","description":"A quartor of the tasks are done"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"state: 50%","color":"FFD700","description":"Half of the tasks are done"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"state: 75%","color":"FFD700","description":"Three quarters of the tasks are done"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"state: 90%","color":"FFD700","description":"Tasks are almost completed"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"state: 100%","color":"FFF3B5","description":"Tasks are finished"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"state: cancelled","color":"EAEAEA","description":"Abandoned"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"state: delayed","color":"CACACA","description":"Deferred"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"state: todo","color":"C2E0C6","description":"Selected"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"state: wontfix","color":"707070","description":"Failed"}' "https://api.github.com/repos/$USER/$REPO/labels"

curl --user "$USER:$PASS" --include --request POST --data '{"name":"type: admin","color":"0E8A16","description":"Supervision"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"type: bug","color":"0E8A16","description":"Error"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"type: feature","color":"0E8A16","description":"Functionality"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"type: feedback","color":"0E8A16","description":"Reaction"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"type: improve","color":"0E8A16","description":"Extend feature"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"type: layout","color":"0E8A16","description":"Organization and planning"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"type: legal","color":"0E8A16","description":"Licensing"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"type: method","color":"0E8A16","description":"Guideline"}' "https://api.github.com/repos/$USER/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"type: check","color":"0E8A16","description":"Test, revision and validation"}' "https://api.github.com/repos/$USER/$REPO/labels"

echo "Press any key to continue."
read -n 1 -s -r -p ""-->
