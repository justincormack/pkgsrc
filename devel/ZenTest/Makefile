# $NetBSD: Makefile,v 1.22 2015/02/01 13:42:42 taca Exp $

DISTNAME=	ZenTest-4.11.0
CATEGORIES=	devel

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://www.zenspider.com/ZSS/Products/ZenTest/
COMMENT=	Testing utilities for Ruby
LICENSE=	mit

CONFLICTS+=	ruby[1-9][0-9][0-9]-ZenTest-[0-9]* ZenTest-[0-9]*

RUBYGEMS_REQD=	1.8

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
