# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Upload file(s) & image(s) to sendit.nu blazing fast from cli.."
HOMEPAGE="https://www.sendit.nu"
SRC_URI="https://www.${PN}.nu/archive/${PN}/${PV}/sendit-${PV}.tar.gz"

LICENSE=""
KEYWORDS="~amd64"
IUSE="curl jq ssl"
SLOT="0"

DEPEND="
        ssl? ( net-misc/curl )
	app-misc/jq"

RDEPEND="${DEPEND}"


src_install() {
    dobin sendit.sh

    elog "This is how you use sendit v2.0 (incl sendscreen)."
    elog "'sendit' without filename(s) will preview help and more altenatives, these three below is default.."
    elog "'sendit filename.txt' for upload a single file.."
    elog "'sendit filename.txt filename1.txt filename2.txt' for upload multiple files.."

}

