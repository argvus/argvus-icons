---
title: ARGVUS Icons
description: ARGVUS masaüstü
---

# ARGVUS İkonları

`argvus-icons` için ikon temaları ve resmi manifestoları, ARGVUS ikon temalarını `/usr/share/icons` altında kurar. Temalar sistem Adwaita ve hicolor temalarını devralır, bu nedenle ARGVUS ikonu göndermeyen uygulamalar Adwaita'ya geri döner.

## Kurulu temalar

| Theme | Directory | Role |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | Varsayılan tema. Koyu ve açık varyantları devralır. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Variant for dark surfaces. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Variant for light surfaces. |

Her tema bir `index.theme` dosyası ile gelir. O dosyanın `Name=` değeri, GNOME, GTK ve Qt'nin temayı seçmek için kullandığı addır.

Koyu ve açık varyantlar henüz kendi simge dosyalarını içermez, bu nedenle şu anda miras yoluyla Adwaita simgelerine yönlendirilirler.

## Resmî manifestolar

Her temanın `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml` altında bir manifestosu vardır:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- `id`, manifest dizini adı ve kararlı tanımlayıcıdır.
- `name`, yüklü `Name=` içindeki `index.theme` değerine eşit olmalıdır.
- `variant`, `default`, `dark` veya `light`'dir.
- `official = true`, temayı masaüstü araçları için bir ARGVUS teması olarak işaretler.

Manifestler sadece metadata'dır. Tema dosyalarını değiştirmezler ve herhangi bir kullanıcı yapılandırması yazmazlar.

## Simge temasını seçiyor

Aktif simge teması, `appearance.icon_theme` anahtarı `config.json` içindedir. Boş bir değer, karanlık temalar için `Argvus Dark Icons` ve açık temalar için `Argvus Light Icons` seçer. `argvus-appearance`, yapılandırılmış temayı GNOME ayarlarına, GTK 3 ve GTK 4’e ve Qt’ye (`qt6ct`) uygular. Yapılandırılmış tema yüklü değilse, aynı modun varsayılanına geri döner.

## Installation

ARGVUS paketiyle veya tek başına yükleyin:

```bash
pacman -S argvus-icons
```

## Contributing

Simgeler katkıda bulunmak veya sorun bildirmek için GitHub'daki ARGVUS Icons deposunu kullanın.
