# $NetBSD: buildlink3.mk,v 1.6 2015/04/18 03:36:23 rodent Exp $

BUILDLINK_TREE+=	libzrtpcpp

.if !defined(LIBZRTPCPP_BUILDLINK3_MK)
LIBZRTPCPP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libzrtpcpp+=	libzrtpcpp>=4.4.0
BUILDLINK_ABI_DEPENDS.libzrtpcpp?=	libzrtpcpp>=4.4.0
BUILDLINK_PKGSRCDIR.libzrtpcpp?=	../../net/libzrtpcpp

pkgbase := libzrtpcpp
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.libzrtpcpp:Msqlite3)
.include "../../databases/sqlite3/buildlink3.mk"
.endif

.include "../../mk/pthread.buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../net/ccrtp/buildlink3.mk"
.endif # LIBZRTPCPP_BUILDLINK3_MK

BUILDLINK_TREE+=	-libzrtpcpp
