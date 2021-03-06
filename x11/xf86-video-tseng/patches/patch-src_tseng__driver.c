$NetBSD: patch-src_tseng__driver.c,v 1.1 2015/04/02 22:16:48 tnn Exp $

From d2d5c8437e401181f56804cc68594c4831a0983d Mon Sep 17 00:00:00 2001
From: Adam Jackson <ajax@redhat.com>
Date: Tue, 25 Sep 2012 08:55:02 -0400
Subject: Remove mibstore.h

Signed-off-by: Adam Jackson <ajax@redhat.com>

diff --git a/src/tseng_driver.c b/src/tseng_driver.c
index ffafb19..0db62e5 100644
--- src/tseng_driver.c
+++ src/tseng_driver.c
@@ -39,9 +39,6 @@
 /* All drivers initialising the SW cursor need this */
 #include "mipointer.h"
 
-/* All drivers implementing backing store need this */
-#include "mibstore.h"
-
 #include "fb.h"
 
 #if GET_ABI_MAJOR(ABI_VIDEODRV_VERSION) < 6
@@ -1453,7 +1450,6 @@ TsengScreenInit(SCREEN_INIT_ARGS_DECL)
 	}
     }
 
-    miInitializeBackingStore(pScreen);
     xf86SetSilkenMouse(pScreen);
     /* Initialise cursor functions */
     miDCInitialize(pScreen, xf86GetPointerScreenFuncs());
