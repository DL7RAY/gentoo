# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit toolchain-funcs eutils

DESCRIPTION="Famous german card game"
HOMEPAGE="http://www.xskat.de/xskat.html"
SRC_URI="http://www.xskat.de/${P}.tar.gz"

LICENSE="freedist"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND="media-fonts/font-misc-misc
	x11-libs/libX11"
DEPEND="${RDEPEND}
	x11-misc/gccmakedep
	x11-misc/imake
	x11-proto/xproto"

src_prepare() {
	default
	xmkmf -a || die
}

src_compile() {
	emake CDEBUGFLAGS="${CFLAGS}" EXTRA_LDOPTIONS="${LDFLAGS}" CC="$(tc-getCC)"
}

src_install() {
	dobin xskat
	newman xskat.man xskat.6
	dodoc CHANGES README{,.IRC}
	newicon icon.xbm ${PN}.xbm
	make_desktop_entry ${PN} XSkat /usr/share/pixmaps/${PN}.xbm
}
