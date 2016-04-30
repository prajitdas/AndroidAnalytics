.class Lcom/millennialmedia/android/MMWebView$6;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/MMWebView;->setMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$adView:Lcom/millennialmedia/android/MMAdView;

.field final synthetic val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V
	.locals 0

	.prologue
	.line 395
	iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$6;->val$adView:Lcom/millennialmedia/android/MMAdView;

	iput-object p3, p0, Lcom/millennialmedia/android/MMWebView$6;->val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method

.method private handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
	.locals 3
	.param p1, "resizeParams"	# Lcom/millennialmedia/android/DTOResizeParameters;

	.prologue
	.line 410
	new-instance v0, Lcom/millennialmedia/android/MMAdView$BannerBounds;

	iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$6;->val$adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

	invoke-direct {v0, v2, p1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

	.line 412
	.local v0, "bounds":Lcom/millennialmedia/android/MMAdView$BannerBounds;
	invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView$6;->setUnresizeParameters()V

	.line 414
	iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

	move-result-object v1

	.line 415
	.local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
	invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

	.line 416
	return-void
.end method

.method private setUnresizeParameters()V
	.locals 3

	.prologue
	.line 420
	iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	# invokes: Lcom/millennialmedia/android/MMWebView;->hasDefaultResizeParams()Z
	invoke-static {v1}, Lcom/millennialmedia/android/MMWebView;->access$200(Lcom/millennialmedia/android/MMWebView;)Z

	move-result v1

	if-eqz v1, :cond_1

	.line 422
	iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

	move-result-object v0

	.line 423
	.local v0, "oldParams":Landroid/view/ViewGroup$LayoutParams;
	iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

	iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

	.line 424
	iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

	iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

	.line 425
	iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	iget v1, v1, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

	if-gtz v1, :cond_0

	.line 427
	iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->getWidth()I

	move-result v2

	iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

	.line 429
	:cond_0
	iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	iget v1, v1, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

	if-gtz v1, :cond_1

	.line 431
	iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->getHeight()I

	move-result v2

	iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

	.line 434
	.end local v0	# "oldParams":Landroid/view/ViewGroup$LayoutParams;
	:cond_1
	return-void
.end method


# virtual methods
.method public run()V
	.locals 3

	.prologue
	.line 399
	iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	monitor-enter v1

	.line 401
	:try_start_0
	iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->val$adView:Lcom/millennialmedia/android/MMAdView;

	iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$6;->val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

	invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V

	.line 402
	iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

	invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMWebView$6;->handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V

	.line 403
	iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	const-string v2, "javascript:MMJS.sdk.setState(\'resized\');"

	invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

	.line 404
	iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

	const-string v2, "resized"

	iput-object v2, v0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

	.line 405
	monitor-exit v1

	.line 406
	return-void

	.line 405
	:catchall_0
	move-exception v0

	monitor-exit v1
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	throw v0
.end method
