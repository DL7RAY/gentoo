# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999
#hackport: flags: -usenativewindowslibraries

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="OpenAL"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding to the OpenAL cross-platform 3D audio API"
HOMEPAGE="https://github.com/haskell-openal/ALUT"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/objectname-1.1:=[profile?] <dev-haskell/objectname-1.2:=[profile?]
	>=dev-haskell/opengl-2.12:=[profile?] <dev-haskell/opengl-2.13:=[profile?]
	>=dev-haskell/statevar-1.1:=[profile?] <dev-haskell/statevar-1.2:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	media-libs/openal
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-usenativewindowslibraries
}
