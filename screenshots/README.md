# Screenshots

Drop PNGs here. The site auto-falls-back to a placeholder if a file is missing.

Expected filenames (used on `index.html`):

- `dashboard.png` — hero preview below the CTA (full dashboard window, ~1440×900 2x)
- `menubar.png` — menu-bar popover expanded
- `dashboard-detail.png` — account detail view with the chart visible
- `widgets.png` — macOS desktop/Notification Center showing AI Stats widgets
- `add-account.png` — Add Account wizard screen
- `settings.png` — Settings window

Capture tips:
- 2x Retina (macOS default) — site images are served at CSS pixels so native 2x gives crispness.
- PNG, trimmed with modest padding. No transparent drop-shadows (the site wraps them in a card).
- ~1600–2000px wide is plenty; PNGs compress well.

No build step — push to `main`, GitHub Pages serves immediately.
