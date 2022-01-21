# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Dargor's most common routines"
HOMEPAGE="https://github.com/dargor/dargor-py"
SRC_URI="https://github.com/dargor/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="pandas"

RDEPEND="
	dev-python/matplotlib[${PYTHON_USEDEP}]
	pandas? (
		dev-python/pandas[${PYTHON_USEDEP}]
	)
	dev-python/pygments[${PYTHON_USEDEP}]
	sys-apps/util-linux
"

python_prepare_all() {
	# depends on geoip2
	rm dargor/geoip.py || die
	distutils-r1_python_prepare_all
}