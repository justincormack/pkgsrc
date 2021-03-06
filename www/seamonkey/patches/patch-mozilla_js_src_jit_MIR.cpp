$NetBSD: patch-mozilla_js_src_jit_MIR.cpp,v 1.1 2015/03/17 19:50:42 ryoon Exp $

--- mozilla/js/src/jit/MIR.cpp.orig	2015-03-09 05:34:37.000000000 +0000
+++ mozilla/js/src/jit/MIR.cpp
@@ -68,7 +68,7 @@ MDefinition::PrintOpcodeName(FILE *fp, M
     const char *name = names[op];
     size_t len = strlen(name);
     for (size_t i = 0; i < len; i++)
-        fprintf(fp, "%c", tolower(name[i]));
+        fprintf(fp, "%c", tolower(((unsigned char)name[i])));
 }
 
 static MConstant *
