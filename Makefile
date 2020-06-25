# $NetBSD: Makefile,v 1.29 2020/06/25 05:42:38 schmonz Exp $
#

DISTNAME=		dot-forward-0.71
PKGREVISION=		3
CATEGORIES=		mail
MASTER_SITES=		http://cr.yp.to/software/

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		https://cr.yp.to/dot-forward.html
COMMENT=		Reads sendmail's .forward files under qmail
LICENSE=		public-domain

DEPENDS+=		qmail>=1.03nb7:../../mail/qmail

DJB_BUILD_TARGETS=	install instcheck

DJB_RESTRICTED=		no

INSTALLATION_DIRS=	${PKGMANDIR}

SUBST_CLASSES+=		djberrno

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	do-configure
SUBST_FILES.paths=	hier.c
SUBST_VARS.paths=	PKGMANDIR

.include "../../mk/djbware.mk"
.include "../../mk/bsd.pkg.mk"
