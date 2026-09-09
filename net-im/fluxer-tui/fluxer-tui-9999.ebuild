EAPI=8

inherit cargo git-r3

DESCRIPTION="A keyboard-only TUI chat client for the Fluxer messaging platform, with inline media, notifications and Linux console support."
HOMEPAGE="https://github.com/AIVirtuoso/fluxer-tui"
EGIT_REPO_URI="https://github.com/AIVirtuoso/fluxer-tui.git"

IUSE="
	chafa
	clipboard
	wayland
	X
"

RDEPENDS="
	media-libs/fontconfig
	x11-misc/xdg-utils
	x11-libs/libdrm

	chafa? ( media-gfx/chafa )

	clipboard? (
		wayland? (
			gui-apps/wl-clipboard
		)
		X? (
			x11-misc/xclip
		)
	)
"

LICENSE="GPL-3.0-or-later"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD-2 BSD CDLA-Permissive-2.0 ISC MIT MPL-2.0 UoI-NCSA
	Unicode-3.0 ZLIB
"
SLOT="0"
# You aren't supposed to have a KEYWORDS for 9999 ebuilds, idk why
# KEYWORDS="~amd64"

src_unpack() {
	git-r3_src_unpack
	cargo_live_src_unpack
}
