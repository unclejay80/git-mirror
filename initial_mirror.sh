#!/bin/sh
git clone --mirror $1 checkout
cd checkout
git remote add mirror $2
git push --all mirror
