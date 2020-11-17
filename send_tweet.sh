#!/bin/bash

USER_TWEET=$(yad --center\
    --on-top\
    --title="Fazer Tweet"\
    --width=500\
    --form\
    --borders=10\
    --image ./src/twitter.png\
    --field="<span><b>Selecionar imagens: </b></span>":FL --file-filter "Imagens | *.jpg *.png"\
    --field="<span><b>Faça um tweet:</b></span>":TXT\
    --button="Cancelar":1\
    --button="Tweetar":0\
);

if [[ "$(echo $USER_TWEET | cut -d'|' -f1)" != '' ||  "$(echo $USER_TWEET | cut -d'|' -f2)" != '' ]]
then
    
    img=$( [ "$(echo $USER_TWEET | cut -d'|' -f1)" != '' ] && echo "$(echo $USER_TWEET | cut -d'|' -f1)" || echo "null" ) 

    tt=$( [ "$(echo $USER_TWEET | cut -d'|' -f2)" != '' ] && echo "$(echo $USER_TWEET | cut -d'|' -f2)" || echo "null" )

    python3 tweet.py "$img" "$tt"

fi
