# Maintainer: Omar Valdez <omarantoniovaldezf2@gmail.com>
#
# shellcheck disable=SC2034,SC2164,SC2154

pkgname=brighter-bin
pkgver=0.3.0
pkgrel=1
pkgdesc="Control and fetch brightness information for backlight and led devices"
url='https://github.com/ValdezFOmar/brighter'
license=('MIT')
provides=('brighter')
depends=('gcc-libs' 'glibc')
arch=('x86_64')
source=("https://github.com/ValdezFOmar/brighter/releases/download/v$pkgver/brighter-v$pkgver-x86_64-unknown-linux-gnu.tar.gz")
sha256sums=('82b6abf5211aef349315498f7611546b73622749f4f71e58271328be10cf7e74')

package() {
    cd "$srcdir"
    install -Dm755 brighter "$pkgdir/usr/bin/brighter"
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
