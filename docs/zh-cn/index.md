---
title: ARGVUS 图标
description: ARGVUS 桌面的图标主题及其官方清单
---

# ARGVUS 图标

`argvus-icons` 将 ARGVUS 图标主题安装在 `/usr/share/icons` 下。这些主题继承了系统的 Adwaita 和 hicolor 主题，因此未自带 ARGVUS 图标的应用程序会回退使用 Adwaita。

## 已安装的主题

| 主题 | 目录 | 角色 |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | 默认主题。继承深色和浅色变体。 |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | 深色界面的变体。 |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | 浅色界面的变体。 |

每个主题都包含一个 `index.theme` 文件。该文件的 `Name=` 值是 GNOME、GTK 和 Qt 用来选择主题的名称。

深色和浅色变体尚未自带图标文件，因此它们当前通过继承解析为 Adwaita 图标。

## 官方清单

每个主题在 `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml` 下都有一个清单：

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```
- `id` 是清单目录名称和稳定标识符。
- `name` 必须等于已安装 `Name=` 中的 `index.theme` 值。
- `variant` 是 `default`、`dark` 或 `light`。
- `official = true` 将主题标记为桌面工具的 ARGVUS 主题。

清单仅包含元数据。它们不会更改主题文件，也不会写入任何用户配置。

## 选择图标主题

活动图标主题是 config.json 中的 `appearance.icon_theme` 键。空值将选择暗色主题的  `config.json` `Argvus Dark Icons` 和浅色主题的 `Argvus Light Icons`。`argvus-appearance` 会将配置的主题应用于 GNOME 设置、GTK 3 和 GTK 4，以及 Qt (`qt6ct`)。如果配置的主题未安装，则回退到相同模式的默认值。

## 安装

可通过 ARGVUS 软件包安装，或单独安装：

```bash
pacman -S argvus-icons
```
## 贡献

要贡献图标或报告问题，请使用 GitHub 上的 ARGVUS 图标仓库。
