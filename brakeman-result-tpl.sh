#!/bin/bash
mkdir tmp
for x in `seq 1 1000`; do
  cp Gemfile.lock "tmp/Gemfile.${x}.lock"
  cat <<EOF
        {
          "ruleId": "BRAKE0116",
          "ruleIndex": 0,
          "level": "warning",
          "message": {
            "text": "Rails 6.0.0 has a vulnerability that may allow CSRF token forgery. Upgrade to Rails 6.0.3.1 or patch."
          },
          "locations": [
            {
              "physicalLocation": {
                "artifactLocation": {
                  "uri": "tmp/Gemfile.${x}.lock",
                  "uriBaseId": "%SRCROOT%"
                },
                "region": {
                  "startLine": 223
                }
              }
            }
          ]
        },
EOF
done

