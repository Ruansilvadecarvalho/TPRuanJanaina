#!/bin/bash
git config --unset --global user.email
git config --unset --global user.name
git config --local user.email "$1"
git config --local user.name "$2"
git config --global push.default simple
git add .
git commit -m "$3"
git pull
git push

