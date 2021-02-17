#!/bin/shell

echo "start build step"

jekyll new ../temp-build-dir

cp * ../temp-build-dir/_posts

ls ../temp-build-dir/_posts

echo "end build step"