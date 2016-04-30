.class public Lcom/jumptap/adtag/utils/JtException;
.super Ljava/lang/Exception;
.source "JtException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
	.locals 0
	.param p1, "message"	# Ljava/lang/String;

	.prologue
	.line 14
	invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

	.line 15
	return-void
.end method
