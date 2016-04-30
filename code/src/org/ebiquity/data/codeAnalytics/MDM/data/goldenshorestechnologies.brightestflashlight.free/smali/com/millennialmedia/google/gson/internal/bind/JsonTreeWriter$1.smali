.class final Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter$1;
.super Ljava/io/Writer;
.source "JsonTreeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x8
	name = null
.end annotation


# direct methods
.method constructor <init>()V
	.locals 0

	.prologue
	.line 35
	invoke-direct {p0}, Ljava/io/Writer;-><init>()V

	return-void
.end method


# virtual methods
.method public close()V
	.locals 1
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 43
	new-instance v0, Ljava/lang/AssertionError;

	invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

	throw v0
.end method

.method public flush()V
	.locals 1
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 40
	new-instance v0, Ljava/lang/AssertionError;

	invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

	throw v0
.end method

.method public write([CII)V
	.locals 1
	.param p1, "buffer"	# [C
	.param p2, "offset"	# I
	.param p3, "counter"	# I

	.prologue
	.line 37
	new-instance v0, Ljava/lang/AssertionError;

	invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

	throw v0
.end method
