.class public Lcom/millennialmedia/android/RequestListener$RequestListenerImpl;
.super Ljava/lang/Object;
.source "RequestListener.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/RequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x9
	name = "RequestListenerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
	.locals 0

	.prologue
	.line 43
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
	.locals 2
	.param p1, "mmAd"	# Lcom/millennialmedia/android/MMAd;

	.prologue
	.line 48
	const-string v0, "MillennialMediaSDK"

	const-string v1, "Millennial Media Ad View overlay launched"

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 49
	return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
	.locals 2
	.param p1, "mmAd"	# Lcom/millennialmedia/android/MMAd;

	.prologue
	.line 54
	const-string v0, "MillennialMediaSDK"

	const-string v1, "Millennial Media Ad View caching request"

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 55
	return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
	.locals 2
	.param p1, "mmAd"	# Lcom/millennialmedia/android/MMAd;

	.prologue
	.line 60
	const-string v0, "MillennialMediaSDK"

	const-string v1, "Ad request succeeded"

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 61
	return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
	.locals 5
	.param p1, "mmAd"	# Lcom/millennialmedia/android/MMAd;
	.param p2, "error"	# Lcom/millennialmedia/android/MMException;

	.prologue
	.line 66
	const-string v0, "MillennialMediaSDK"

	const-string v1, "Ad request failed with error: %d %s."

	const/4 v2, 0x2

	new-array v2, v2, [Ljava/lang/Object;

	const/4 v3, 0x0

	invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

	move-result v4

	invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v4

	aput-object v4, v2, v3

	const/4 v3, 0x1

	invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

	move-result-object v4

	aput-object v4, v2, v3

	invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 67
	return-void
.end method
