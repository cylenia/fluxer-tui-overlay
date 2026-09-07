EAPI=8

inherit cargo

DESCRIPTION="TUI client for the Fluxer instant messenger service"
HOMEPAGE="https://github.com/AIVirtuoso/fluxer-tui"
SRC_URI="https://github.com/AIVirtuoso/fluxer-tui/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
  dobin target/release/fluxer-tui
}
