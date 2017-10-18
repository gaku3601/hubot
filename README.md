[![Docker Automated buil](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/gaku3601/hubot/)
# Overview
This repository is storing Dockerfile that create hubot to be connected with slack.

# Usage
Please prepare docker-compose.yml that like The following code.
~~~
version: '3'

services:
    hubot:
        image: gaku3601/hubot:latest
        environment:
            - HUBOT_SLACK_TOKEN=xoxb-11111111-XXXXXXXXXXXXXXXXXXXXXXXXX # set slack token
            - OWNER=gaku pro.gaku@gmail.com # bot owner
            - BOTNAME=hey # botname
            - DESCRIPTION=testbot # description of create bot  
        volumes:
            - "./scripts:/home/myhubot/scripts"
~~~
[environment]  
HUBOT_SLACK_TOKEN,  
OWNER,  
BOTNAME,  
DESCRIPTION  
Please be sure to set these.  
  
And Please set volumes that for putting hubot scripts.  
  
Setting up to this point, Bot show up to your slack.  
When You command "ping" to your bot,bot willing reply "PONG".

# 概要
このリポジトリはslackと接続するhubotを作成するDockerfileを格納しています。  

# 使い方
以下のようなdocker-compose.ymlを用意してください。  
~~~
version: '3'

services:
    hubot:
        image: gaku3601/hubot:latest
        environment:
            - HUBOT_SLACK_TOKEN=xoxb-11111111-XXXXXXXXXXXXXXXXXXXXXXXXX # set slack token
            - OWNER=gaku pro.gaku@gmail.com # bot owner
            - BOTNAME=hey # botname
            - DESCRIPTION=testbot # description of create bot  
        volumes:
            - "./scripts:/home/myhubot/scripts"
~~~
[environment]  
HUBOT_SLACK_TOKEN,  
OWNER,  
BOTNAME,  
DESCRIPTION  
この環境変数は必ず設定する必要があります。  
HUBOT_SLACK_TOKENにはslackでhubot appと接続した際に得られるtokenを設定します。  
OWNER,BOTNAME,DESCRIPTIONはhubotでbotを作成する際に必要となる情報となります。  
  
あと、volumesを指定し、scriptをローカルで開発できるように設定しくことで、開発がスムーズになります。  
  
これで設定は完了です。  
slack画面にボットが出現していると思うので、"ping"と入力してみてください。  
あなたのボットは従順に"PONG"と返してくれることでしょう。  
  
良きBOT lifeを✨

