---
title: Icônes ARGVUS
description: Thèmes d'icônes et leurs manifestations officielles pour le bureau ARGVUS
---
# Icônes ARGVUS

`argvus-icons` installe les thèmes d'icônes ARGVUS sous `/usr/share/icons`. Les thèmes héritent des thèmes système Adwaita et hicolor, donc les applications qui ne fournissent pas une icône ARGVUS utilisent par défaut Adwaita.

## Thèmes installés

| Thème | Répertoire | Rôle |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | Thème par défaut. Hérite des variantes sombre et claire. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Variante pour surfaces sombres. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Variante pour surfaces claires. |

Chaque thème contient un fichier `index.theme`. La valeur `Name=` de ce fichier est le nom utilisé par GNOME, GTK et Qt pour sélectionner le thème.

Les variantes sombre et claire ne contiennent pas encore leurs propres fichiers d'icônes, elles utilisent donc actuellement les icônes Adwaita via l'héritage.

## Manifests officiels

Chaque thème a un manifeste sous `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml` :

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- `id` est le nom du répertoire du manifeste et l'identifiant stable.
- `name` doit être égal à la valeur `Name=` dans le `index.theme` installé.
- `variant` est `default`, `dark` ou `light`.
- `official = true` marque le thème comme un thème ARGVUS pour les outils de bureau.

Les manifestes sont uniquement des métadonnées. Ils ne modifient pas les fichiers de thème et n'écrivent aucune configuration utilisateur.

## Sélection du thème d'icônes

Le thème d'icônes actif est la clé `appearance.icon_theme` dans `config.json`. Une valeur vide sélectionne `Argvus Dark Icons` pour les thèmes sombres et `Argvus Light Icons` pour les thèmes clairs. `argvus-appearance` applique le thème configuré aux paramètres GNOME, à GTK 3 et GTK 4, et à Qt (`qt6ct`). Si le thème configuré n'est pas installé, il revient au mode par défaut correspondant.

## Installation

Installer avec le paquet ARGVUS ou seul :

```bash
pacman -S argvus-icons
```
## Contribution

Pour contribuer des icônes ou signaler des problèmes, utilisez le dépôt ARGVUS Icons sur GitHub.
