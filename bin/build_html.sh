#!/bin/sh

version=`node -pe 'require("./package.json").version'`

echo {"stat_version": "${version}"}

RESULT_JSON='src/html/data/data2.json'

cat src/html/data/data.json | jq '.jobanalyses[0] |= .+ {"stat_version": "${version}"}' \
> ${RESULT_JSON} && cat ${RESULT_JSON}

ejs-cli -b src/html/page '**/*.ejs' -o dist -O src/html/data/data2.json
