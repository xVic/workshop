#!/bin/bash
## DO NOT USE
## OR RATHER READ IT AND THEN USE
## ONLY WORKS FROM THE DOCS DIR
## WILL PUBLISH STUFF ON THE WEBSITE, DON'T SCREW UP
export old=`pwd`
#build doc
mvn clean generate-resources
#publish doc
cd /tmp
rm -fR /tmp/Red-Hat-Developer-Games.github.io
git clone git@github.com:Red-Hat-Developer-Games/Red-Hat-Developer-Games.github.io.git
cd $old
#rm -fR /tmp/bbvahackathon.github.io
rsync -avz ./target/generated-asciidoc/ /tmp/Red-Hat-Developer-Games.github.io
cp /tmp/Red-Hat-Developer-Games.github.io/spine.html /tmp/Red-Hat-Developer-Games.github.io/index.html
cd /tmp/Red-Hat-Developer-Games.github.io
git add .
git commit -m "update docs for Quarkus workshop"
git push origin -u main
cd $old
