#!/usr/bin/env bash
set -ex

# Test homepage
[[ "$(curl -sS "http://localhost:8898/" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]

# Test example site
[[ "$(curl -sS "http://localhost:8898/s/default/page/homepage" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]

# Crowdsourcing editor
[[ "$(curl -sS "http://localhost:8898/crowdsourcing-editor" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]

# Tasks API
[[ "$(curl -sS "http://localhost:8898/api/tasks" --output /dev/null --write-out '%{http_code}' 2>&1)" == "400" ]]

# Sorting room
[[ "$(curl -sS "http://localhost:8898/sorting-room/login.html" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]
