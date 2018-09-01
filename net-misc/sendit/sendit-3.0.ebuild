# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Upload file(s) & image(s) to sendit.nu blazing fast from cli.."
HOMEPAGE="https:/${PN}.nu"
SRC_URI="https://${PN}.nu/archive/${PN}/${PV}/${PN}-v${PV}.tar.gz"

LICENSE=""
KEYWORDS="~amd64"
IUSE="curl jq maim oniguruma scrot ssl unicode xclip xsel"
SLOT="0"

RDEPEND="
         app-misc/jq
         ssl? ( net-misc/curl )"

DEPEND="$RDEPEND
        media-gfx/scrot
        media-gfx/maim
        x11-misc/xclip
        x11-misc/xsel"

#REQUIRED_USE="
#         ssl? ( net-misc/curl )"


src_unpack() {
	if [ "${A}" != "" ]; then
		unpack ${PN}-${PV}.tar.gz
	fi
}

src_install() {
                sh ./install.sh || die
}

