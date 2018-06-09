# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Upload file(s) & image(s) to sendit.nu blazing fast from cli.."
HOMEPAGE="https:/sendit.nu"
SRC_URI="https://${PN}.nu/archive/${PN}/${PV}/sendit-${PV}.tar.gz"

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


src_install() {
    dobin sendit
    dobin sendscreen

    elog "This is how you use sendit v2.0 (incl sendscreen)."
    elog "'sendit' without filename(s) will preview help and more altenatives, these three below is default.."
    elog "'sendit filename.txt' for upload a single file.."
    elog "'sendit filename.txt filename1.txt filename2.txt' for upload multiple files.."
    elog "'sendscreen' for drag an area on your screen. Upload will take place immediately without chance of interrupting.."

}

