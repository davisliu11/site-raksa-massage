#!/bin/bash

git add .
git commit -a -m "Update"
git push

aws --profile davis s3 sync . s3://raksa-massage/ --exclude "*.git/*"

