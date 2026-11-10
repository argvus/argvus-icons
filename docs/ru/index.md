---
title: ИКОНКИ ARGVUS
description: Темы иконок и их официальные манифесты для рабочего стола ARGVUS
---
# Значки ARGVUS

`argvus-icons` устанавливает темы значков ARGVUS в `/usr/share/icons`. Темы наследуют системные темы Adwaita и hicolor, поэтому приложения, которые не включают значок ARGVUS, используют значки Adwaita.

## Установленные темы

| Тема | Каталог | Роль |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | Тема по умолчанию. Наследует тёмные и светлые варианты. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Вариант для тёмных оболочек. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Вариант для светлых оболочек. |

Каждая тема поставляется с файлом `index.theme`. Значение `Name=` этого файла используется GNOME, GTK и Qt для выбора темы.

Тёмные и светлые варианты пока не имеют собственных файлов значков, поэтому они в настоящее время используют значки Adwaita через наследование.

## Официальные манифесты

Каждая тема имеет манифест под `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml`:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```
- `id` — это имя каталога манифеста и стабильный идентификатор.  
- `name` должно быть равно значению `Name=` в установленном `index.theme`.  
- `variant` может быть `default`, `dark` или `light`.  
- `official = true` отмечает тему как тему ARGVUS для инструментов рабочего стола.  

Манифесты содержат только метаданные. Они не изменяют файлы темы и не записывают никакие настройки пользователя.  

## Выбор темы значков  

Активная тема значков — это ключ `appearance.icon_theme` в `config.json`. Пустое значение выбирает `Argvus Dark Icons` для тёмных тем и `Argvus Light Icons` для светлых тем. `argvus-appearance` применяет настроенную тему к настройкам GNOME, GTK 3 и GTK 4, а также Qt (`qt6ct`). Если настроенная тема не установлена, используется режим по умолчанию.  

## Установка  

Установите с помощью пакета ARGVUS или отдельно:

```bash
pacman -S argvus-icons
```
## Вклад

Чтобы внести вклад в иконки или сообщить о проблемах, используйте репозиторий ARGVUS Icons на GitHub.
