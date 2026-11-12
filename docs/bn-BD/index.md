---
title: ARGVUS আইকন
description: ARGVUS ডেস্কটপের আইকন থিম এবং তাদের অফিসিয়াল ম্যানিফেস্ট
---

# ARGVUS আইকন

`argvus-icons` ইন্সটল করে ARGVUS আইকন থিমগুলি `/usr/share/icons` এর অধীনে। থিমগুলি সিস্টেমের Adwaita এবং hicolor থিমগুলি উত্তরাধিকার করে, তাই অ্যাপ্লিকেশন যা ARGVUS আইকন সরবরাহ করে না তা Adwaita ব্যবহার করে।

## ইন্সটল করা থিমগুলি

| থিম | ডিরেক্টরি | ভূমিকা |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | ডিফল্ট থিম। ডার্ক এবং লাইট ভেরিয়েন্টগুলি উত্তরাধিকার সূত্রে পায়। |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | অন্ধকার পৃষ্ঠের জন্য বৈকল্পিক. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | হালকা পৃষ্ঠতলের জন্য বৈকল্পিক. |

প্রত্যেকটি থিম একটি `index.theme` ফাইল সরবরাহ করে। সেই ফাইলের `Name=` মানটি হচ্ছে থিম নির্বাচনের জন্য GNOME, GTK এবং Qt যে নামটি ব্যবহার করে।

ডার্ক এবং লাইট ভেরিয়েন্টগুলো এখনও তাদের নিজস্ব আইকন ফাইল সরবরাহ করে না, তাই তারা বর্তমানে ইনহেরিটেন্সের মাধ্যমে Adwaita আইকনে রিসলভ হয়।

## অফিসিয়াল ম্যানিফেস্ট

প্রতিটি থিমের একটি ম্যানিফেস্ট থাকে `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml` এর অধীনে:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- `id` হচ্ছে ম্যানিফেস্ট ডিরেক্টরির নাম এবং স্থিতিশীল শনাক্তকারী।
- `name` অবশ্যই ইনস্টল করা `Name=`-এর `index.theme` মানের সাথে সমান হতে হবে।
- `variant` হলো `default`, `dark` বা `light`।
- `official = true` ডেস্কটপ টুলিংয়ের জন্য থিমটিকে একটি ARGVUS থিম হিসাবে চিহ্নিত করে।

মেনিফেস্টগুলি শুধুমাত্র মেটাডেটা। তারা থিম ফাইলগুলি পরিবর্তন করে না এবং কোনো ব্যবহারকারীর কনফিগারেশন লিখে না।

## আইকন থিম নির্বাচন করা হচ্ছে

সক্রিয় আইকন থিম হল `appearance.icon_theme` কী `config.json`-এ। খালি মান ডার্ক থিমের জন্য `Argvus Dark Icons` এবং লাইট থিমের জন্য `Argvus Light Icons` নির্বাচন করে। `argvus-appearance` কনফিগার করা থিমটি GNOME সেটিংস, GTK 3 এবং GTK 4, এবং Qt (`qt6ct`)-এ প্রয়োগ করে। যদি কনফিগার করা থিমটি ইনস্টল না থাকে, এটি একই মোডের ডিফল্টে ফিরে যায়।

## ইনস্টলেশন

ARGVUS প্যাকেজের সঙ্গে অথবা নিজে ইনস্টল করুন:

```bash
pacman -S argvus-icons
```

## অবদান

আইকন অবদান রাখতে বা সমস্যা রিপোর্ট করতে GitHub-এ ARGVUS আইকন রেপোজিটরি ব্যবহার করুন।
