all: .SRCINFO

.SRCINFO: PKGBUILD
	rm -f *.tar.gz *.tar.zst
	updpkgsums
	makepkg --verifysource
	makepkg --cleanbuild --force
	namcap PKGBUILD *.tar.zst
	makepkg --printsrcinfo > $@
