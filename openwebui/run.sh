#!/usr/bin/with-contenv bash
set -e

# Retrieve parameters from environment variables (set by HA add-on options)
LLAMA_URL="${LLAMA_URL}"
CUSTOM_ARGS="${CUSTOM_ARGS}"

# Validate required parameter
if [ -z "$LLAMA_URL" ]; then
    echo "Error: LLAMA_URL is not provided. Please set it in the add-on configuration."
    exit 1
fi

echo "Starting OpenWebUI with the following configuration:"
echo "  LLAMA_URL: ${LLAMA_URL}"
echo "  CUSTOM_ARGS: ${CUSTOM_ARGS}"

# Run OpenWebUI.
# Adjust the following command to match OpenWebUI’s command line parameters.
exec openwebui --llama-url "${LLAMA_URL}" ${CUSTOM_ARGS}
