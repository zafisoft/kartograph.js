#!/bin/sh

#
# builds all coffee script sources
# to one single minified js file
#
cat src/core.coffee > tmp
cat src/core/*.coffee >> tmp
cat src/modules/*.coffee >> tmp
cat src/modules/symbols/*.coffee >> tmp
cat tmp | coffee -sp > kartograph.js
uglifyjs kartograph.js > kartograph.min.js
mv kartograph*.js dist
echo "build complete"
