# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit unpacker

PN="HyperBackupExplorer"
DESCRIPTION="A desktop tool for browsing, decrypting, and extracting different versions of backup data in Hyper Backup repositories"
HOMEPAGE="http://www.synology.com/"
SRC_URI="http://global.download.synology.com/download/Tools/${PN}/2.1.2-${PV}/Linux/x86_64/${PN}-2.1.2-${PV}-linux.tar.bz2"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror strip"
IUSE="xcb linuxfb minimal offscreen"

RDEPEND="dev-qt/qtgui media-gfx/asymptote"
DEPEND="${RDEPEND}"

S=${WORKDIR}

src_unpack() {
    if [ "${A}" != "" ]; then
    unpack ${A}
    fi
}

src_install() {
   echo $WORKDIR
    ls $WORKDIR
    echo "S=$S"
    echo "PV=$PV"
    echo "PVR=$PVR"
    insinto /opt/Synology/HyperBackupExplorer/target/lib/
#    doins -r /usr/bin/local/
    doins -r ${WORKDIR}/HyperBackupExplorer 
    elog ""
    elog "GUI is now supported for this tool. If you want to runthis application in GUI then please do:"
    elog "Start the decryption tool from /opt/Synology/SynologyCloudSyncDecryptionTool"
    elog "chmod +x /opt/Synology/SynologyCloudSyncDecryptionTool/SynologyCloudSyncDecryptionTool"
    elog "cd /opt/Synology/SynologyCloudSyncDecryptionTool/; ./SynologyCloudSyncDecryptionTool"
    elog ""
    elog "This is only temporary solution for the GUI environment, will be fixed soon."
    elog ""

}
