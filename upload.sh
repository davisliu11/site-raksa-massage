#!/bin/bash

git add .
git commit -a -m "Update"
git push

aws s3 sync . s3://raksa-massage/ --exclude "*.git/*"

