# $NetBSD: Makefile,v 1.11 2015/03/13 17:02:31 tnn Exp $
#

DISTNAME=	asm2html-1.4
CATEGORIES=	devel
MASTER_SITES=	http://virtus.ath.cx/asm2html/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://virtus.ath.cx/asm2html/
COMMENT=	Tool to convert NASM source files to HTML

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

GNU_CONFIGURE=	YES

MAKE_INSTALL_FLAGS+=	PKGMANDIR=${PKGMANDIR:Q}

.include "../../mk/bsd.pkg.mk"
