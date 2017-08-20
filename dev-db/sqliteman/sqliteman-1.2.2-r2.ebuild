# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit cmake-utils

DESCRIPTION="Powerful GUI manager for the Sqlite3 database"
HOMEPAGE="https://sourceforge.net/projects/sqliteman/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm x86"
IUSE=""

RDEPEND="
	dev-qt/qtcore:4
	dev-qt/qtgui:4
	dev-qt/qtsql:4[sqlite]
	x11-libs/qscintilla:=[qt4(-)]"
DEPEND="${RDEPEND}"

DOCS=( AUTHORS README )
PATCHES=( "${FILESDIR}/${P}-lpthread.patch" )

src_prepare() {
	# remove bundled lib
	rm -rf "${S}"/${PN}/qscintilla2 || die

	cmake-utils_src_prepare
}
