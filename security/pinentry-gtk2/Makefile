# $NetBSD: Makefile,v 1.34 2015/05/28 06:42:08 wiz Exp $

PKGNAME=		${DISTNAME:S/pinentry-/pinentry-gtk2-/}
COMMENT=		Applications for entering PINs or Passphrases, gtk2 enabled

.include		"../../security/pinentry/Makefile.common"

USE_TOOLS+=		pkg-config
CONFIGURE_ARGS+=	--enable-pinentry-gtk2
CONFIGURE_ARGS+=	--disable-pinentry-curses
#CONFIGURE_ARGS+=	--disable-fallback-curses
CONFIGURE_ARGS+=	--disable-pinentry-gtk
CONFIGURE_ARGS+=	--disable-pinentry-qt
CONFIGURE_ARGS+=	--disable-pinentry-qt4

INSTALL_DIRS=		gtk+-2

BUILDLINK_API_DEPENDS.libgpg-error+=	libgpg-error>=1.0.0
.include "../../x11/gtk2/buildlink3.mk"
#.include "../../security/libgpg-error/buildlink3.mk"
#.include "../../security/libksba/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
