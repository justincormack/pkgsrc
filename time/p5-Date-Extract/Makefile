# $NetBSD: Makefile,v 1.3 2015/06/12 10:51:42 wiz Exp $

DISTNAME=	Date-Extract-0.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	time
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Date/}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Date-Extract/
COMMENT=	Perl 5 module to extract probable dates from strings
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Test-MockTime-[0-9]*:../../time/p5-Test-MockTime
DEPENDS+=	p5-DateTime-Format-Natural-[0-9]*:../../time/p5-DateTime-Format-Natural
DEPENDS+=	p5-Class-Data-Inheritable-[0-9]*:../../devel/p5-Class-Data-Inheritable

PERL5_PACKLIST=	auto/Date/Extract/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
