#!/bin/bash

HEADER_TPL=$(cat <<EOF
{
  "version": "2.1.0",
  "\$schema": "https://schemastore.azurewebsites.net/schemas/json/sarif-2.1.0-rtm.5.json",
  "runs": [
    {
      "tool": {
        "driver": {
          "name": "Brakeman",
          "informationUri": "https://brakemanscanner.org",
          "semanticVersion": "5.0.0.pre1",
          "rules": [
            {
              "id": "BRAKE0116",
              "name": "CSRFTokenForgeryCVE/Cross-Site Request Forgery",
              "fullDescription": {
                "text": "Checks for versions with CSRF token forgery vulnerability (CVE-2020-8166)."
              },
              "helpUri": "https://groups.google.com/g/rubyonrails-security/c/NOjKiGeXUgw",
              "help": {
                "text": "More info: https://groups.google.com/g/rubyonrails-security/c/NOjKiGeXUgw.",
                "markdown": "[More info](https://groups.google.com/g/rubyonrails-security/c/NOjKiGeXUgw)."
              },
              "properties": {
                "tags": [
                  "CSRFTokenForgeryCVE"
                ]
              }
            },
            {
              "id": "BRAKE0025",
              "name": "Deserialize/Remote Code Execution",
              "fullDescription": {
                "text": "Checks for unsafe deserialization of objects."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/unsafe_deserialization",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/unsafe_deserialization.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/unsafe_deserialization)."
              },
              "properties": {
                "tags": [
                  "Deserialize"
                ]
              }
            },
            {
              "id": "BRAKE0014",
              "name": "Execute/Command Injection",
              "fullDescription": {
                "text": "Finds instances of possible command injection."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/command_injection/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/command_injection/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/command_injection/)."
              },
              "properties": {
                "tags": [
                  "Execute"
                ]
              }
            },
            {
              "id": "BRAKE0114",
              "name": "JSONEntityEscape/Cross-Site Scripting",
              "fullDescription": {
                "text": "Check if HTML escaping is disabled for JSON output."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/cross-site_scripting/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/cross-site_scripting/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/cross-site_scripting/)."
              },
              "properties": {
                "tags": [
                  "JSONEntityEscape"
                ]
              }
            },
            {
              "id": "BRAKE0070",
              "name": "MassAssignment/Mass Assignment",
              "fullDescription": {
                "text": "Finds instances of mass assignment."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/mass_assignment/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/mass_assignment/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/mass_assignment/)."
              },
              "properties": {
                "tags": [
                  "MassAssignment"
                ]
              }
            },
            {
              "id": "BRAKE0105",
              "name": "PermitAttributes/Mass Assignment",
              "fullDescription": {
                "text": "Warn on potentially dangerous attributes allowed via permit."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/mass_assignment/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/mass_assignment/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/mass_assignment/)."
              },
              "properties": {
                "tags": [
                  "PermitAttributes"
                ]
              }
            },
            {
              "id": "BRAKE0023",
              "name": "Send/Dangerous Send",
              "fullDescription": {
                "text": "Check for unsafe use of Object#send."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/dangerous_send/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/dangerous_send/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/dangerous_send/)."
              },
              "properties": {
                "tags": [
                  "Send"
                ]
              }
            },
            {
              "id": "BRAKE0016",
              "name": "SendFile/File Access",
              "fullDescription": {
                "text": "Check for user input in uses of send_file."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/file_access/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/file_access/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/file_access/)."
              },
              "properties": {
                "tags": [
                  "SendFile"
                ]
              }
            },
            {
              "id": "BRAKE0026",
              "name": "SessionSettings/Session Setting",
              "fullDescription": {
                "text": "Checks for session key length and http_only settings."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/session_setting/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/session_setting/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/session_setting/)."
              },
              "properties": {
                "tags": [
                  "SessionSettings"
                ]
              }
            },
            {
              "id": "BRAKE0029",
              "name": "SessionSettings/Session Setting",
              "fullDescription": {
                "text": "Checks for session key length and http_only settings."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/session_setting/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/session_setting/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/session_setting/)."
              },
              "properties": {
                "tags": [
                  "SessionSettings"
                ]
              }
            },
            {
              "id": "BRAKE0000",
              "name": "SQL/SQL Injection",
              "fullDescription": {
                "text": "Check for SQL injection."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/sql_injection/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/sql_injection/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/sql_injection/)."
              },
              "properties": {
                "tags": [
                  "SQL"
                ]
              }
            },
            {
              "id": "BRAKE0024",
              "name": "UnsafeReflection/Remote Code Execution",
              "fullDescription": {
                "text": "Checks for unsafe reflection."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/remote_code_execution/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/remote_code_execution/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/remote_code_execution/)."
              },
              "properties": {
                "tags": [
                  "UnsafeReflection"
                ]
              }
            },
            {
              "id": "BRAKE0002",
              "name": "CrossSiteScripting/Cross-Site Scripting",
              "fullDescription": {
                "text": "Checks for unescaped output in views."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/cross-site_scripting/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/cross-site_scripting/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/cross-site_scripting/)."
              },
              "properties": {
                "tags": [
                  "CrossSiteScripting"
                ]
              }
            },
            {
              "id": "BRAKE0030",
              "name": "ValidationRegex/Format Validation",
              "fullDescription": {
                "text": "Report uses of validates_format_of with improper anchors."
              },
              "helpUri": "https://brakemanscanner.org/docs/warning_types/format_validation/",
              "help": {
                "text": "More info: https://brakemanscanner.org/docs/warning_types/format_validation/.",
                "markdown": "[More info](https://brakemanscanner.org/docs/warning_types/format_validation/)."
              },
              "properties": {
                "tags": [
                  "ValidationRegex"
                ]
              }
            }
          ]
        }
      },
EOF
)

add_result ()
{ # $1=index, $2=severity
  cat <<EOF
{
  "ruleId": "BRAKE0116",
  "ruleIndex": 0,
  "level": "${2}",
  "message": {
    "text": "Rails 6.0.0 has a vulnerability that may allow CSRF token forgery. Upgrade to Rails 6.0.3.1 or patch."
  },
  "locations": [
    {
      "physicalLocation": {
        "artifactLocation": {
          "uri": "tmp/Gemfile.${1}.lock",
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
}

FOOTER_TPL=$(cat <<EOF
    }
  ]
}
EOF
)

generate()
{ # $1=max, $2=severity (error|warning)
  rm -rf ./tmp
  mkdir -p ./tmp

  echo "${HEADER_TPL}" > generated.sarif

  for n in $(seq 1 ${1:-1000}); do
    cp Gemfile.lock "tmp/Gemfile.${n}.lock"
    add_result "${n}" "${2:-error}" >> generated.sarif
  done

  echo "${FOOTER_TPL}" >> generated.sarif
}

generate "${@}"
