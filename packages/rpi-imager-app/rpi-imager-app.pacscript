pkgname="rpi-imager-app"
gives="rpi-imager"
arch=("amd64" "arm64")
pkgver="1.9.6"
repology=("project: rpi-imager")
pkgdesc="The home of Raspberry Pi Imager, a user-friendly tool for creating bootable media for Raspberry Pi devices"
maintainer=("James Ed Randson <jimedrand@disroot.org>")
source_amd64=("https://github.com/raspberrypi/${gives}/releases/download/v${pkgver}/Raspberry_Pi_Imager-${pkgver}-x86_64.AppImage")
sha256sums_amd64=("029a8d25d490524e632cbc760c10fface2d453e88d1083dad4274d20481f3cfc")
source_arm64=("https://github.com/raspberrypi/${gives}/releases/download/v${pkgver}/Raspberry_Pi_Imager-${pkgver}-aarch64.AppImage")
sha256sums_arm64=("abdedf1d587afd46a32cf2fe9d9a4188cfe9803b05fb72e443ce74b24b8b8585")

package() {
  if [[ ${CARCH} == amd64 ]]; then
    gnuarch="x86_64"
  else
    gnuarch="aarch64"
  fi

  install -Dm755 "Raspberry_Pi_Imager-${pkgver}-${gnuarch}.AppImage" "${pkgdir}/usr/bin/rpi-imager"
  install -d "${pkgdir}/usr/share/applications"
  cat << EOF > "${pkgdir}/usr/share/applications/rpi-imager.desktop"
[Desktop Entry]
Type=Application
Name=Raspberry Pi Imager
Comment=User-friendly tool for creating bootable media for Raspberry Pi devices
Exec=/usr/bin/rpi-imager
Icon=rpi-imager
Terminal=false
Categories=Application;Utilities
EOF
}
