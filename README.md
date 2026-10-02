# Star Citizen Hub

A hub of tools and resources for Star Citizen players, hosted on GitHub Pages.

Live at: **https://scpages.github.io**

## Integrated Tools

| Tool | Repo | Description |
|---|---|---|
| Default Ship Components | [scpages/default_loadout](https://github.com/scpages/default_loadout) | Default loadouts for all ships |
| Commodity Trading | [scpages/trading](https://github.com/scpages/trading) | Trading routes & commodity prices |
| Ship Component List | [scpages/compoment_list](https://github.com/scpages/compoment_list) | Components with class, grade, size & buy prices |
| Ship Prices | [scpages/ship_prices](https://github.com/scpages/ship_prices) | Pledge, in-game buy & rental prices |
| Mining Data | *(this repo)* | Ore locations & spawn percentages across Stanton, Pyro, Nyx — filterable by system, mining method (Ship / Ground / FPS), with By Location and By Ore views |
| Vehicle Fits | *(this repo)* | Which ground vehicles fit in which ships — By Ship and By Vehicle views with comfortable/tight/no status |

## Workflow

Each sub-repo generates its own `index.html`. The main site copies them into `docs/`:

```bash
bash main.sh
```

This copies `index.html` from each sub-repo into the matching `docs/` subfolder, then commit and push to deploy.

The `mining/` page is maintained directly in this repo.

## Structure

```
docs/
├── index.html              # Main hub page
├── component-list/         # Ship Component List
├── default-loadouts/       # Default Ship Components
├── mining/                 # Mining Data (static, maintained here)
├── ship-prices/            # Ship Prices
├── trading/                # Commodity Trading
└── vehicle-fits/           # Vehicle Fits (static, maintained here)
```

## Related Repositories

- [scpages/compoment_list](https://github.com/scpages/compoment_list)
- [scpages/default_loadout](https://github.com/scpages/default_loadout)
- [scpages/mining_overlay](https://github.com/scpages/mining_overlay)
- [scpages/ship_prices](https://github.com/scpages/ship_prices)
- [scpages/trading](https://github.com/scpages/trading)
- [scpages/trading_data](https://github.com/scpages/trading_data)
