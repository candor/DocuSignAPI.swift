#!/bin/bash

if [ -z "$CUSTOM_GENERATOR" ]; then
    CUSTOM_GENERATOR='openapi-generator'
    if ! command -v "$CUSTOM_GENERATOR" &> /dev/null; then
        echo "Please install openapi-generator"
        exit 1
    fi
fi

if command -v swiftformat &> /dev/null; then
    export SWIFT_POST_PROCESS_FILE='/usr/local/bin/swiftformat --disable enumNamespaces'
else
    echo "swiftformat is not installed, generated code won't be formated"
fi

$CUSTOM_GENERATOR generate -i esignature.rest.swagger-v2.1.json -g swift5 -o . --skip-validate-spec -c config.yml --library vapor "$@"
