# $NetBSD: Makefile,v 1.25 2015/06/12 10:51:08 wiz Exp $

DISTNAME=		GnuPG-Interface-0.52
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
CATEGORIES=		security perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=GnuPG/}

MAINTAINER=		pkgsrc-users@NetBSD.org
#HOMEPAGE=		http://gnupg-interface.sourceforge.net/
HOMEPAGE=		http://search.cpan.org/dist/GnuPG-Interface/
COMMENT=		Perl interface to GnuPG
LICENSE=		${PERL5_LICENSE}

DEPENDS+=		gnupg>=1.2.3:../../security/gnupg
DEPENDS+=		p5-Moo-[0-9]*:../../devel/p5-Moo
DEPENDS+=		p5-MooX-late-[0-9]*:../../devel/p5-MooX-late
DEPENDS+=		p5-MooX-HandlesVia-[0-9]*:../../devel/p5-MooX-HandlesVia

PERL5_PACKLIST=		auto/GnuPG/Interface/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
