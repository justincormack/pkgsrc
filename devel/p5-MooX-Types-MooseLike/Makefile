# $NetBSD: Makefile,v 1.9 2015/06/12 10:49:29 wiz Exp $

DISTNAME=	MooX-Types-MooseLike-0.28
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/M/MA/MATEU/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MooX-Types-MooseLike/
COMMENT=	Some Moosish types and a type builder
LICENSE=	${PERL5_LICENSE}

BUILD_DEPENDS+=	p5-Moo>=0.091010:../../devel/p5-Moo
BUILD_DEPENDS+=	p5-Test-Fatal-[0-9]*:../../devel/p5-Test-Fatal
DEPENDS+=	p5-Module-Runtime>=0.012:../../devel/p5-Module-Runtime

PERL5_PACKLIST=	auto/MooX/Types/MooseLike/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
