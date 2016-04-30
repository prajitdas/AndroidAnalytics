.class final Lcom/millennialmedia/android/AdCache$2;
.super Ljava/lang/Object;
.source "AdCache.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x8
	name = null
.end annotation


# direct methods
.method constructor <init>()V
	.locals 0

	.prologue
	.line 353
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
	.locals 2
	.param p1, "file"	# Ljava/io/File;

	.prologue
	.line 357
	invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

	move-result v0

	if-nez v0, :cond_0

	invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

	move-result-object v0

	const-string v1, "ad.dat"

	invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v0

	if-eqz v0, :cond_0

	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method
