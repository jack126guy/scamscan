#!/bin/sh

set -e

if [ -n "$SCAMSCAN_API_ID" ] && [ -n "$SCAMSCAN_API_HASH" ]; then
	printf '{"api_id":"%s","api_hash":"%s"}' "$SCAMSCAN_API_ID" "$SCAMSCAN_API_HASH" > /app/config.json
fi

exec python /app/scan.py
