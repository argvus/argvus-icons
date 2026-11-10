---
title: ARGVUSアイコン
description: ARGVUSデスクトップ向けのアイコンテーマとその公式マニフェスト
---
# ARGVUS アイコン

`argvus-icons` は `/usr/share/icons` の下に ARGVUS アイコンテーマをインストールします。これらのテーマはシステムの Adwaita および hicolor テーマを継承するため、ARGVUS アイコンを含まないアプリケーションは Adwaita にフォールバックします。

## インストールされたテーマ

| テーマ | ディレクトリ | 役割 |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | デフォルトテーマ。ダークおよびライトのバリアントを継承。 |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | ダーク面用のバリアント。 |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | ライト面用のバリアント。 |

各テーマには `index.theme` ファイルが含まれています。そのファイルの `Name=` 値は、GNOME、GTK、および Qt がテーマを選択する際に使用する名前です。

ダークおよびライトのバリアントはまだ独自のアイコンファイルを搭載していないため、現在は継承を通じて Adwaita アイコンに解決されます。

## 公式マニフェスト

各テーマには `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml` の下にマニフェストがあります:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```
- `id` はマニフェストディレクトリ名であり、安定した識別子です。
- `name` はインストール済みの index.theme 内の `Name=` の値と一致する必要があります。
-  `index.theme` `variant` は `default`、`dark`、または `light` です。
- `official = true` はデスクトップツール用の ARGVUS テーマとしてテーマをマークします。

マニフェストはメタデータのみです。テーマファイルを変更せず、ユーザー設定を書き込むこともありません。

## アイコンテーマの選択

アクティブなアイコンテーマは config.json 内の `appearance.icon_theme` キーです。空の値は、ダークテーマの場合は  `config.json` `Argvus Dark Icons`、ライトテーマの場合は `Argvus Light Icons` を選択します。`argvus-appearance` は設定されたテーマを GNOME 設定、GTK 3 および GTK 4、Qt（`qt6ct`）に適用します。もし設定されたテーマがインストールされていない場合は、同じモードのデフォルトにフォールバックします。

## インストール

ARGVUS パッケージまたは単独でインストールできます:

```bash
pacman -S argvus-icons
```
## 貢献

アイコンを提供したり、問題を報告したりするには、GitHubのARGVUS Iconsリポジトリを使用してください。
