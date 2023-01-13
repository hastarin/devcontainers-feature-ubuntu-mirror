#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "netselect-apt" netselect-apt --help
check "sources.list updated" grep ".ca" /etc/apt/sources.list
check "mirror.txt exists" cat /tmp/mirror.txt

# Report result
reportResults