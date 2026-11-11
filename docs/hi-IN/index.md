---
title: ARGVUS Icons
description: ARGVUS डेस्कटॉप के लिए आइकन थीम और उनके आधिकारिक मैनिफ़ेस्ट
---

# ARGVUS आइकन

`argvus-icons` ARGVUS आइकन थीमों को `/usr/share/icons` के अंतर्गत इंस्टॉल करता है। थीम्स सिस्टम के Adwaita और hicolor थीम्स को विरासत में लेते हैं, इसलिए जो एप्लिकेशन ARGVUS आइकन नहीं भेजते हैं वे Adwaita पर वापस लौटते हैं।

## इंस्टॉल किए गए थीम्स

| Theme | Directory | Role |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons`| डिफ़ॉल्ट थीम। डार्क और लाइट वेरिएंट्स को अपनाता है। |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Variant for dark surfaces. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Variant for light surfaces. |

प्रत्येक थीम एक `index.theme` फ़ाइल भेजती है। उस फ़ाइल का `Name=` मान नाम है जिसे GNOME, GTK और Qt थीम चुनने के लिए उपयोग करते हैं।

डार्क और लाइट वैरिएंट्स अभी तक अपनी आइकॉन फ़ाइलें नहीं भेजते हैं, इसलिए वे वर्तमान में इनहेरिटेंस के माध्यम से Adwaita आइकॉन्स को हल करते हैं।

## आधिकारिक मैनिफ़ेस्ट्स

प्रत्येक थीम का एक मैनिफ़ेस्ट होता है जो `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml` के तहत होता है:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- `id` मैनिफेस्ट डायरेक्टरी का नाम और स्थिर पहचानकर्ता है।
- `name`, इंस्टॉल किए गए `Name=` में `index.theme` मान के बराबर होना चाहिए।
- `variant` `default`, `dark` या `light` है।
- `official = true` विषय को डेस्कटॉप टूलिंग के लिए ARGVUS थीम के रूप में चिह्नित करता है।

मैनिफ़ेस्ट केवल मेटाडेटा हैं। वे थीम फ़ाइलों को नहीं बदलते और कोई उपयोगकर्ता कॉन्फ़िगरेशन नहीं लिखते।

## आइकन थीम का चयन करना

सक्रिय आइकन थीम `appearance.icon_theme` कुंजी में `config.json` है। एक खाली मान डार्क थीम के लिए `Argvus Dark Icons` और लाइट थीम के लिए `Argvus Light Icons` का चयन करता है। `argvus-appearance` कॉन्फ़िगर की गई थीम को GNOME सेटिंग्स, GTK 3 और GTK 4, और Qt (`qt6ct`) पर लागू करता है। यदि कॉन्फ़िगर की गई थीम स्थापित नहीं है, तो यह समान मोड डिफ़ॉल्ट पर वापस चला जाता है।

## Installation

ARGVUS पैकेज के साथ या अकेले इंस्टॉल करें:

```bash
pacman -S argvus-icons
```

## Contributing

आइकन योगदान करने या समस्याओं की रिपोर्ट करने के लिए GitHub पर ARGVUS Icons रिपॉजिटरी का उपयोग करें।
