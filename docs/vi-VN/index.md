---
title: ARGVUS Icons
description: Các chủ đề biểu tượng và các tệp manifest chính thức của chúng cho máy tính để bàn ARGVUS
---

# Biểu tượng ARGVUS

`argvus-icons` cài đặt các chủ đề biểu tượng ARGVUS dưới `/usr/share/icons`. Các chủ đề thừa kế các chủ đề Adwaita và hicolor của hệ thống, vì vậy các ứng dụng không đi kèm biểu tượng ARGVUS sẽ quay về một biểu tượng Adwaita.

## Các chủ đề đã cài đặt

| Theme | Directory | Role |
|---|---|---|
| `Argvus Icons` | `/usr/share/icons/Argvus Icons` | Chủ đề mặc định. Kế thừa các biến thể tối và sáng. |
| `Argvus Dark Icons` | `/usr/share/icons/Argvus Dark Icons` | Variant for dark surfaces. |
| `Argvus Light Icons` | `/usr/share/icons/Argvus Light Icons` | Variant for light surfaces. |

Mỗi chủ đề đều đi kèm một tệp `index.theme`. Giá trị `Name=` của tệp đó là tên GNOME, GTK và Qt sử dụng để chọn chủ đề.

Các biến thể tối và sáng hiện chưa đi kèm tệp biểu tượng riêng, vì vậy chúng hiện tại sử dụng biểu tượng Adwaita thông qua kế thừa.

## Các bản khai chính thức

Mỗi chủ đề có một bản khai dưới `/usr/share/argvus/appearance/icon-themes.d/<id>/icon-theme.toml`:

```toml
id = "argvus-icons"
name = "Argvus Icons"
variant = "default"
official = true
description = "ARGVUS icon theme based on Adwaita (default)"
```

- `id` là tên thư mục manifest và định danh ổn định.
- `name` phải bằng giá trị `Name=` trong `index.theme` đã cài đặt.
- `variant` là `default`, `dark` hoặc `light`.
- `official = true` đánh dấu theme là theme ARGVUS cho công cụ desktop.

Các manifest chỉ là siêu dữ liệu. Chúng không thay đổi các tệp chủ đề và không ghi bất kỳ cấu hình người dùng nào.

## Chọn chủ đề biểu tượng

Gói biểu tượng đang hoạt động là khóa `appearance.icon_theme` trong `config.json`. Giá trị trống sẽ chọn `Argvus Dark Icons` cho các giao diện tối và `Argvus Light Icons` cho các giao diện sáng. `argvus-appearance` áp dụng giao diện đã cấu hình cho cài đặt GNOME, GTK 3 và GTK 4, và Qt (`qt6ct`). Nếu giao diện đã cấu hình chưa được cài đặt, nó sẽ trở về chế độ mặc định tương ứng.

## Installation

Cài đặt với gói ARGVUS hoặc riêng lẻ:

```bash
pacman -S argvus-icons
```

## Contributing

Để đóng góp biểu tượng hoặc báo cáo sự cố, hãy sử dụng kho biểu tượng ARGVUS trên GitHub.
