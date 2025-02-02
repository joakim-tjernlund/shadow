#! /bin/sh

autoreconf -v -f --install "$(dirname "$0")" || exit 1

CFLAGS="-O2"
CFLAGS="$CFLAGS -Wall"
CFLAGS="$CFLAGS -Werror=implicit-function-declaration"

"$(dirname "$0")"/configure \
	CFLAGS="$CFLAGS" \
	--enable-lastlog \
	--enable-man \
	--enable-maintainer-mode \
	--enable-shared \
	--without-libpam \
	--with-selinux \
	"$@"
