# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=standalone
PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="A linter for performance anti-patterns in Python"
HOMEPAGE="https://github.com/tonybaloney/perflint"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

BDEPEND="
	dev-python/flit_core[${PYTHON_USEDEP}]
"

RDEPEND="
	dev-python/pylint[${PYTHON_USEDEP}]
"
