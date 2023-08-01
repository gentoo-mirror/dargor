# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{8..12} )

inherit distutils-r1 pypi

DESCRIPTION="Flake8 plugin to warn against unused arguments in functions"
HOMEPAGE="https://github.com/nhoad/flake8-unused-arguments"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/flake8[${PYTHON_USEDEP}]
"
