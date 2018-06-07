# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit multilib unpacker eutils

DESCRIPTION="Synology Cloudstation is the syncservice for Synology NAS."
HOMEPAGE="https://www.synology.com/de-de/dsm/cloud_services"
SRC_URI_BASE="https://global.download.synology.com/download/Tools/CloudStationDrive/4.2.6-${PV}/Ubuntu/Installer/x86_64"
SRC_URI="amd64? ( ${SRC_URI_BASE}/synology-cloud-station-drive-${PV}.x86_64.deb -> synology-cloud-station-drive-${PV}.x86_64.deb )"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-libs/icu"
RDEPEND="${DEPEND}"

QA_PREBUILT="*"
RESTRICT="strip"

S="${WORKDIR}"

src_install() {
	insinto "/"
	doins -r *

	fperms 755 /opt/Synology/CloudStation/bin/launcher
	fperms 755 /usr/bin/synology-cloud-station-drive
}
