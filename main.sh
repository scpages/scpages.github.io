#!/bin/bash
set -e
SITE="$(dirname "$0")/docs"
REPOS="$(dirname "$0")/.."

echo "Copying generated pages into site..."

# component-list
if [ -f "$REPOS/compoment_list/index.html" ]; then
  cp "$REPOS/compoment_list/index.html" "$SITE/component-list/index.html"
  echo "  ✓ component-list"
fi

# default-loadouts
if [ -f "$REPOS/default_loadout/index.html" ]; then
  cp "$REPOS/default_loadout/index.html" "$SITE/default-loadouts/index.html"
  echo "  ✓ default-loadouts"
fi

# trading
if [ -f "$REPOS/trading/index.html" ]; then
  cp "$REPOS/trading/index.html" "$SITE/trading/index.html"
  echo "  ✓ trading"
fi

# ship-prices
if [ -f "$REPOS/ship_prices/index.html" ]; then
  cp "$REPOS/ship_prices/index.html" "$SITE/ship-prices/index.html"
  echo "  ✓ ship-prices"
fi

echo "Done."
