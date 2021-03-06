# $NetBSD: Makefile,v 1.5 2015/06/14 21:50:07 prlw1 Exp $

DISTNAME=	libepoxy-1.2
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=anholt/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/anholt/libepoxy/
COMMENT=	Library for OpenGL function pointer management
LICENSE=	mit

BUILD_DEPENDS+=	${PYPKGPREFIX}-expat>=0:../../textproc/py-expat

USE_TOOLS+=	pkg-config autoconf autoreconf automake
USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
PYTHON_FOR_BUILD_ONLY=	yes

PKGCONFIG_OVERRIDE+=	epoxy.pc.in

pre-configure:
	cd ${WRKSRC} && autoreconf -vif

.include "../../mk/bsd.prefs.mk"

PLIST_VARS+=		egl
.if ${X11_TYPE} == "modular" || exists(${X11BASE}/include/EGL/egl.h)
PLIST.egl=		yes
CONFIGURE_ENV+=		PKGSRC_BUILD_EGL=yes
.else
CONFIGURE_ENV+=		PKGSRC_BUILD_EGL=no
.endif

.include "../../lang/python/tool.mk"
.include "../../devel/xorg-util-macros/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
