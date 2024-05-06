#!/bin/sh

/tmp/yq -o json . $1 | jq -c '.. | objects | .containers[]? | (.livenessProbe, .readinessProbe, .startupProbe) | select(has("exec"))'
