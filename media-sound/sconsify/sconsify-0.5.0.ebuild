# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit multilib

DESCRIPTION="A spotify console application"
HOMEPAGE="http://www.sconsify.org"
SRC_URI="https://github.com/fabiofalci/sconsify/archive/next-20180428.tar.gz"


LICENSE="Apache License 2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="hardened"

DEPEND="dev-libs/libspotify
        dev-go/glide "

S=${WORKDIR}/sconsify-next-20180428


src_compile() {
        mkdir -p "$(WORKDIR)/$(P)/homedir/go/src"
        GOPATH="${WORKDIR}/${P}/homedir/go/src"
        export "${WORKDIR}/${P}/homedir/go/src"

               make
}

src_install() {
        make install
}
