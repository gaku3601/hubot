dir=/home/myhubot/bin/hubot

if [ -e $dir ]; then
    echo "$dir found."
else
    echo "$dir NOT found."
    yo hubot --owner=$OWNER --name=$BOTNAME --description=$DESCRIPTION --adapter=slack

    # install nead package 
    # scraping package
    npm install --save request cheerio
fi

# start up
~/bin/hubot --adapter slack
