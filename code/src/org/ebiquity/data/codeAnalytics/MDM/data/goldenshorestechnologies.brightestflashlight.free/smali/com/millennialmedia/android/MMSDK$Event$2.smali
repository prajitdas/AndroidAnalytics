.class final Lcom/millennialmedia/android/MMSDK$Event$2;
.super Ljava/lang/Object;
.source "MMSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/MMSDK$Event;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x8
	name = null
.end annotation


# instance fields
.field final synthetic val$adImpl:Lcom/millennialmedia/android/MMAdImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
	.locals 0

	.prologue
	.line 348
	iput-object p1, p0, Lcom/millennialmedia/android/MMSDK$Event$2;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 4

	.prologue
	.line 353
	iget-object v1, p0, Lcom/millennialmedia/android/MMSDK$Event$2;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

	if-eqz v1, :cond_0

	iget-object v1, p0, Lcom/millennialmedia/android/MMSDK$Event$2;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

	if-eqz v1, :cond_0

	.line 357
	:try_start_0
	iget-object v1, p0, Lcom/millennialmedia/android/MMSDK$Event$2;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

	iget-object v2, p0, Lcom/millennialmedia/android/MMSDK$Event$2;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

	move-result-object v2

	invoke-interface {v1, v2}, Lcom/millennialmedia/android/RequestListener;->MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 364
	:cond_0
	:goto_0
	return-void

	.line 359
	:catch_0
	move-exception v0

	.line 361
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "Exception raised in your MMAdListener: "

	const/4 v2, 0x1

	new-array v2, v2, [Ljava/lang/Object;

	const/4 v3, 0x0

	aput-object v0, v2, v3

	invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

	goto :goto_0
.end method
