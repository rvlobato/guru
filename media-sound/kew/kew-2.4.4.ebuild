# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8


DESCRIPTION="kew (/kjuː/) is a command-line music player for Linux."
HOMEPAGE="https://github.com/ravachol/kew"
SRC_URI="https://github.com/ravachol/kew/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-2"
# Bundled programs
LICENSE+=" MIT || ( Unlicense MIT-0 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="media-video/ffmpeg
dev-libs/glib
sci-libs/fftw
media-gfx/chafa
media-libs/freeimage
media-libs/opus media-libs/opusfile
media-libs/libvorbis"
RDEPEND=${DEPEND}



src_install()
{
 	emake DESTDIR="${D}" install
}