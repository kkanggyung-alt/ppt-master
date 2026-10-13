#!/bin/bash
# Install ppt-master dependencies in remote (cloud) sessions only.
set -euo pipefail
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi
cd "${CLAUDE_PROJECT_DIR:-.}"
# --ignore-installed blinker: the Debian-packaged blinker cannot be uninstalled by pip.
pip install --quiet --ignore-installed blinker -r requirements.txt
