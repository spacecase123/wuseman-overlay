# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Ncrack is a high-speed network authentication cracking tool."
HOMEPAGE="https://nmap.org/ncrack/"
SRC_URI="https://nmap.org/ncrack/dist/ncrack-0.6.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	emake || die "emake failed"
}

src_install() {
	dobin ncrack || die "install failed"
}
