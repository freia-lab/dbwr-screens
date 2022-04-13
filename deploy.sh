#!/bin/bash

rsync -e ssh -av \
    --exclude=deploy.sh* \
    --exclude=.git* \
    . konrad@freia.physics.uu.se:/var/www/CSS/dbwrDir
