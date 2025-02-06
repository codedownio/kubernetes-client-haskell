#!/usr/bin/env bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPTDIR"

# The first argument to the generate script is the Kubernetes release to use.
# The second is the package version to place in ./kubernetes-<K8S version>/kubernetes-api.cabal.

MINOR_VERSION=0

nix run .#generate -- 1.20 1.20.${MINOR_VERSION}
nix run .#generate -- 1.21 1.21.${MINOR_VERSION}
nix run .#generate -- 1.22 1.22.${MINOR_VERSION}
nix run .#generate -- 1.23 1.23.${MINOR_VERSION}
nix run .#generate -- 1.24 1.24.${MINOR_VERSION}
nix run .#generate -- 1.25 1.25.${MINOR_VERSION}
nix run .#generate -- 1.26 1.26.${MINOR_VERSION}
nix run .#generate -- 1.27 1.27.${MINOR_VERSION}
nix run .#generate -- 1.28 1.28.${MINOR_VERSION}
nix run .#generate -- 1.29 1.29.${MINOR_VERSION}
nix run .#generate -- 1.30 1.30.${MINOR_VERSION}
