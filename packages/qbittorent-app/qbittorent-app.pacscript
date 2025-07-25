pkgname="qbittorent-app"
gives="qbittorent"
arch=("amd64")
pkgver="5.1.2"
url='https://www.qbittorrent.org/'
pkgdesc="Free and reliable P2P Bittorent client"
maintainer=("Sarim <sarimw@proton.me>")
source=("https://webwerks.dl.sourceforge.net/project/qbittorrent/qbittorrent-appimage/qbittorrent-${pkgver}/qbittorrent-${pkgver}_x86_64.AppImage")
sha256sums=("fc5ca97be2ee6f64622440e6795139d18ac9ab15838677ae5d94b4152676d6b4")

package() {
  install -Dm755 "qbittorrent-${pkgver}_x86_64.AppImage" "${pkgdir}/usr/lib/${gives}/${gives}"
  install -d "${pkgdir}/usr/share/applications"
  cat << EOF > "${pkgdir}/usr/share/applications/qbittorent.desktop"
[Desktop Entry]
Type=Application
Name=qBittorent
Comment=sadasd
Exec=/usr/lib/${gives}/${gives} %f
Icon=qbittorent
Terminal=false
Categories=Application;Utilities
EOF
}
