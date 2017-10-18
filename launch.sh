dir=/home/myhubot/bin/hubot

if [ -e $dir ]; then
    echo "$dir found."
else
    echo "$dir NOT found."
    yo hubot --owner=$OWNER --name=$BOTNAME --description=$DESCRIPTION --adapter=slack
fi

# start up
~/bin/hubot --adapter slack
