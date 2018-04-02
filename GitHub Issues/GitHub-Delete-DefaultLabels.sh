#!/bin/bash

echo "GitHub User:"
read USER

echo "Password:"
read -s PASS

echo "Repository:"
read REPO

curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/bug"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/duplicate"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/enhancement"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/good%20first%20issue"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/help%20wanted"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/invalid"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/question"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$USER/$REPO/labels/wontfix"

echo "Press any key to continue."
read -n 1 -s -r -p ""
