---
title: ARGVUS Symbole
description: Icon-Themen und ihre offiziellen Manifeste für den ARGVUS-Desktop
---
# ARGVUS Symbole

`argvus-icons` installiert die ARGVUS-Symbolthemen unter `/usr/share/icons`. Die Themen übernehmen die Systemthemen Adwaita und hicolor, sodass Anwendungen, die kein ARGVUS-Symbol enthalten, auf Adwaita zurückgreifen.

## Installierte Themen

| Thema | Verzeichnis | Rolle |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | Standardthema. Übernimmt die dunklen und hellen Varianten. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Variante für dunkle Oberflächen. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Variante für helle Oberflächen. |

Jedes Thema enthält eine `index.theme`-Datei. Der `Name=`-Wert dieser Datei ist der Name, den GNOME, GTK und Qt verwenden, um das Thema auszuwählen.

Die dunklen und hellen Varianten enthalten noch keine eigenen Symboldateien, daher greifen sie derzeit über die Vererbung auf die Adwaita-Symbole zurück.

## Offizielle Manifeste

Jedes Theme hat ein Manifest unter `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml`:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```
- `id` ist der Manifest-Verzeichnisname und der stabile Bezeichner.
- `name` muss dem Wert von `Name=` im installierten `index.theme` entsprechen.
- `variant` ist `default`, `dark` oder `light`.
- `official = true` kennzeichnet das Thema als ARGVUS-Thema für die Desktop-Tools.

Die Manifeste sind nur Metadaten. Sie ändern die Themendateien nicht und schreiben keine Benutzerkonfiguration.

## Auswahl des Symbolthemas

Das aktive Symbolthema ist der `appearance.icon_theme`-Schlüssel in `config.json`. Ein leerer Wert wählt `Argvus Dark Icons` für dunkle Themen und `Argvus Light Icons` für helle Themen. `argvus-appearance` wendet das konfigurierte Thema auf die GNOME-Einstellungen, GTK 3 und GTK 4 und Qt (`qt6ct`) an. Wenn das konfigurierte Thema nicht installiert ist, fällt es auf den Standardmodus zurück.

## Installation

Installation mit dem ARGVUS-Paket oder alleine:

```bash
pacman -S argvus-icons
```
## Mitwirken

Um Icons beizutragen oder Probleme zu melden, verwenden Sie das ARGVUS Icons-Repository auf GitHub.
