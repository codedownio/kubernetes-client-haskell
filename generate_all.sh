#!/usr/bin/env bash


GEN_REPO="$1"


export KUBERNETES_VERSION="1.20"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings

export KUBERNETES_VERSION="1.21"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings

export KUBERNETES_VERSION="1.22"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings

export KUBERNETES_VERSION="1.23"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings

export KUBERNETES_VERSION="1.24"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings

export KUBERNETES_VERSION="1.25"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings

export KUBERNETES_VERSION="1.26"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings

export KUBERNETES_VERSION="1.27"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings

export KUBERNETES_VERSION="1.28"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings

export KUBERNETES_VERSION="1.29"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings

export KUBERNETES_VERSION="1.30"
"${GEN_REPO}/openapi/haskell.sh" "kubernetes-${KUBERNETES_VERSION}" settings
