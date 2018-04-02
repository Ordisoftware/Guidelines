#!/bin/bash

echo "GitHub User:"
read USER

echo "Password:"
read -s PASS

echo "Repository:"
read REPO

curl --user "$USER:$PASS" --include --request POST --data '{"title":"Learning","description":"Activities for training and technology intelligence."}' "https://api.github.com/repos/$USER/$REPO/milestones"
curl --user "$USER:$PASS" --include --request POST --data '{"title":"Inception","description":"Initialization of the project."}' "https://api.github.com/repos/$USER/$REPO/milestones"
curl --user "$USER:$PASS" --include --request POST --data '{"title":"Elaboration","description":"Analysis and high-level design."}' "https://api.github.com/repos/$USER/$REPO/milestones"
curl --user "$USER:$PASS" --include --request POST --data '{"title":"Construction","description":"Low-level design and implementation."}' "https://api.github.com/repos/$USER/$REPO/milestones"
curl --user "$USER:$PASS" --include --request POST --data '{"title":"Transition","description":"Quality testing and releasing."}' "https://api.github.com/repos/$USER/$REPO/milestones"

echo "Press any key to continue."
read -n 1 -s -r -p ""
