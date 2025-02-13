#!/usr/bin/env bash

set -euo pipefail
set -x

compute-file-server-cli  local --toml fastly.toml --name "polyfill-library" -- "./polyfill-libraries/"

# c-at-e-file-server upload --token "$(fastly profile token --quiet polyfill)" --name "polyfill-library" -- "./polyfill-libraries/"
