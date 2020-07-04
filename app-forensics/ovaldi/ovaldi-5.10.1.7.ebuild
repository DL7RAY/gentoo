# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils toolchain-funcs

DESCRIPTION="Free implementation of OVAL"
HOMEPAGE="http://oval.mitre.org/language/interpreter.html"
SRC_URI="mirror://sourceforge/${PN}/${P}-src.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="acl ldap selinux"

CDEPEND="dev-libs/libgcrypt:0
	dev-libs/libpcre
	dev-libs/xalan-c
	dev-libs/xerces-c
	sys-apps/util-linux
	sys-libs/libcap
	acl? ( sys-apps/acl )
	ldap? ( net-nds/openldap )"
DEPEND="${CDEPEND}
	sys-apps/sed"
RDEPEND="${CDEPEND}
	selinux? ( sys-libs/libselinux )"

S="${WORKDIR}/${P}-src"

src_prepare() {
	if ! use ldap ; then
		einfo "Disabling LDAP probes"
		sed -i 's,.*ldap,//&,' src/linux/ProbeFactory.cpp || die
		sed -i 's,.*LDAP,//&,' src/linux/ProbeFactory.cpp || die
		sed -i 's/-lldap//' project/linux/Makefile || die
		sed -i 's/-llber//' project/linux/Makefile || die
		sed -i 's/.*LDAPProbe.h.*//' src/linux/ProbeFactory.h || die
		rm src/probes/independent/LDAPProbe.{cpp,h} || die
	fi

	if ! use acl ; then
		sed -i 's,.*libacl,//&,' src/probes/unix/FileProbe.h || die
		epatch "${FILESDIR}"/${P}-disable-acl.patch
		sed -i 's, -lacl , ,' project/linux/Makefile || die
	fi

	einfo "Disabling rpm probes"
	sed -i 's/^PACKAGE_RPM/#PACKAGE_RPM/' project/linux/Makefile || die

	# same thing for dpkg, but package dpkg is not sufficient, needs app-arch/apt-pkg that is not on tree
	einfo "Disabling dpkg probes"
	sed -i 's/^PACKAGE_DPKG/#PACKAGE_DPKG/' project/linux/Makefile || die

	#Disabling SELinux support
	if ! use selinux ; then
		rm src/probes/linux/SelinuxSecurityContextProbe.cpp || die
		rm src/probes/linux/SelinuxBooleanProbe.cpp || die
		rm src/probes/linux/SelinuxBooleanProbe.h || die
		epatch "${FILESDIR}"/${P}-disable_RetrieveSelinuxDomainLabel.patch
		sed -i 's,.*selinux.*,//&,' src/linux/ProbeFactory.cpp || die
		sed -i 's,.*Selinux.*,//&,' src/linux/ProbeFactory.cpp || die
		sed -i 's,.*selinux.*.h.*,//&,' src/probes/unix/Process58Probe.cpp || die
		sed -i 's,.*SecurityContextGuard.h.*,//&,' src/probes/unix/Process58Probe.cpp || die
		sed -i 's, -lselinux,,' project/linux/Makefile || die
	fi

	# missing header for realloc and free
	sed -i 's,#include <unistd.h>,&\n#include <stdlib.h>,' src/linux/NetworkInterfaces.cpp || die
	sed -i 's,#include <unistd.h>,&\n#include <stdlib.h>,' src/linux/SystemInfo.cpp || die

	# respect CXXFLAGS and CXX
	sed -i -e '/^CPPFLAGS/s/$(INCDIRS)/$(CXXFLAGS) \0/' project/linux/Makefile || die

	# no such library on linux
	sed -i 's,-lxalanMsg,,' project/linux/Makefile || die
	tc-export CXX
}

src_compile() {
	emake -C project/linux
}

src_install() {
	# no make install in Makefile
	dosbin project/linux/Release/ovaldi project/linux/ovaldi.sh
	dodir /var/log/${PN}
	insinto /usr/share/${PN}
	doins xml/*
	dodoc docs/{README.txt,version.txt}
	doman docs/ovaldi.1
}
