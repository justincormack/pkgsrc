# $NetBSD: Makefile,v 1.18 2015/06/12 10:50:11 wiz Exp $

DISTNAME=	Chart-2.4.5
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	graphics perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Chart/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~chartgrp/
COMMENT=	Perl5 charting library
LICENSE=	${PERL5_LICENSE}

DEPENDS+=		p5-GD>=2.0:../../graphics/p5-GD

USE_LANGUAGES=		# empty

PERL5_PACKLIST=		auto/Chart/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
