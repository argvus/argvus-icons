---
title: Ikon ARGVUS
description: Tema ikon dan manifest resmi mereka untuk desktop ARGVUS
---

# Ikon ARGVUS

`argvus-icons` menginstal tema ikon ARGVUS di bawah `/usr/share/icons`. Tema-tema ini mewarisi tema Adwaita dan hicolor sistem, sehingga aplikasi yang tidak menyertakan ikon ARGVUS akan beralih ke Adwaita.

## Tema yang diinstal

| Tema | Direktori | Peran |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | Tema default. Mewarisi varian gelap dan terang. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Varian untuk permukaan gelap. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Varian untuk permukaan terang. |

Setiap tema menyertakan file `index.theme`. Nilai `Name=` dari file itu adalah nama yang digunakan GNOME, GTK, dan Qt untuk memilih tema.

Varian gelap dan terang belum menyertakan file ikon mereka sendiri, jadi saat ini mereka mengarah ke ikon Adwaita melalui pewarisan.

## Manifest resmi

Setiap tema memiliki sebuah manifest di bawah `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml`:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- `id` adalah nama direktori manifest dan pengenal stabil.
- `name` harus sama dengan nilai `Name=` dalam `index.theme` yang terpasang.
- `variant` adalah `default`, `dark` atau `light`.
- `official = true` menandai tema sebagai tema ARGVUS untuk perangkat desktop.

Manifes hanya berupa metadata. Mereka tidak mengubah file tema dan tidak menulis konfigurasi pengguna apa pun.

## Memilih tema ikon

Tema ikon aktif adalah kunci `appearance.icon_theme` dalam `config.json`. Nilai kosong memilih `Argvus Dark Icons` untuk tema gelap dan `Argvus Light Icons` untuk tema terang. `argvus-appearance` menerapkan tema yang dikonfigurasi ke pengaturan GNOME, GTK 3 dan GTK 4, serta Qt (`qt6ct`). Jika tema yang dikonfigurasi tidak terpasang, ia kembali ke default mode yang sama.

## Instalasi

Pasang dengan paket ARGVUS atau secara mandiri:

```bash
pacman -S argvus-icons
```

## Berkontribusi

Untuk menyumbang ikon atau melaporkan masalah, gunakan repositori ARGVUS Icons di GitHub.
