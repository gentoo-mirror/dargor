# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{8..12} )

inherit distutils-r1 pypi

DESCRIPTION="Jump-start into modern Python by forcing yourself to use f-strings"
HOMEPAGE="https://github.com/MichaelKim0407/flake8-use-fstring"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/flake8[${PYTHON_USEDEP}]
"
