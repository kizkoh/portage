# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="A Rust's package manager"
HOMEPAGE="http://crates.io/"

LICENSE="|| ( MIT Apache-2.0 )"
SLOT="0"
KEYWORDS=""

IUSE=""

TRIPLE="x86_64-unknown-linux-gnu"
# TRIPLE="$(/usr/bin/gcc -dumpmachine)"
SRC_URI="https://static.rust-lang.org/cargo-dist/cargo-nightly-${TRIPLE}.tar.gz"


DEPEND=">=dev-lang/rust-999-r1"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	mv cargo-nightly-${TRIPLE} ${PN}-${PV}
}

src_prepare() {
	epatch "${FILESDIR}/${PN}-no-sanity-check.patch"
}


src_configure() {
	:
}

src_compile(){
	:
}

src_install() {
	./install.sh --prefix=/usr
}