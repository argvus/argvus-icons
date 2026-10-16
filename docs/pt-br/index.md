---
title: ARGVUS Icons
description: Temas de ícones e seus manifestos oficiais para o desktop ARGVUS
---

# ARGVUS Icons

O `argvus-icons` instala os temas de ícones ARGVUS em `/usr/share/icons`. Os temas herdam os temas do sistema Adwaita e hicolor, então aplicativos que não trazem um ícone ARGVUS usam o Adwaita.

## Temas instalados

| Tema | Diretório | Papel |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | Tema padrão. Herda as variantes escura e clara. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Variante para superfícies escuras. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Variante para superfícies claras. |

Cada tema traz um arquivo `index.theme`. O valor `Name=` desse arquivo é o nome que GNOME, GTK e Qt usam para selecionar o tema.

As variantes escura e clara ainda não trazem arquivos de ícone próprios, então hoje resolvem para os ícones Adwaita por herança.

## Manifestos oficiais

Cada tema tem um manifesto em `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml`:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- `id` é o nome do diretório do manifesto e o identificador estável.
- `name` precisa ser igual ao valor `Name=` do `index.theme` instalado.
- `variant` é `default`, `dark` ou `light`.
- `official = true` marca o tema como tema ARGVUS para as ferramentas do desktop.

Os manifestos são apenas metadados. Eles não alteram os arquivos do tema e não gravam nenhuma configuração do usuário.

## Seleção do tema de ícones

O tema de ícones ativo é a chave `appearance.icon_theme` no `config.json`. Um valor vazio seleciona `Argvus Dark Icons` para temas escuros e `Argvus Light Icons` para temas claros. O `argvus-appearance` aplica o tema configurado nas configurações do GNOME, no GTK 3 e 4 e no Qt (`qt6ct`). Se o tema configurado não estiver instalado, ele volta para o padrão do mesmo modo.

## Instalação

Instale com o pacote ARGVUS ou isoladamente:

```bash
pacman -S argvus-icons
```

## Contribuindo

Para contribuir com ícones ou reportar problemas, use o repositório ARGVUS Icons no GitHub.
