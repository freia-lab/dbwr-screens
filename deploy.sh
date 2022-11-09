#!/bin/bash

rsync -e ssh -av \
    --exclude=deploy.sh* \
    --exclude=.git* \
    --exclude=*~ \
    --exclude=README.md \
    . konrad@freia.physics.uu.se:/var/www/CSS/dbwrDir
