# $NetBSD: Makefile,v 1.9 2015/04/25 14:20:19 tnn Exp $
#

DISTNAME=	Mixer-0.1.1
PKGNAME=	deforaos-mixer-0.1.1
PKGREVISION=	8
CATEGORIES=	audio
MASTER_SITES=	http://www.defora.org/os/download/download/3705/

MAINTAINER=	khorben@defora.org
HOMEPAGE=	http://www.defora.org/
COMMENT=	DeforaOS desktop volume mixer

LICENSE=	gnu-gpl-v3

USE_TOOLS+=	pkg-config
USE_TOOLS+=	xgettext

MAKE_FLAGS+=	DESTDIR=${DESTDIR}
MAKE_FLAGS+=	PREFIX=${PREFIX}

.include "options.mk"

.include "../../x11/deforaos-libdesktop/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
