#!/usr/bin/env bash
set -eo pipefail; [[ -n "$PLUSHU_TRACE" ]] && set -x

if [[ -n "$PLUSHU_APP_NAME" ]]; then
  app=$PLUSHU_APP_NAME
fi

if [[ -n "$2" ]]; then
  app=$2
  shift
fi

if [[ -z "$app" ]]; then
  echo "Missing app name" >&2
  exit 1
fi

app_dir=$PLUSHU_APPS_DIR/$app

if [[ -d "$app_dir/addons" ]]; then
  ls -1 "$app_dir/addons"
fi
