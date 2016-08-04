#!/bin/bash
# Slack incoming web-hook URL and user name
url='https://hooks.slack.com/services/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'
username='OrangePI'
# Username or channel
to="#orangepi"
message="$1"
# Build JSON
payload="payload={\"channel\": \"${to//\"/\\\"}\", \"username\": \"${username//\"/\\\"}\", \"text\": \"${message//\"/\\\"}\"}"
curl -m 5 --data-urlencode "${payload}" $url -A 'slack-script'
