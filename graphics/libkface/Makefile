# $NetBSD: Makefile,v 1.27 2015/04/25 14:23:16 tnn Exp $
#

PKGNAME=	libkface-4.4.0
PKGREVISION=	2
DISTNAME=	digikam-4.4.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_KDE:=digikam/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.digikam.org/
COMMENT=	LibFace Library interface for KDE
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	automoc4>=0.9.83:../../devel/automoc4

USE_LANGUAGES=		c c++
USE_TOOLS+=		pkg-config

PKGCONFIG_OVERRIDE+=	libkface.pc.cmake

WRKSRC=			${WRKDIR}/${DISTNAME}/extra/libkface

.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../graphics/opencv/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
