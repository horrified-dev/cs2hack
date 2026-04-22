#!/bin/bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "build: preparing web"
npm ci --prefix "$ROOT_DIR/web"

echo "build: building client"
"$ROOT_DIR/client/build.sh"
