---
title: ARGVUS Icons
description: Icon themes and their official manifests for the ARGVUS desktop
---

# ARGVUS Icons

`argvus-icons` installs the ARGVUS icon themes under `/usr/share/icons`. The themes inherit the system Adwaita and hicolor themes, so applications that do not ship an ARGVUS icon fall back to Adwaita.

## Installed themes

| Theme | Directory | Role |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | Default theme. Inherits the dark and light variants. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Variant for dark surfaces. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Variant for light surfaces. |

Each theme ships an `index.theme` file. The `Name=` value of that file is the name GNOME, GTK and Qt use to select the theme.

The dark and light variants do not ship icon files of their own yet, so they currently resolve to Adwaita icons through inheritance.

## Official manifests

Each theme has a manifest under `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml`:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- `id` is the manifest directory name and the stable identifier.
- `name` must equal the `Name=` value in the installed `index.theme`.
- `variant` is `default`, `dark` or `light`.
- `official = true` marks the theme as an ARGVUS theme for the desktop tooling.

The manifests are metadata only. They do not change the theme files and do not write any user configuration.

## Selecting the icon theme

The active icon theme is the `appearance.icon_theme` key in `config.json`. An empty value selects `Argvus Icons`. `argvus-appearance` applies the configured theme to GNOME settings, GTK 3 and GTK 4, and Qt (`qt6ct`). If the configured theme is not installed, it falls back to `Argvus Icons`.

## Installation

Install with the ARGVUS package or on its own:

```bash
pacman -S argvus-icons
```

## Contributing

To contribute icons or report issues, use the ARGVUS Icons repository on GitHub.
