.class public final Lcom/millennialmedia/google/gson/JsonSyntaxException;
.super Lcom/millennialmedia/google/gson/JsonParseException;
.source "JsonSyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
	.locals 0
	.param p1, "msg"	# Ljava/lang/String;

	.prologue
	.line 30
	invoke-direct {p0, p1}, Lcom/millennialmedia/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

	.line 31
	return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
	.locals 0
	.param p1, "msg"	# Ljava/lang/String;
	.param p2, "cause"	# Ljava/lang/Throwable;

	.prologue
	.line 34
	invoke-direct {p0, p1, p2}, Lcom/millennialmedia/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

	.line 35
	return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
	.locals 0
	.param p1, "cause"	# Ljava/lang/Throwable;

	.prologue
	.line 45
	invoke-direct {p0, p1}, Lcom/millennialmedia/google/gson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

	.line 46
	return-void
.end method
