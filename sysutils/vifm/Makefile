# $NetBSD: Makefile,v 1.22 2015/06/12 10:51:18 wiz Exp $
#

DISTNAME=	vifm-0.7.8
PKGREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vifm/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://vifm.info/
COMMENT=	Ncurses based file manager with vi like keybindings

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake perl

INCOMPAT_CURSES=	NetBSD-1.5*-* NetBSD-1.6[-_.]*-*
INCOMPAT_CURSES+=	NetBSD-1.6[A-Z]-* NetBSD-1.6Z[A-C]*-*

ppre-configure:
	@${SED} -e "s/cfg.use_screen = 0/cfg.use_screen = 1/" \
		-e "s,/usr/local,${PREFIX},g" \
		${WRKSRC}/src/config.c > ${WRKSRC}/src/config.c.new && \
		${MV} ${WRKSRC}/src/config.c.new ${WRKSRC}/src/config.c
	@${SED} -e "s/USE_SCREEN=0/USE_SCREEN=1/" \
		${WRKSRC}/src/vifmrc0.1 > ${WRKSRC}/src/vifmrc0.1.new && \
		${MV} ${WRKSRC}/src/vifmrc0.1.new ${WRKSRC}/src/vifmrc0.1

.include "../../devel/ncursesw/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
