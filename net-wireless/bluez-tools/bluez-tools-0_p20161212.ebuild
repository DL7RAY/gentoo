# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools eutils

DESCRIPTION="A set of tools to manage bluetooth devices for linux"
HOMEPAGE="https://github.com/khvzak/bluez-tools"
COMMIT="97efd293491ad7ec96a655665339908f2478b3d1"
SRC_URI="https://github.com/khvzak/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND="dev-libs/dbus-glib
	dev-libs/glib:2
	net-wireless/bluez[obex]
	sys-libs/readline:0"
DEPEND="${RDEPEND}"

DOCS=( AUTHORS README )

S="${WORKDIR}/${PN}-${COMMIT}"

src_prepare () {
	eautoreconf
	default_src_prepare
}
