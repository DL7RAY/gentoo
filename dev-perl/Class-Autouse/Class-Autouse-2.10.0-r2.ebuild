# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=ADAMK
MODULE_VERSION=2.01
inherit perl-module

DESCRIPTION="Runtime aspect loading of one or more classes"

SLOT="0"
KEYWORDS="amd64 hppa ~mips ppc x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris"
IUSE=""

RDEPEND=">=virtual/perl-Scalar-List-Utils-1.18"
DEPEND="${RDEPEND}"

SRC_TEST="do"

src_prepare() {
	sed -i -e 's/use inc::Module::Install::DSL /use lib q[.];\nuse inc::Module::Install::DSL /' Makefile.PL ||
		die "Can't patch Makefile.PL for 5.26 dot-in-inc"
	perl-module_src_prepare
}
