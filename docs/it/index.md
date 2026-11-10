---
title: Icone ARGVUS
description: Temi delle icone e i loro manifesti ufficiali per il desktop ARGVUS
---

# Icone ARGVUS

`argvus-icons` installa i temi delle icone ARGVUS sotto `/usr/share/icons`. I temi ereditano i temi di sistema Adwaita e hicolor, quindi le applicazioni che non includono un'icona ARGVUS ricorrono a Adwaita.

## Temi installati

| Tema | Directory | Ruolo |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | Tema predefinito. Eredita le varianti scura e chiara. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Variante per superfici scure. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Variante per superfici chiare. |

Ogni tema include un file `index.theme`. Il valore `Name=` di quel file è il nome che GNOME, GTK e Qt usano per selezionare il tema.

Le varianti scura e chiara non includono ancora file di icone propri, quindi attualmente risolvono alle icone di Adwaita tramite ereditarietà.

## Manifest ufficiali

Ogni tema ha un manifesto sotto `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml`:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```
- `id` è il nome della directory del manifesto e l'identificatore stabile.
- `name` deve essere uguale al valore `Name=` nel `index.theme` installato.
- `variant` è `default`, `dark` o `light`.
- `official = true` contrassegna il tema come un tema ARGVUS per gli strumenti desktop.

I manifesti contengono solo metadati. Non modificano i file del tema e non scrivono alcuna configurazione utente.

## Selezione del tema delle icone

Il tema delle icone attivo è la chiave `appearance.icon_theme` in `config.json`. Un valore vuoto seleziona `Argvus Dark Icons` per i temi scuri e `Argvus Light Icons` per i temi chiari. `argvus-appearance` applica il tema configurato alle impostazioni di GNOME, GTK 3 e GTK 4, e Qt (`qt6ct`). Se il tema configurato non è installato, viene utilizzato il tema predefinito dello stesso tipo.

## Installazione

Installa con il pacchetto ARGVUS o da solo:

```bash
pacman -S argvus-icons
```
## Contributi

Per contribuire con icone o segnalare problemi, utilizza il repository ARGVUS Icons su GitHub.
