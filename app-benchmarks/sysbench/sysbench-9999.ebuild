# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools git-r3 pax-utils

DESCRIPTION="System performance benchmark"
HOMEPAGE="https://github.com/akopytov/sysbench"
EGIT_REPO_URI="https://github.com/akopytov/sysbench.git"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS=""
IUSE="aio mysql postgres test"
RESTRICT="!test? ( test )"

RDEPEND="aio? ( dev-libs/libaio )
	mysql? ( dev-db/mysql-connector-c:= )
	postgres? ( dev-db/postgresql:= )
	dev-lang/luajit:="
DEPEND="${RDEPEND}
	dev-libs/concurrencykit
	dev-libs/libxslt
	sys-devel/libtool
	virtual/pkgconfig
	test? ( dev-util/cram )"

src_prepare() {
	default

	# remove bundled libs
	rm -r third_party/luajit/luajit third_party/concurrency_kit/ck third_party/cram || die

	eautoreconf
}

src_configure() {
	local myeconfargs=(
		$(use_enable aio)
		$(use_with mysql)
		$(use_with postgres pgsql)
		--with-system-luajit
		--with-system-ck
	)

	econf "${myeconfargs[@]}"
}

src_test() {
	emake check test
}

src_install() {
	default

	pax-mark m "${ED}"/usr/bin/${PN}
}
