#!/usr/bin/env bash
set -euo pipefail

MULLVAD="/usr/bin/mullvad"

status="$($MULLVAD status 2>/dev/null || true)"

if grep -q "Connected" <<<"$status"; then
  echo '{"text":" VPN","class":"connected"}'
elif grep -q "Disconnected" <<<"$status"; then
  echo '{"text":" VPN","class":"disconnected"}'
else
  echo '{"text":" VPN","class":"unknown"}'
fi

