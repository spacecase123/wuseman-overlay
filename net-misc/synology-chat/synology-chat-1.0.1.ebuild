# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit multilib unpacker eutils

DESCRIPTION="Synology Cloudstation is the syncservice for Synology NAS."
HOMEPAGE="https://www.synology.com/de-de/dsm/cloud_services"
SRC_URI_BASE="https://global.download.synology.com/download/Tools/ChatClient/${PV}-40/Ubuntu"
SRC_URI="amd64? ( ${SRC_URI_BASE}/x86_64/Chat_${PV}-40_amd64.deb -> Chat_${PV}-40.deb )
x86? ( ${SRC_URI_BASE}/i686/Chat_${PV}-40_i386.deb -> Chat_${PV}-40.i386.deb )"
LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/icu"
RDEPEND="${DEPEND}"

QA_PREBUILT="*"
RESTRICT="strip"

S=${WORKDIR}

src_install() {
cp -a opt usr "${D}" || die
}
