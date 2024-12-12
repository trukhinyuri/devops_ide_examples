#!/usr/bin/env bash
curl -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  https://api.github.com/repos/myorg/myrepo/actions/workflows/main.yml/dispatches \
  -d '{"ref":"main"}'