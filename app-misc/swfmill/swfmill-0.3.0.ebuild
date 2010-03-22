# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="XML-based SWF (Shockwave Flash) processing tool"
HOMEPAGE="http://swfmill.org/"
SRC_URI="http://swfmill.org/releases/pre/${P}.tar.gz"
LICENSE="GPL"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND=">=dev-libs/libxml2-2.6.16
	>=dev-libs/libxslt-1.1.4
	>=media-libs/freetype-2.1.9-r1
	>=media-libs/libpng-1.2.8
	>=media-libs/jpeg-6b-r7"

#RDEPEND=""

S=${WORKDIR}/${P}

src_compile() {
	local myconf;
	econf ${myconf}
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
