all: .SRCINFO lint

.SRCINFO: PKGBUILD
	updpkgsums
	makepkg --verifysource --force
	makepkg --cleanbuild --force
	makepkg --printsrcinfo > $@

lint:
	namcap PKGBUILD *.tar.zst
	pkgctl license check

clean:
	rm -f *.tar.gz *.tar.zst

.PHONY: clean lint
