# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HDBC-sqlite3"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Sqlite v3 driver for HDBC"
HOMEPAGE="https://github.com/hdbc/hdbc-sqlite3"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildtests +splitbase"

RDEPEND=">=dev-db/sqlite-3.0
	>=dev-haskell/hdbc-2.3.0.0:2=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	buildtests? ( dev-haskell/convertible:=[profile?]
			dev-haskell/hunit:=[profile?]
			dev-haskell/old-locale:=[profile?]
			dev-haskell/old-time:=[profile?]
			dev-haskell/testpack:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2.3
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildtests buildtests) \
		$(cabal_flag splitbase splitbase)
}
