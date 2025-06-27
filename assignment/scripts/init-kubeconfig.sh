#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
echo "⎈  Pulling kubeconfig from Terraform…"
KUBECONFIG_CONTENT=$(terraform -chdir=infra/terraform output -raw kubeconfig)
mkdir -p ~/.kube
printf "%s" "$KUBECONFIG_CONTENT" > ~/.kube/config
chmod 600 ~/.kube/config
echo "✅  kubeconfig written (→ ~/.kube/config)"
kubectl get nodes
