---
title: Iconos ARGVUS
description: Temas de iconos y sus manifiestos oficiales para el escritorio ARGVUS
---

# Iconos ARGVUS

`argvus-icons` instala los temas de iconos ARGVUS bajo `/usr/share/icons`. Los temas heredan los temas del sistema Adwaita y hicolor, por lo que las aplicaciones que no incluyen un icono ARGVUS recurren a Adwaita.

## Temas instalados

| Tema | Directorio | Rol |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | Tema predeterminado. Hereda las variantes oscuras y claras. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Variante para superficies oscuras. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Variante para superficies claras. |

Cada tema incluye un archivo `index.theme`. El valor `Name=` de ese archivo es el nombre que GNOME, GTK y Qt utilizan para seleccionar el tema.

Las variantes oscuras y claras aún no incluyen archivos de iconos propios, por lo que actualmente se resuelven a los iconos de Adwaita mediante herencia.

## Manifiestos oficiales

Cada tema tiene un manifiesto bajo `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml`:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- `id` es el nombre del directorio del manifiesto y el identificador estable.
- `name` debe ser igual al valor de `Name=` en el `index.theme` instalado.
- `variant` es `default`, `dark` o `light`.
- `official = true` marca el tema como un tema ARGVUS para las herramientas de escritorio.

Los manifiestos son solo metadatos. No cambian los archivos del tema y no escriben ninguna configuración del usuario.

## Selección del tema de iconos

El tema de iconos activo es la clave `appearance.icon_theme` en `config.json`. Un valor vacío selecciona `Argvus Dark Icons` para temas oscuros y `Argvus Light Icons` para temas claros. `argvus-appearance` aplica el tema configurado a la configuración de GNOME, GTK 3 y GTK 4, y Qt (`qt6ct`). Si el tema configurado no está instalado, vuelve al valor predeterminado del mismo modo.

## Instalación

Instale con el paquete ARGVUS o por sí solo:

```bash
pacman -S argvus-icons
```
## Contribuyendo

Para contribuir con íconos o reportar problemas, utiliza el repositorio ARGVUS Icons en GitHub.
