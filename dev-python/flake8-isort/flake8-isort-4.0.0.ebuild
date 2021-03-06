# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..9} )

inherit distutils-r1

DESCRIPTION="Flake8 plugin that integrates isort"
HOMEPAGE="https://github.com/gforcada/flake8-isort"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-python/flake8-3.2.1[${PYTHON_USEDEP}]
	>=dev-python/isort-4.3.5[${PYTHON_USEDEP}]
	>=dev-python/testfixtures-6.8.0[${PYTHON_USEDEP}]
"
