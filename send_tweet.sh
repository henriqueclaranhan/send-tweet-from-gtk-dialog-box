#!/bin/bash

USER_TWEET=$(yad --center --title="Fazer Tweet" 			\
	--width=500\
	--form\
    --borders=10\
    --image ./src/twitter.png\
    --field="Faça um tweet:":TXT\
    --button="Cancelar":1\
    --button="Tweetar":0\
);

echo $USER_TWEET

if [ "$(echo $USER_TWEET | cut -d'|' -f1)" != '' ]
then
	tt=$(echo $USER_TWEET | cut -d'|' -f1)
    python3 tweet.py "$tt"
fi
