#!/bin/sh

version=`node -pe 'require("./package.json").version'`
json_new=`node -pe 'JSON.stringify(Object.assign(require("./src/html/data/data.json"), {"stat_version": "'${version}'"}))'`

ejs-cli -b src/html/page '**/*.ejs' -o dist -O ${json_new}
