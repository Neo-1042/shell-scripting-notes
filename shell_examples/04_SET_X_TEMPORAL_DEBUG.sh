#!/bin/bash
# Turn DEBUG mode ON only for a portion of the script

TEST_VAR="test"

set -x # Enable DEBUGGING
echo "${TEST_VAR}"
set +x # Disable DEBUGGING
hostname # No debugging

echo "END"
