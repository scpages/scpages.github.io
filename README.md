# Star Citizen Hub - GitHub Pages

A comprehensive hub of useful tools and resources for Star Citizen players.

🌐 **Live Site:** https://scpages.github.io

## Features

### 📦 Integrated Tools
- **Default Ship Components** - Database of default ship loadouts (auto-updated daily)
- **Cargo Trading** - Trading routes and commodity prices (auto-updated every 15 minutes)

### 🔗 Community Tools
Curated collection of 29 community tools with favicon logos organized by category:
- Cargo Trading
- Ship Loadouts & Information
- Ship Visualizations
- Contested Zones
- Mining & Resources
- Crafting & Manufacturing
- Ship Management
- Reference & Guides
- And more...

Each community tool displays its website favicon and domain name for easy recognition.

## Automated Workflows

### Default Ship Components
- **Frequency:** Daily at 12:07 UTC
- **Source:** [scpages/default_loadout](https://github.com/scpages/default_loadout)
- **Data:** Fetches from erkul.games API
- **Output:** `docs/default-loadouts/index.html`

### Trading Data
- **Frequency:** Every 15 minutes
- **Source:** sctrading.dodoslav.eu
- **Method:** Downloads HTML via CURL
- **Output:** `docs/trading/index.html`
- **Safety:** Keeps old data if fetch fails

## Structure

```
docs/
├── index.html              # Main hub page
├── default.css             # Styling
├── default-loadouts/       # Ship components (auto-generated)
│   └── index.html
└── trading/                # Trading data (auto-fetched)
    ├── index.html
    ├── default.css
    └── favicon.ico
```

## Technologies

- **GitHub Pages** - Static site hosting
- **GitHub Actions** - Automated workflows
- **Node.js 24** - Script execution for generators

## Related Repositories

- [scpages/default_loadout](https://github.com/scpages/default_loadout) - Ship loadout generator
- [dodoslavn/StarCitizen_Trading](https://github.com/dodoslavn/StarCitizen_Trading) - Trading website source

## Contributing

Feel free to suggest additional tools or report issues!

## License

See [LICENSE](LICENSE) for details.

---

Built for the Star Citizen community 🚀
