# $NetBSD: buildlink3.mk,v 1.6 2015/06/04 20:09:00 szptvlfn Exp $

BUILDLINK_TREE+=	hs-blaze-markup

.if !defined(HS_BLAZE_MARKUP_BUILDLINK3_MK)
HS_BLAZE_MARKUP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-blaze-markup+=	hs-blaze-markup>=0.6.1
BUILDLINK_ABI_DEPENDS.hs-blaze-markup+=	hs-blaze-markup>=0.6.1.1nb3
BUILDLINK_PKGSRCDIR.hs-blaze-markup?=	../../textproc/hs-blaze-markup

.include "../../devel/hs-blaze-builder/buildlink3.mk"
.include "../../devel/hs-text/buildlink3.mk"
.endif	# HS_BLAZE_MARKUP_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-blaze-markup
