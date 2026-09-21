# Star Citizen Hub

A hub of tools and resources for Star Citizen players, hosted on GitHub Pages.

Live at: **https://scpages.github.io**

## Integrated Tools

| Tool | Repo | Description |
|---|---|---|
| Default Ship Components | [scpages/default_loadout](https://github.com/scpages/default_loadout) | Default loadouts for all ships |
| Cargo Trading | [scpages/trading](https://github.com/scpages/trading) | Trading routes & commodity prices |
| Ship Component List | [scpages/compoment_list](https://github.com/scpages/compoment_list) | Components with class, grade, size & buy prices |
| Ship Prices | [scpages/ship_prices](https://github.com/scpages/ship_prices) | Pledge, in-game buy & rental prices |

## Workflow

Each sub-repo generates its own `index.html`. The main site copies them into `docs/`:

```bash
bash main.sh
```

This copies `index.html` from each sub-repo into the matching `docs/` subfolder, then commit and push to deploy.

## Structure

```
docs/
├── index.html              # Main hub page
├── component-list/         # Ship Component List
├── default-loadouts/       # Default Ship Components
├── ship-prices/            # Ship Prices
└── trading/                # Cargo Trading
```

## Related Repositories

- [scpages/compoment_list](https://github.com/scpages/compoment_list)
- [scpages/default_loadout](https://github.com/scpages/default_loadout)
- [scpages/ship_prices](https://github.com/scpages/ship_prices)
- [scpages/trading](https://github.com/scpages/trading)
