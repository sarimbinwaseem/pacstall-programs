pkgname="linux-image-unsigned-stable-deb"
gives="linux-image-unsigned-6.15.7-061507-generic"
pkgver="6.15.7"
buildver="6.15.7-061507.202507171742"
arch=('arm64' 'amd64')
sha256sums_arm64=("8f81946655cf1933fd36a6635a489528c40e9d7dec6a8da95a7ad944ec383244")
sha256sums_amd64=("117cb8ed8472feb9ab03fee6f2c4ee85b923505c496aeab44f73e10c6d32b18d")
source=("https://kernel.ubuntu.com/~kernel-ppa/mainline/v${pkgver}/${CARCH}/${gives}_${buildver}_${CARCH}.deb")
pkgdesc="Ubuntu Linux stable kernel (Unsigned image)"
pacdeps=("linux-headers-generic-stable-deb" "linux-modules-stable-deb")
maintainer=("Oren Klopfer <oren@taumoda.com>")
repology=("project: linux" "repo: distrowatch")
