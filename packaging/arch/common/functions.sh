#!/usr/bin/env bash
# shellcheck shell=bash
# shellcheck disable=SC2154
# srcdir, pkgdir, pkgname, and pkgver are supplied by makepkg.

# GitHub source archives use <repository>-v<version> as their top-level
# directory, while the local builder creates <pkgname>-<pkgver>. Normalize
# both forms before check() and package() run.
arch_normalize_source_tree() {
	local expected="${srcdir}/${pkgname}-${pkgver}"
	local -a roots=()

	while IFS= read -r -d '' root; do
		roots+=("$root")
	done < <(find "$srcdir" -mindepth 1 -maxdepth 1 -type d -print0)

	if (( ${#roots[@]} != 1 )); then
		printf 'error: expected exactly one extracted source directory in %s\n' "$srcdir" >&2
		return 1
	fi

	if [[ "${roots[0]}" != "$expected" ]]; then
		[[ ! -e "$expected" ]] || {
			printf 'error: source destination already exists: %s\n' "$expected" >&2
			return 1
		}
		mv -- "${roots[0]}" "$expected"
	fi
}

arch_check_icons_payload() {
	local source_root="${srcdir}/${pkgname}-${pkgver}"
	local icons_root="${source_root}/src/usr/share/icons"
	local -a themes=(
		"Argvus Icons"
		"Argvus Dark Icons"
		"Argvus Light Icons"
	)

	for theme in "${themes[@]}"; do
		local index="${icons_root}/${theme}/index.theme"
		test -f "$index"
		grep -q "^Name=${theme}$" "$index"
		grep -q '^Inherits=.*Adwaita' "$index"
	done
}

arch_package_icons_payload() {
	local source_root="${srcdir}/${pkgname}-${pkgver}"
	local icons_root="${source_root}/src/usr/share/icons"
	local -a themes=(
		"Argvus Icons"
		"Argvus Dark Icons"
		"Argvus Light Icons"
	)

	for theme in "${themes[@]}"; do
		install -Dm644 "${icons_root}/${theme}/index.theme" \
			"${pkgdir}/usr/share/icons/${theme}/index.theme"
	done
	install -Dm644 "${source_root}/LICENSE" \
		"${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
