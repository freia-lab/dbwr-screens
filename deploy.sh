#!/bin/bash

chgrp -R adm *
chgrp -R adm freia-symbols/*
rsync -e ssh -av --delete \
    --exclude=deploy.sh* \
    --exclude=.git* \
    --exclude=*~ \
    --exclude=freia-symbols \
    --exclude=README.md \
    . $USER@freia.physics.uu.se:/var/www/CSS/dbwrDir

rsync -e ssh -av --delete \
    --exclude=install.sh* \
    --exclude=.git* \
    --exclude=*~ \
    --exclude=README.md \
    freia-symbols/ $USER@freia.physics.uu.se:/var/www/CSS/dbwrDir/freia-symbols
