#!/bin/bash

rsync -e ssh -av \
    --exclude=deploy.sh* \
    --exclude=.git* \
    --exclude=*~ \
    --exclude=freia-symbols \
    --exclude=README.md \
    . konrad@freia.physics.uu.se:/var/www/CSS/dbwrDir

rsync -e ssh -av \
    --exclude=install.sh* \
    --exclude=.git* \
    --exclude=*~ \
    --exclude=README.md \
    freia-symbols/ konrad@freia.physics.uu.se:/var/www/CSS/dbwrDir/freia-symbols
