---
title: 아르브거스 아이콘
description: ARGVUS 데스크톱용 아이콘 테마 및 공식 매니페스트
---

# ARGVUS 아이콘

`argvus-icons`은 ARGVUS 아이콘 테마를 `/usr/share/icons` 아래에 설치합니다. 이 테마들은 시스템 Adwaita 및 hicolor 테마를 상속하므로, ARGVUS 아이콘을 포함하지 않은 애플리케이션은 Adwaita로 대체됩니다.

## 설치된 테마

| 테마 | 디렉토리 | 역할 |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | 기본 테마. 다크 및 라이트 변형을 상속합니다. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | 다크 배경용 변형입니다. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | 라이트 배경용 변형입니다. |

각 테마는 `index.theme` 파일을 제공합니다. 해당 파일의 `Name=` 값은 GNOME, GTK 및 Qt가 테마를 선택할 때 사용하는 이름입니다.

다크 및 라이트 변형은 아직 자체 아이콘 파일을 제공하지 않으므로 현재 상속을 통해 Adwaita 아이콘으로 해결됩니다.

## 공식 매니페스트

각 테마는 `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml` 아래에 매니페스트를 가지고 있습니다:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- `id`는 매니페스트 디렉터리 이름이자 안정적인 식별자입니다.
- `name`는 설치된 index.theme의 `Name=` 값과 같아야 합니다.
-  `index.theme` `variant`는 `default`, `dark` 또는 `light`입니다.
- `official = true`는 테마를 데스크탑 도구용 ARGVUS 테마로 표시합니다.

매니페스트는 메타데이터만 포함합니다. 테마 파일을 변경하지 않으며 사용자 설정을 기록하지 않습니다.

## 아이콘 테마 선택

활성 아이콘 테마는 config.json의 `appearance.icon_theme` 키입니다. 값이 비어 있으면 어두운 테마에서는  `config.json` `Argvus Dark Icons`, 밝은 테마에서는 `Argvus Light Icons`가 선택됩니다. `argvus-appearance`는 구성된 테마를 GNOME 설정, GTK 3 및 GTK 4, Qt(`qt6ct`)에 적용합니다. 구성된 테마가 설치되어 있지 않으면 동일한 모드의 기본값으로 돌아갑니다.

## 설치

ARGVUS 패키지 또는 단독으로 설치:

```bash
pacman -S argvus-icons
```
## 기여하기

아이콘을 기여하거나 문제를 보고하려면, GitHub의 ARGVUS 아이콘 저장소를 사용하세요.
