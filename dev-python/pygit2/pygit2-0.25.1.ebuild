# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6} )

inherit distutils-r1 versionator

DESCRIPTION="Python bindings for libgit2"
HOMEPAGE="https://github.com/libgit2/pygit2 https://pypi.python.org/pypi/pygit2"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-2-with-linking-exception"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=dev-libs/libgit2-$(get_version_component_range 1-2)*
	>=dev-python/cffi-1.0:=[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}"/pygit2-0.25.1-cffi-1.10.patch
)

python_test() {
	esetup.py test
}
