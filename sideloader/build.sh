#!/bin/bash

cp -a $REPO ./build/$NAME

${PIP} install -r $REPO/demoapp/requirements.txt

