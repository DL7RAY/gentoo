# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

inherit multilib rpm

# Revision used by upstream
SRC_REV="2"

MY_P="esci-interpreter-gt-f720-${PV}"

DESCRIPTION="Epson Perfection V300 PHOTO scanner plugin for SANE 'epkowa' backend"
HOMEPAGE="http://www.avasys.jp/english/linux_e/dl_scan.html"
SRC_URI="
	x86? ( http://linux.avasys.jp/drivers/scanner-plugins/GT-F720/${MY_P}-${SRC_REV}.i386.rpm )
	amd64? ( http://linux.avasys.jp/drivers/scanner-plugins/GT-F720/${MY_P}-${SRC_REV}.x86_64.rpm )"

LICENSE="AVASYS"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND=">=media-gfx/iscan-2.21.0"
RDEPEND="${DEPEND}"

src_install() {
	local MY_LIB="/usr/$(get_libdir)"

	# install scanner firmware
	insinto /usr/share/esci
	doins "${WORKDIR}/usr/share/esci/"*

	# install scanner plugins
	insinto "${MY_LIB}/esci"
	insopts -m0755
	doins "${WORKDIR}/usr/$(get_libdir)/esci/"*
}

pkg_postinst() {
	local MY_LIB="/usr/$(get_libdir)"

	# Needed for scaner to work properly.
	iscan-registry --add interpreter usb 0x04b8 0x0131 "${MY_LIB}/esci/libesci-interpreter-gt-f720 /usr/share/esci/esfw8b.bin"
	elog
	elog "Firmware file esfw8b.bin for Epson Perfection V300 PHOTO"
	elog "has been installed in /usr/share/esci and registered for use."
	elog
}

pkg_prerm() {
	local MY_LIB="/usr/$(get_libdir)"

	iscan-registry --remove interpreter usb 0x04b8 0x0131 "${MY_LIB}/esci/libesci-interpreter-gt-f720 /usr/share/esci/esfw8b.bin"
}
