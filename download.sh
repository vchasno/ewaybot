#!/usr/bin/env bash

# Download and save the gunzip'ed CSV file at $EWAYURL, under the
# current working directory, under a filename composed of today's
# (UTC) date in ISO 8601 format, having a .csv extension.
#
# For instance, if today is July 8, 2018, the file is saved as
# 2018-07-08.csv. 

set -euo pipefail

path="$(date --utc --iso-8601).csv"

wget -O - "${EWAYURL}" | gunzip > "${path}"
