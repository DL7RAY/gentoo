# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="iCalendar"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="iCalendar data types, parser, and printer"
HOMEPAGE="https://github.com/chrra/iCalendar"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri"

RDEPEND=">=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/case-insensitive-0.4:=[profile?]
	>=dev-haskell/data-default-0.3:=[profile?]
	>=dev-haskell/mime-0.4.0.2:=[profile?]
	>=dev-haskell/mtl-2.1.0:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/parsec-3.1.0:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	network-uri? ( >=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.9:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] )
	!network-uri? ( >=dev-haskell/network-2.4:=[profile?] <dev-haskell/network-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	default

	cabal_chdeps\
		'containers >= 0.5 && < 0.6' 'containers >= 0.5 && < 0.7'\
		'network >= 2.6 && < 2.7' 'network >= 2.6 && < 2.9'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)
}
