# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python{2_5,2_6,2_7,3_2,3_3} )

inherit distutils-r1

DESCRIPTION="A helper library for integrating Pythos development in Emacs"
HOMEPAGE="http://github.com/jorgenschaefer/elpy"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

KEYWORDS="~amd64 ~x86"
LICENSE="GPL"
SLOT="0"

DEPEND="${RDEPEND}
|| ( dev-python/rope dev-python/jedi )
>=dev-python/pyflakes-0.8.1
>=dev-python/pip-1.4.1
>=dev-python/nose-1.3.0"
