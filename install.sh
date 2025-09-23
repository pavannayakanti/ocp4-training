#!/bin/bash
set -e

echo ">>> Installing ROSA CLI..."

# Download and install rosa binary
curl -s -L -o /tmp/rosa.tar.gz https://mirror.openshift.com/pub/openshift-v4/clients/rosa/latest/rosa-linux.tar.gz
tar -xvzf /tmp/rosa.tar.gz -C /tmp >/dev/null
mkdir -p $HOME/bin
mv /tmp/rosa $HOME/bin/
echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
export PATH=$HOME/bin:$PATH

# Verify installation
if ! command -v rosa >/dev/null 2>&1; then
  echo "E: ROSA CLI install failed."
  exit 1
fi
echo ">>> ROSA CLI installed: $(rosa version)"

# Prompt for token
read -sp "Enter your ROSA API token (from https://console.redhat.com/openshift/token): " ROSA_TOKEN
echo ""

if [ -z "$ROSA_TOKEN" ]; then
  echo "E: No token provided. Exiting."
  exit 1
fi

# Login to OCM
echo ">>> Logging in to ROSA..."
rosa login --token="$ROSA_TOKEN"

echo ">>> Setup complete! You can now run 'rosa list clusters'"
