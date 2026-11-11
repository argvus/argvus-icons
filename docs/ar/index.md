---
title: ARGVUS Icons
description:                               ARGVUS ﺐﺘﻜﻣ ﺢﻄﺴﻟ ﺔﻴﻤﺳﺮﻟﺍ ﺎﻬﺗﺎﻧﺎﻴﺑﻭ ﺕﺎﻧﻮﻘﻳﻷ﻿ﺍ ﺕﺎﻤﺳ
---

#                                                                 ARGVUS ﺕﺎﻧﻮﻘﻳﺃ

`argvus-icons`                                                       ﺖﺤﺗ ARGVUS ﺕﺎﻧﻮﻘﻳﺃ ﺖﺒﺜﻳ`/usr/share/icons`.ﻞﻳﺪﺒﻛ Adwaita ﺔﻧﻮﻘﻳﺃ ﻡﺪﺨﺘﺴﺗ ARGVUS ﺔﻧﻮﻘﻳﺃ ﻰﻠﻋ ﻱﻮﺘﺤﺗ ﻻ﻿ ﻲﺘﻟﺍ ﺕﺎﻘﻴﺒﻄﺘﻟﺍ ﻚﻟﺬﻟ ،hi

##                                                                ﺔﺘﺒﺜﻤﻟﺍ ﺕﺎﻤﻴﺜﻟﺍ

| Theme | Directory | Role |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons`                             | .ﺔﺤﺗﺎﻔﻟﺍﻭ ﺔﻨﻛﺍﺪﻟﺍ ﺦﺴﻨﻟﺍ ﺙﺮﺗ .ﺔﻴﺿﺍﺮﺘﻓﻻ﻿ﺍ ﺔﻤﺴﻟﺍ | 
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Variant for dark surfaces. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Variant for light surfaces. |

Each theme ships an 

 file. The 

 value of that file is the name GNOME, GTK and Qt use to select the theme.

.ﺔﺛﺍﺭﻮﻟﺍ ﻝﻼ﻿ﺧ ﻦﻣ Adwaita ﺕﺎﻧﻮﻘﻳﺃ ﻞﺤﻣ ﻞﺤﺗ ًﺎﻴﻟﺎﺣ ﻲﻬﻓ ﻚﻟﺬﻟ ،ﺪﻌﺑ ﺎ

## ﺔﻴﻤﺳﺮﻟﺍ ﻢﺋﺍﻮﻘﻟﺍ

Each theme has a manifest under 

:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- id ﺖﺑﺎﺜﻟﺍ ﻑّﺮﻌﻤﻟﺍﻭ ﺖﺴﻔﻴﻧﺎﻤﻟﺍ ﻞﻴﻟﺩ ﻢﺳﺍ ﻮﻫ.
- .ﺖﺒﺜﻤﻟﺍ `index.theme` ﻲﻓ `Name=` ﺔﻤﻴﻘﻟﺍ  id  `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml`  `id` `name` ﻱﻭﺎﺴﻳ 
-  index.theme  `Name=`  `index.theme` `variant` ﻮﻫ `default`، `dark` ﻭﺃ `light`
- `official = true` qt6ct  argvus-appearance  Argvus Light Icons  Argvus Dark Icons  config.json  `appearance.icon_theme` `config.json`  `Argvus Dark Icons`  `Argvus Light Icons`  `argvus-appearance`  `qt6ct`   ﻉﻮﺿﻮﻤﻛ ﻉﻮﺿﻮﻤﻟﺍ ﺩﺪﺤﻳ ARGVUS ﺐﺘﻜﻤﻟﺍ ﺢﻄﺳ ﺕﺍﻭﺩﻷ﻿.

.ﻡﺪﺨﺘﺴﻤﻠﻟ ﺕﺍﺩﺍﺪﻋﺇ ﻱﺃ ﺐﺘﻜ

## ﺔﻧﻮﻘﻳﻷ﻿ﺍ ﻉﻮﺿﻮﻣ ﺪﻳﺪﺤﺗ



## Installation

                               :ﻞﺼﻔﻨﻣ ﻞﻜﺸﺑ ﻭﺃ ARGVUS ﺔﻣﺰﺣ ﻡﺍﺪﺨﺘﺳﺎﺑ ﺖﻴﺒﺜﺘﻟﺎﺑ ﻢﻗ

```bash
pacman -S argvus-icons
```

## Contributing

   .GitHub ﻰﻠﻋ ARGVUS ﺯﻮﻣﺭ ﻉﺩﻮﺘﺴﻣ ﻡﺪﺨﺘﺳﺍ ،ﻞﻛﺎﺸﻤﻟﺍ ﻦﻋ ﻍﻼ﻿ﺑﻺ﻿ﻟ ﻭﺃ ﺯﻮﻣﺮﻟﺎﺑ ﺔﻤﻫﺎﺴﻤﻠﻟ
