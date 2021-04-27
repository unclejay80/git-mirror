#!/bin/sh
cd /git-mirror/checkout
git fetch --all
git fetch --tags
git push --mirror mirror
git push --tags mirror
