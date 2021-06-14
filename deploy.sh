#!/usr/bin/env bash

DIR=deploy

if [ -d "$DIR" ]; then rm -Rf $DIR; fi

mkdir $DIR
cp -r .ebextensions ./deploy/
cp -r .platform ./deploy/
cp -r ngrinder-agent-*.tar ./deploy/
cp -r Procfile ./deploy/
cd deploy
zip -r agent.zip .
mv agent.zip ../
