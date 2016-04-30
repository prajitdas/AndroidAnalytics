.class Lcom/millennialmedia/android/CachedVideoPlayerActivity;
.super Lcom/millennialmedia/android/VideoPlayerActivity;
.source "CachedVideoPlayerActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;
	}
.end annotation


# static fields
.field private static final STATIC_HUD_ID:I = 0x192

.field private static final STATIC_HUD_SECONDS_ID:I = 0x191


# instance fields
.field private buttonsLayout:Landroid/widget/RelativeLayout;

.field private hasCountdownHud:Z

.field hasLoadedCompletionUrl:Z

.field hasWebOverlay:Z

.field private hudSeconds:Landroid/widget/TextView;

.field private hudStaticText:Landroid/widget/TextView;

.field private lastVideoPosition:I

.field private logTimeAndEventhandler:Landroid/os/Handler;

.field private mWebView:Lcom/millennialmedia/android/MMWebView;

.field private videoAd:Lcom/millennialmedia/android/VideoAd;


# direct methods
.method constructor <init>()V
	.locals 1

	.prologue
	.line 35
	invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;-><init>()V

	.line 48
	const/4 v0, 0x1

	iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

	.line 743
	return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;
	.locals 1
	.param p0, "x0"	# Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	.prologue
	.line 35
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/MMWebView;
	.locals 1
	.param p0, "x0"	# Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	.prologue
	.line 35
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	return-object v0
.end method

.method private calculateHudSecondsText()Ljava/lang/String;
	.locals 4

	.prologue
	.line 656
	iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

	if-eqz v0, :cond_0

	.line 657
	iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

	div-int/lit16 v0, v0, 0x3e8

	invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

	move-result-object v0

	.line 662
	:goto_0
	return-object v0

	.line 658
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v0, :cond_1

	.line 660
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->duration:J

	const-wide/16 v2, 0x3e8

	div-long/2addr v0, v2

	invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

	move-result-object v0

	goto :goto_0

	.line 662
	:cond_1
	const-string v0, ""

	goto :goto_0
.end method

.method private dismissAfter(J)V
	.locals 2
	.param p1, "delayMillis"	# J

	.prologue
	.line 176
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	new-instance v1, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;

	invoke-direct {v1, p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V

	invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

	.line 185
	return-void
.end method

.method private fadeButton(Lcom/millennialmedia/android/VideoImage;)V
	.locals 5
	.param p1, "image"	# Lcom/millennialmedia/android/VideoImage;

	.prologue
	const/4 v4, 0x1

	.line 480
	move-object v1, p1

	.line 481
	.local v1, "videoImage":Lcom/millennialmedia/android/VideoImage;
	new-instance v0, Landroid/view/animation/AlphaAnimation;

	iget v2, v1, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

	iget v3, v1, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

	invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

	.line 482
	.local v0, "animation":Landroid/view/animation/AlphaAnimation;
	iget-wide v2, v1, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

	invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

	.line 483
	invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

	.line 484
	invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

	.line 485
	invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

	.line 486
	iget-object v2, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

	.line 487
	return-void
.end method

.method private fadeButtons()V
	.locals 7

	.prologue
	.line 211
	iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v3, :cond_3

	iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	if-eqz v3, :cond_3

	.line 213
	const/4 v0, 0x0

	.local v0, "i":I
	:goto_0
	iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

	move-result v3

	if-ge v0, v3, :cond_3

	.line 215
	iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

	move-result-object v2

	check-cast v2, Lcom/millennialmedia/android/VideoImage;

	.line 216
	.local v2, "videoImage":Lcom/millennialmedia/android/VideoImage;
	iget-boolean v3, v2, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

	if-nez v3, :cond_0

	.line 217
	iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	iget v4, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

	invoke-virtual {p0, v3, v4}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

	.line 218
	:cond_0
	iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

	move-result-object v3

	if-nez v3, :cond_1

	.line 219
	iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	iget-object v4, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	iget-object v5, v2, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

	invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 220
	:cond_1
	const/4 v1, 0x0

	.local v1, "j":I
	:goto_1
	iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

	move-result v3

	if-ge v1, v3, :cond_2

	.line 221
	iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

	move-result-object v3

	check-cast v3, Lcom/millennialmedia/android/VideoImage;

	iget-object v3, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

	.line 220
	add-int/lit8 v1, v1, 0x1

	goto :goto_1

	.line 222
	:cond_2
	const-string v3, "Button: %d alpha: %f"

	const/4 v4, 0x2

	new-array v4, v4, [Ljava/lang/Object;

	const/4 v5, 0x0

	invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v6

	aput-object v6, v4, v5

	const/4 v5, 0x1

	iget v6, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

	invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

	move-result-object v6

	aput-object v6, v4, v5

	invoke-static {v3, v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 213
	add-int/lit8 v0, v0, 0x1

	goto :goto_0

	.line 225
	.end local v0	# "i":I
	.end local v1	# "j":I
	.end local v2	# "videoImage":Lcom/millennialmedia/android/VideoImage;
	:cond_3
	return-void
.end method

.method private hideHud()V
	.locals 2

	.prologue
	const/4 v1, 0x4

	.line 667
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

	if-eqz v0, :cond_0

	.line 668
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

	.line 669
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	if-eqz v0, :cond_1

	.line 670
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

	.line 671
	:cond_1
	return-void
.end method

.method private initHudSeconds(Landroid/view/ViewGroup;)V
	.locals 6
	.param p1, "parent"	# Landroid/view/ViewGroup;

	.prologue
	const/4 v5, -0x2

	const/4 v4, 0x0

	.line 642
	new-instance v1, Landroid/widget/TextView;

	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

	iput-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	.line 643
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->calculateHudSecondsText()Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

	.line 644
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	const/4 v2, -0x1

	invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

	.line 645
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	const/16 v2, 0x191

	invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

	.line 646
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	const/high16 v2, 0x3f800000	# 1.0f

	const/high16 v3, -0x1000000

	invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

	.line 648
	new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 649
	.local v0, "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
	const/16 v1, 0xa

	invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 650
	const/4 v1, 0x0

	const/16 v2, 0x192

	invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

	.line 651
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 652
	return-void
.end method

.method private initHudStaticText(Landroid/view/ViewGroup;)V
	.locals 6
	.param p1, "parent"	# Landroid/view/ViewGroup;

	.prologue
	const/4 v5, -0x2

	const/4 v4, 0x0

	const/4 v3, 0x0

	.line 627
	new-instance v1, Landroid/widget/TextView;

	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

	iput-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

	.line 628
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

	const-string v2, " seconds remaining ..."

	invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

	.line 629
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

	const/4 v2, -0x1

	invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

	.line 630
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

	const/4 v2, 0x5

	invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

	.line 631
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

	const/16 v2, 0x192

	invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

	.line 632
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

	const/high16 v2, 0x3f800000	# 1.0f

	const/high16 v3, -0x1000000

	invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

	.line 634
	new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 635
	.local v0, "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
	const/16 v1, 0xa

	invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 636
	const/16 v1, 0xb

	invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 637
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

	invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 638
	return-void
.end method

.method private initWebOverlay()V
	.locals 7

	.prologue
	const/4 v6, -0x1

	.line 358
	new-instance v2, Lcom/millennialmedia/android/MMWebView;

	iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	iget-wide v4, v4, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

	invoke-direct {v2, v3, v4, v5}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

	iput-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	.line 359
	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	const/16 v3, 0x19d

	invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMWebView;->setId(I)V

	.line 361
	new-instance v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;

	invoke-direct {v0, p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V

	.line 373
	.local v0, "basicListener":Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;
	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	new-instance v3, Lcom/millennialmedia/android/InterstitialWebViewClient;

	iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

	invoke-direct {v3, v0, v4}, Lcom/millennialmedia/android/InterstitialWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

	invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

	.line 374
	new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 375
	.local v1, "webLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/16 v2, 0xd

	invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 376
	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v2, v1}, Lcom/millennialmedia/android/MMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

	.line 377
	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	const/4 v3, 0x0

	invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMWebView;->setBackgroundColor(I)V

	.line 379
	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v2, v2, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

	invoke-virtual {p0, v2}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

	.line 380
	return-void
.end method

.method private showHud()V
	.locals 6

	.prologue
	const/4 v5, 0x0

	.line 619
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v0, :cond_0

	.line 620
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-wide v1, v1, Lcom/millennialmedia/android/VideoAd;->duration:J

	const-wide/16 v3, 0x3e8

	div-long/2addr v1, v3

	invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

	.line 621
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

	invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

	.line 622
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

	.line 623
	return-void
.end method


# virtual methods
.method protected canFadeButtons()Z
	.locals 1

	.prologue
	.line 740
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

	if-eqz v0, :cond_0

	invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->canFadeButtons()Z

	move-result v0

	if-nez v0, :cond_1

	:cond_0
	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_1
	const/4 v0, 0x0

	goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
	.locals 9
	.param p1, "ev"	# Landroid/view/MotionEvent;

	.prologue
	const/4 v8, 0x1

	.line 694
	iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v4, :cond_4

	.line 696
	iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	if-eqz v4, :cond_0

	.line 697
	iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

	.line 699
	:cond_0
	iget-boolean v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

	if-nez v4, :cond_4

	.line 701
	const/4 v1, 0x0

	.local v1, "i":I
	:goto_0
	iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v4, v4, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

	move-result v4

	if-ge v1, v4, :cond_4

	.line 703
	iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v4, v4, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

	move-result-object v3

	check-cast v3, Lcom/millennialmedia/android/VideoImage;

	.line 704
	.local v3, "videoImage":Lcom/millennialmedia/android/VideoImage;
	iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	iget v5, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

	invoke-virtual {p0, v4, v5}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

	.line 705
	iget-wide v4, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

	const-wide/16 v6, 0x0

	cmp-long v4, v4, v6

	if-lez v4, :cond_2

	.line 708
	iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-static {v4, v8, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

	move-result-object v2

	.line 709
	.local v2, "message":Landroid/os/Message;
	iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	iget-wide v5, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

	invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

	.line 701
	.end local v2	# "message":Landroid/os/Message;
	:cond_1
	:goto_1
	add-int/lit8 v1, v1, 0x1

	goto :goto_0

	.line 714
	:cond_2
	invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

	move-result v4

	if-ne v4, v8, :cond_3

	.line 716
	invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->canFadeButtons()Z

	move-result v4

	if-eqz v4, :cond_1

	.line 718
	new-instance v0, Landroid/view/animation/AlphaAnimation;

	iget v4, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

	iget v5, v3, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

	invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

	.line 719
	.local v0, "animation":Landroid/view/animation/AlphaAnimation;
	iget-wide v4, v3, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

	invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

	.line 720
	invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

	.line 721
	invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

	.line 722
	invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

	.line 723
	iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

	goto :goto_1

	.line 726
	.end local v0	# "animation":Landroid/view/animation/AlphaAnimation;
	:cond_3
	invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

	move-result v4

	if-nez v4, :cond_1

	.line 728
	iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	iget v5, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

	invoke-virtual {p0, v4, v5}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

	goto :goto_1

	.line 734
	.end local v1	# "i":I
	.end local v3	# "videoImage":Lcom/millennialmedia/android/VideoImage;
	:cond_4
	invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

	move-result v4

	return v4
.end method

.method protected enableButtons()V
	.locals 4

	.prologue
	.line 676
	invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->enableButtons()V

	.line 677
	iget-boolean v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

	if-nez v2, :cond_0

	.line 679
	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v2, :cond_0

	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v2, v2, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	if-nez v2, :cond_1

	.line 687
	:cond_0
	return-void

	.line 681
	:cond_1
	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v2, v2, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

	move-result-object v0

	.local v0, "i$":Ljava/util/Iterator;
	:cond_2
	:goto_0
	invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

	move-result v2

	if-eqz v2, :cond_0

	invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Lcom/millennialmedia/android/VideoImage;

	.line 683
	.local v1, "image":Lcom/millennialmedia/android/VideoImage;
	iget-object v2, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	if-eqz v2, :cond_2

	.line 684
	iget-object v2, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	const/4 v3, 0x1

	invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

	goto :goto_0
.end method

.method protected errorPlayVideo(Ljava/lang/String;)V
	.locals 3
	.param p1, "error"	# Ljava/lang/String;

	.prologue
	.line 106
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v0, :cond_0

	.line 107
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

	.line 108
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v0, :cond_1

	.line 110
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "javascript:MMJS.cachedVideo.setError("

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, ");"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

	.line 112
	:cond_1
	invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

	.line 113
	return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
	.locals 13
	.param p1, "msg"	# Landroid/os/Message;

	.prologue
	.line 392
	iget v8, p1, Landroid/os/Message;->what:I

	packed-switch v8, :pswitch_data_0

	.line 475
	:cond_0
	:goto_0
	const/4 v8, 0x1

	return v8

	.line 395
	:pswitch_0
	invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->canFadeButtons()Z

	move-result v8

	if-eqz v8, :cond_0

	.line 397
	iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

	check-cast v8, Lcom/millennialmedia/android/VideoImage;

	invoke-direct {p0, v8}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButton(Lcom/millennialmedia/android/VideoImage;)V

	goto :goto_0

	.line 401
	:pswitch_1
	iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

	check-cast v3, Lcom/millennialmedia/android/VideoImage;

	.line 404
	.local v3, "image":Lcom/millennialmedia/android/VideoImage;
	:try_start_0
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	iget-object v9, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

	move-result v8

	const/4 v9, -0x1

	if-ne v8, v9, :cond_1

	.line 405
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	iget-object v9, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	iget-object v10, v3, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

	invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
	:try_end_0
	.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

	.line 412
	:cond_1
	:goto_1
	invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->canFadeButtons()Z

	move-result v8

	if-eqz v8, :cond_0

	.line 414
	invoke-direct {p0, v3}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButton(Lcom/millennialmedia/android/VideoImage;)V

	.line 415
	const-string v8, "Beginning animation to visibility. Fade duration: %d Button: %d Time: %d"

	const/4 v9, 0x3

	new-array v9, v9, [Ljava/lang/Object;

	const/4 v10, 0x0

	iget-wide v11, v3, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

	invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v11

	aput-object v11, v9, v10

	const/4 v10, 0x1

	iget-object v11, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	invoke-virtual {v11}, Landroid/widget/ImageButton;->getId()I

	move-result v11

	invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v11

	aput-object v11, v9, v10

	const/4 v10, 0x2

	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v11

	invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v11

	aput-object v11, v9, v10

	invoke-static {v8, v9}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	goto :goto_0

	.line 407
	:catch_0
	move-exception v1

	.line 409
	.local v1, "e":Ljava/lang/IllegalStateException;
	invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

	goto :goto_1

	.line 421
	.end local v1	# "e":Ljava/lang/IllegalStateException;
	.end local v3	# "image":Lcom/millennialmedia/android/VideoImage;
	:pswitch_2
	:try_start_1
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	if-eqz v8, :cond_7

	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v8}, Landroid/widget/VideoView;->isPlaying()Z

	move-result v8

	if-eqz v8, :cond_7

	.line 423
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v8}, Landroid/widget/VideoView;->getCurrentPosition()I

	move-result v0

	.line 425
	.local v0, "currentPosition":I
	iget v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

	if-le v0, v8, :cond_5

	.line 427
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v8, :cond_4

	.line 429
	iget v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

	if-nez v8, :cond_2

	.line 430
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	invoke-virtual {v8}, Lcom/millennialmedia/android/VideoAd;->logBeginEvent()V

	.line 431
	:cond_2
	const/4 v2, 0x0

	.local v2, "i":I
	:goto_2
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v8, v8, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

	move-result v8

	if-ge v2, v8, :cond_4

	.line 433
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v8, v8, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

	move-result-object v7

	check-cast v7, Lcom/millennialmedia/android/VideoLogEvent;

	.line 434
	.local v7, "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
	if-eqz v7, :cond_3

	.line 436
	iget-wide v8, v7, Lcom/millennialmedia/android/VideoLogEvent;->position:J

	iget v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

	int-to-long v10, v10

	cmp-long v8, v8, v10

	if-ltz v8, :cond_3

	iget-wide v8, v7, Lcom/millennialmedia/android/VideoLogEvent;->position:J

	int-to-long v10, v0

	cmp-long v8, v8, v10

	if-gez v8, :cond_3

	.line 438
	const/4 v4, 0x0

	.local v4, "j":I
	:goto_3
	iget-object v8, v7, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

	array-length v8, v8

	if-ge v4, v8, :cond_3

	.line 440
	iget-object v8, v7, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

	aget-object v8, v8, v4

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

	.line 438
	add-int/lit8 v4, v4, 0x1

	goto :goto_3

	.line 431
	.end local v4	# "j":I
	:cond_3
	add-int/lit8 v2, v2, 0x1

	goto :goto_2

	.line 446
	.end local v2	# "i":I
	.end local v7	# "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
	:cond_4
	iput v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

	.line 448
	:cond_5
	iget-boolean v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

	if-eqz v8, :cond_6

	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v8, :cond_6

	.line 450
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	new-instance v9, Ljava/lang/StringBuilder;

	invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

	const-string v10, "javascript:MMJS.cachedVideo.updateVideoSeekTime("

	invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v9

	int-to-float v10, v0

	const/high16 v11, 0x447a0000	# 1000.0f

	div-float/2addr v10, v11

	float-to-double v10, v10

	invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

	move-result-wide v10

	double-to-float v10, v10

	invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

	move-result-object v9

	const-string v10, ");"

	invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v9

	invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v9

	invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

	.line 452
	:cond_6
	iget-boolean v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

	if-eqz v8, :cond_7

	.line 454
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-wide v8, v8, Lcom/millennialmedia/android/VideoAd;->duration:J

	int-to-long v10, v0

	sub-long/2addr v8, v10

	const-wide/16 v10, 0x3e8

	div-long v5, v8, v10

	.line 455
	.local v5, "seconds":J
	const-wide/16 v8, 0x0

	cmp-long v8, v5, v8

	if-lez v8, :cond_8

	.line 457
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	if-eqz v8, :cond_7

	.line 458
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

	move-result-object v9

	invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

	.line 466
	.end local v0	# "currentPosition":I
	.end local v5	# "seconds":J
	:cond_7
	:goto_4
	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	iget-object v9, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v10, 0x2

	invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

	move-result-object v9

	const-wide/16 v10, 0x1f4

	invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
	:try_end_1
	.catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

	goto/16 :goto_0

	.line 468
	:catch_1
	move-exception v1

	.line 470
	.restart local v1	# "e":Ljava/lang/IllegalStateException;
	invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

	goto/16 :goto_0

	.line 462
	.end local v1	# "e":Ljava/lang/IllegalStateException;
	.restart local v0	# "currentPosition":I
	.restart local v5	# "seconds":J
	:cond_8
	:try_start_2
	invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hideHud()V
	:try_end_2
	.catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

	goto :goto_4

	.line 392
	nop

	:pswitch_data_0
	.packed-switch 0x1
		:pswitch_0
		:pswitch_2
		:pswitch_1
	.end packed-switch
.end method

.method protected initLayout()Landroid/widget/RelativeLayout;
	.locals 15

	.prologue
	.line 230
	invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initLayout()Landroid/widget/RelativeLayout;

	move-result-object v9

	.line 232
	.local v9, "parent":Landroid/widget/RelativeLayout;
	new-instance v10, Landroid/os/Handler;

	invoke-direct {v10, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

	iput-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	.line 233
	const/4 v10, 0x0

	invoke-virtual {p0, v10}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setRequestedOrientation(I)V

	.line 235
	iget-boolean v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

	if-eqz v10, :cond_0

	.line 237
	invoke-direct {p0, v9}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->initHudStaticText(Landroid/view/ViewGroup;)V

	.line 238
	invoke-direct {p0, v9}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->initHudSeconds(Landroid/view/ViewGroup;)V

	.line 239
	invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->showHud()V

	.line 242
	:cond_0
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v10, :cond_2

	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v10, v10, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

	if-eqz v10, :cond_2

	.line 244
	invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->initWebOverlay()V

	.line 245
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

	.line 246
	const/4 v10, 0x1

	iput-boolean v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

	.line 353
	:cond_1
	:goto_0
	return-object v9

	.line 250
	:cond_2
	const/4 v10, 0x0

	iput-boolean v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

	.line 251
	new-instance v10, Landroid/widget/RelativeLayout;

	iget-object v11, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

	iput-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	.line 252
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	const/16 v11, 0x3e8

	invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setId(I)V

	.line 254
	const/4 v3, 0x0

	.line 255
	.local v3, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v10, :cond_3

	.line 256
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v3, v10, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	.line 258
	:cond_3
	if-eqz v3, :cond_a

	.line 260
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-static {v10}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

	move-result-object v0

	.line 262
	.local v0, "adDir":Ljava/io/File;
	const/4 v5, 0x0

	.local v5, "i":I
	:goto_1
	invoke-interface {v3}, Ljava/util/List;->size()I

	move-result v10

	if-ge v5, v10, :cond_9

	.line 265
	invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

	move-result-object v2

	check-cast v2, Lcom/millennialmedia/android/VideoImage;

	.line 268
	.local v2, "button":Lcom/millennialmedia/android/VideoImage;
	new-instance v7, Landroid/widget/ImageButton;

	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v7, v10}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

	.local v7, "newButton":Landroid/widget/ImageButton;
	iput-object v7, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	.line 271
	:try_start_0
	new-instance v10, Ljava/lang/StringBuilder;

	invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

	move-result-object v11

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	iget-object v11, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	invoke-virtual {v11}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

	move-result-object v11

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	iget-object v11, v2, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

	invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v11

	invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

	move-result-object v11

	const-string v12, "\\.[^\\.]*$"

	const-string v13, ".dat"

	invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v11

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v10

	invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

	move-result-object v1

	.line 273
	.local v1, "bitmap":Landroid/graphics/Bitmap;
	if-eqz v1, :cond_6

	.line 274
	invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 286
	.end local v1	# "bitmap":Landroid/graphics/Bitmap;
	:goto_2
	iget v10, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

	invoke-virtual {p0, v7, v10}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

	.line 287
	add-int/lit8 v10, v5, 0x1

	invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setId(I)V

	.line 288
	const/4 v10, 0x0

	const/4 v11, 0x0

	const/4 v12, 0x0

	const/4 v13, 0x0

	invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/ImageButton;->setPadding(IIII)V

	.line 290
	iget-boolean v10, v2, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

	if-eqz v10, :cond_7

	.line 292
	sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

	invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

	.line 293
	const/high16 v10, -0x1000000

	invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

	.line 294
	new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

	const/4 v10, -0x1

	const/4 v11, -0x1

	invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 306
	.local v8, "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
	:goto_3
	iget-object v10, v2, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

	invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

	move-result v10

	if-nez v10, :cond_4

	.line 308
	new-instance v10, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;

	invoke-direct {v10, p0, v7, v2}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Landroid/widget/ImageButton;Lcom/millennialmedia/android/VideoImage;)V

	invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

	.line 323
	:cond_4
	iget-wide v10, v2, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

	const-wide/16 v12, 0x0

	cmp-long v10, v10, v12

	if-lez v10, :cond_8

	.line 326
	iput-object v8, v2, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

	.line 327
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v11, 0x3

	invoke-static {v10, v11, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

	move-result-object v6

	.line 328
	.local v6, "message":Landroid/os/Message;
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	iget-wide v11, v2, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

	invoke-virtual {v10, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

	.line 336
	.end local v6	# "message":Landroid/os/Message;
	:goto_4
	iget-wide v10, v2, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

	const-wide/16 v12, 0x0

	cmp-long v10, v10, v12

	if-lez v10, :cond_5

	.line 338
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v11, 0x1

	invoke-static {v10, v11, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

	move-result-object v6

	.line 339
	.restart local v6	# "message":Landroid/os/Message;
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	iget-wide v11, v2, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

	iget-wide v13, v2, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

	add-long/2addr v11, v13

	iget-wide v13, v2, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

	add-long/2addr v11, v13

	invoke-virtual {v10, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

	.line 262
	.end local v6	# "message":Landroid/os/Message;
	:cond_5
	add-int/lit8 v5, v5, 0x1

	goto/16 :goto_1

	.line 277
	.end local v8	# "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
	.restart local v1	# "bitmap":Landroid/graphics/Bitmap;
	:cond_6
	:try_start_1
	new-instance v10, Ljava/lang/StringBuilder;

	invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

	move-result-object v11

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	iget-object v11, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	invoke-virtual {v11}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

	move-result-object v11

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	iget-object v11, v2, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

	invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v11

	invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

	move-result-object v11

	const-string v12, "\\.[^\\.]*$"

	const-string v13, ".dat"

	invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v11

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v10

	invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v10

	invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

	goto/16 :goto_2

	.line 280
	.end local v1	# "bitmap":Landroid/graphics/Bitmap;
	:catch_0
	move-exception v4

	.line 282
	.local v4, "e":Ljava/lang/Exception;
	invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

	goto/16 :goto_2

	.line 298
	.end local v4	# "e":Ljava/lang/Exception;
	:cond_7
	const/4 v10, 0x0

	invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

	.line 299
	new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

	const/4 v10, -0x2

	const/4 v11, -0x2

	invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 300
	.restart local v8	# "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
	const-string v10, "Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d"

	const/4 v11, 0x5

	new-array v11, v11, [Ljava/lang/Object;

	const/4 v12, 0x0

	invoke-virtual {v7}, Landroid/widget/ImageButton;->getId()I

	move-result v13

	invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v13

	aput-object v13, v11, v12

	const/4 v12, 0x1

	iget v13, v2, Lcom/millennialmedia/android/VideoImage;->anchor:I

	invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v13

	aput-object v13, v11, v12

	const/4 v12, 0x2

	iget v13, v2, Lcom/millennialmedia/android/VideoImage;->position:I

	invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v13

	aput-object v13, v11, v12

	const/4 v12, 0x3

	iget v13, v2, Lcom/millennialmedia/android/VideoImage;->anchor2:I

	invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v13

	aput-object v13, v11, v12

	const/4 v12, 0x4

	iget v13, v2, Lcom/millennialmedia/android/VideoImage;->position2:I

	invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v13

	aput-object v13, v11, v12

	invoke-static {v10, v11}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 301
	iget v10, v2, Lcom/millennialmedia/android/VideoImage;->position:I

	iget v11, v2, Lcom/millennialmedia/android/VideoImage;->anchor:I

	invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

	.line 302
	iget v10, v2, Lcom/millennialmedia/android/VideoImage;->position2:I

	iget v11, v2, Lcom/millennialmedia/android/VideoImage;->anchor2:I

	invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

	.line 303
	iget v10, v2, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

	iget v11, v2, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

	iget v12, v2, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

	iget v13, v2, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

	invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

	goto/16 :goto_3

	.line 332
	:cond_8
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v10, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	goto/16 :goto_4

	.line 344
	.end local v2	# "button":Lcom/millennialmedia/android/VideoImage;
	.end local v7	# "newButton":Landroid/widget/ImageButton;
	.end local v8	# "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
	:cond_9
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

	const/4 v12, -0x1

	const/4 v13, -0x1

	invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 346
	.end local v0	# "adDir":Ljava/io/File;
	.end local v5	# "i":I
	:cond_a
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	if-eqz v10, :cond_b

	.line 348
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

	.line 350
	:cond_b
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v10, :cond_1

	.line 351
	iget-object v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

	goto/16 :goto_0
.end method

.method protected initSavedInstance(Landroid/os/Bundle;)V
	.locals 3
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	.line 61
	invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->initSavedInstance(Landroid/os/Bundle;)V

	.line 62
	if-nez p1, :cond_1

	.line 64
	invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->getIntent()Landroid/content/Intent;

	move-result-object v1

	const-string v2, "videoId"

	invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v0

	.line 65
	.local v0, "videoId":Ljava/lang/String;
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-static {v1, v0}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

	move-result-object v1

	check-cast v1, Lcom/millennialmedia/android/VideoAd;

	iput-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	.line 67
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v1, :cond_0

	.line 69
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-boolean v1, v1, Lcom/millennialmedia/android/VideoAd;->showControls:Z

	iput-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasBottomBar:Z

	.line 70
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-boolean v1, v1, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

	iput-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

	.line 81
	.end local v0	# "videoId":Ljava/lang/String;
	:cond_0
	:goto_0
	return-void

	.line 75
	:cond_1
	const-string v1, "videoAd"

	invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

	move-result-object v1

	check-cast v1, Lcom/millennialmedia/android/VideoAd;

	iput-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	.line 76
	const-string v1, "shouldShowBottomBar"

	invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

	move-result v1

	iput-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasBottomBar:Z

	.line 77
	const-string v1, "lastVideoPosition"

	invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

	move-result v1

	iput v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

	.line 78
	const-string v1, "currentVideoPosition"

	invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

	move-result v1

	iput v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

	.line 79
	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-boolean v1, v1, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

	iput-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

	goto :goto_0
.end method

.method loadUrlForMraidInjection(Ljava/lang/String;)V
	.locals 2
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 384
	new-instance v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;

	invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V

	.line 385
	.local v0, "task":Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;
	const/4 v1, 0x0

	new-array v1, v1, [Ljava/lang/Void;

	invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

	.line 386
	return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
	.locals 1
	.param p1, "mp"	# Landroid/media/MediaPlayer;

	.prologue
	.line 86
	invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onCompletion(Landroid/media/MediaPlayer;)V

	.line 87
	iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

	if-eqz v0, :cond_0

	.line 88
	invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hideHud()V

	.line 89
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v0, :cond_1

	.line 91
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoPlayerOnCompletion(Ljava/lang/String;)V

	.line 93
	:cond_1
	return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
	.locals 2
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	.line 53
	invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V

	.line 54
	new-instance v0, Lcom/millennialmedia/android/AdProperties;

	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v0, v1}, Lcom/millennialmedia/android/AdProperties;-><init>(Landroid/content/Context;)V

	iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->adProperties:Lcom/millennialmedia/android/AdProperties;

	.line 55
	const-string v0, "Is Cached Ad"

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 56
	return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
	.locals 4
	.param p1, "mp"	# Landroid/media/MediaPlayer;
	.param p2, "what"	# I
	.param p3, "extra"	# I

	.prologue
	.line 98
	const-string v0, "Error while playing, %d - %d"

	const/4 v1, 0x2

	new-array v1, v1, [Ljava/lang/Object;

	const/4 v2, 0x0

	invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v3

	aput-object v3, v1, v2

	const/4 v2, 0x1

	invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v3

	aput-object v3, v1, v2

	invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v0

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

	.line 99
	invoke-super {p0, p1, p2, p3}, Lcom/millennialmedia/android/VideoPlayerActivity;->onError(Landroid/media/MediaPlayer;II)Z

	move-result v0

	return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
	.locals 1
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	.line 125
	const-string v0, "videoAd"

	invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/VideoAd;

	iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	.line 126
	invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

	.line 127
	return-void
.end method

.method protected onResume()V
	.locals 1

	.prologue
	.line 200
	invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->onResume()V

	.line 201
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v0, :cond_0

	.line 202
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->bringToFront()V

	.line 203
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	if-eqz v0, :cond_1

	.line 205
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

	.line 207
	:cond_1
	return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
	.locals 2
	.param p1, "outState"	# Landroid/os/Bundle;

	.prologue
	.line 118
	const-string v0, "videoAd"

	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

	.line 119
	invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

	.line 120
	return-void
.end method

.method protected onStart()V
	.locals 2

	.prologue
	const/4 v1, 0x1

	.line 190
	invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->onStart()V

	.line 191
	iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

	if-nez v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

	if-ne v0, v1, :cond_0

	iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->isVideoCompleted:Z

	if-ne v0, v1, :cond_0

	.line 193
	invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButtons()V

	.line 195
	:cond_0
	return-void
.end method

.method protected pauseVideo()V
	.locals 2

	.prologue
	.line 492
	invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->pauseVideo()V

	.line 493
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v1, 0x1

	invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

	.line 494
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v1, 0x2

	invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

	.line 495
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v1, 0x3

	invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

	.line 496
	return-void
.end method

.method protected playVideo(I)V
	.locals 4
	.param p1, "position"	# I

	.prologue
	const/4 v2, 0x2

	.line 551
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-nez v0, :cond_0

	.line 553
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	const-string v1, "Sorry. There was a problem playing the video"

	const/4 v2, 0x1

	invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

	move-result-object v0

	invoke-virtual {v0}, Landroid/widget/Toast;->show()V

	.line 561
	:goto_0
	return-void

	.line 556
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

	move-result v0

	if-nez v0, :cond_1

	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v0, :cond_1

	.line 558
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

	move-result-object v1

	const-wide/16 v2, 0x3e8

	invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

	.line 560
	:cond_1
	invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

	goto :goto_0
.end method

.method protected restartVideo()V
	.locals 15

	.prologue
	const-wide/16 v13, 0x0

	const/4 v12, 0x3

	const/4 v11, 0x2

	const/4 v10, 0x1

	const/4 v6, 0x0

	.line 566
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v5, :cond_6

	.line 568
	iget-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

	if-nez v5, :cond_0

	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-boolean v5, v5, Lcom/millennialmedia/android/VideoAd;->reloadNonEndOverlayOnRestart:Z

	if-eqz v5, :cond_1

	:cond_0
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v5, v5, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

	if-eqz v5, :cond_1

	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v5, :cond_1

	.line 570
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v5, v5, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

	invoke-virtual {p0, v5}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

	.line 571
	iput-boolean v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

	.line 573
	:cond_1
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v2, v5, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	.line 576
	.local v2, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

	.line 577
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

	.line 578
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

	.line 580
	iput v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

	.line 582
	iget-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

	if-nez v5, :cond_4

	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	if-eqz v5, :cond_4

	if-eqz v2, :cond_4

	.line 584
	const/4 v3, 0x0

	.local v3, "i":I
	:goto_0
	invoke-interface {v2}, Ljava/util/List;->size()I

	move-result v5

	if-ge v3, v5, :cond_4

	.line 586
	invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Lcom/millennialmedia/android/VideoImage;

	.line 588
	.local v1, "buttonData":Lcom/millennialmedia/android/VideoImage;
	if-eqz v1, :cond_3

	.line 590
	iget-wide v5, v1, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

	cmp-long v5, v5, v13

	if-lez v5, :cond_2

	.line 592
	iget-object v0, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	.line 593
	.local v0, "button":Landroid/widget/ImageButton;
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

	.line 594
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-static {v5, v12, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

	move-result-object v4

	.line 595
	.local v4, "message":Landroid/os/Message;
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	iget-wide v6, v1, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

	invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

	.line 599
	.end local v0	# "button":Landroid/widget/ImageButton;
	.end local v4	# "message":Landroid/os/Message;
	:cond_2
	iget-wide v5, v1, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

	cmp-long v5, v5, v13

	if-lez v5, :cond_3

	.line 601
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-static {v5, v10, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

	move-result-object v4

	.line 602
	.restart local v4	# "message":Landroid/os/Message;
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	iget-wide v6, v1, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

	iget-wide v8, v1, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

	add-long/2addr v6, v8

	iget-wide v8, v1, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

	add-long/2addr v6, v8

	invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

	.line 584
	.end local v4	# "message":Landroid/os/Message;
	:cond_3
	add-int/lit8 v3, v3, 0x1

	goto :goto_0

	.line 608
	.end local v1	# "buttonData":Lcom/millennialmedia/android/VideoImage;
	.end local v3	# "i":I
	:cond_4
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	if-eqz v5, :cond_5

	.line 609
	iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	iget-object v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-static {v6, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

	move-result-object v6

	const-wide/16 v7, 0x3e8

	invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

	.line 611
	:cond_5
	iget-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

	if-eqz v5, :cond_6

	.line 612
	invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->showHud()V

	.line 614
	.end local v2	# "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
	:cond_6
	invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->restartVideo()V

	.line 615
	return-void
.end method

.method protected resumeVideo()V
	.locals 12

	.prologue
	.line 501
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v7, :cond_6

	.line 503
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v8, 0x2

	invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

	move-result v7

	if-nez v7, :cond_0

	.line 504
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v9, 0x2

	invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

	move-result-object v8

	const-wide/16 v9, 0x3e8

	invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

	.line 505
	:cond_0
	iget-boolean v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

	if-nez v7, :cond_6

	.line 507
	iget-boolean v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

	if-eqz v7, :cond_1

	.line 509
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-wide v7, v7, Lcom/millennialmedia/android/VideoAd;->duration:J

	iget v9, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

	int-to-long v9, v9

	sub-long/2addr v7, v9

	const-wide/16 v9, 0x3e8

	div-long v5, v7, v9

	.line 510
	.local v5, "seconds":J
	const-wide/16 v7, 0x0

	cmp-long v7, v5, v7

	if-lez v7, :cond_5

	.line 512
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	if-eqz v7, :cond_1

	.line 513
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

	invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

	move-result-object v8

	invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

	.line 520
	.end local v5	# "seconds":J
	:cond_1
	:goto_0
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v7, v7, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	if-eqz v7, :cond_6

	.line 522
	const/4 v3, 0x0

	.local v3, "i":I
	:goto_1
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v7, v7, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

	move-result v7

	if-ge v3, v7, :cond_6

	.line 524
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v7, v7, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/VideoImage;

	.line 525
	.local v0, "button":Lcom/millennialmedia/android/VideoImage;
	const-wide/16 v1, 0x0

	.line 527
	.local v1, "delay":J
	iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

	const-wide/16 v9, 0x0

	cmp-long v7, v7, v9

	if-lez v7, :cond_3

	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

	iget-object v8, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

	invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

	move-result v7

	const/4 v8, -0x1

	if-ne v7, v8, :cond_3

	.line 529
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v8, 0x3

	invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

	move-result-object v4

	.line 530
	.local v4, "message":Landroid/os/Message;
	iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

	iget v9, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

	int-to-long v9, v9

	sub-long v1, v7, v9

	.line 531
	const-wide/16 v7, 0x0

	cmp-long v7, v1, v7

	if-gez v7, :cond_2

	.line 532
	const-wide/16 v1, 0x1f4

	.line 533
	:cond_2
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	invoke-virtual {v7, v4, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

	.line 536
	.end local v4	# "message":Landroid/os/Message;
	:cond_3
	iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

	const-wide/16 v9, 0x0

	cmp-long v7, v7, v9

	if-lez v7, :cond_4

	.line 538
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v8, 0x1

	invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

	move-result-object v4

	.line 539
	.restart local v4	# "message":Landroid/os/Message;
	iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

	add-long/2addr v8, v1

	iget-wide v10, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

	add-long/2addr v8, v10

	invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

	.line 522
	.end local v4	# "message":Landroid/os/Message;
	:cond_4
	add-int/lit8 v3, v3, 0x1

	goto :goto_1

	.line 517
	.end local v0	# "button":Lcom/millennialmedia/android/VideoImage;
	.end local v1	# "delay":J
	.end local v3	# "i":I
	.restart local v5	# "seconds":J
	:cond_5
	invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hideHud()V

	goto :goto_0

	.line 545
	.end local v5	# "seconds":J
	:cond_6
	invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

	.line 546
	return-void
.end method

.method protected videoPlayerOnCompletion(Ljava/lang/String;)V
	.locals 4
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 131
	if-eqz p1, :cond_0

	.line 133
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dispatchButtonClick(Ljava/lang/String;)V

	.line 135
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	if-eqz v0, :cond_1

	.line 137
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->logEndEvent()V

	.line 138
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

	if-nez v0, :cond_2

	.line 140
	invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

	.line 172
	:cond_1
	:goto_0
	return-void

	.line 144
	:cond_2
	iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

	if-nez v0, :cond_3

	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	if-eqz v0, :cond_3

	.line 146
	invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButtons()V

	.line 148
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->hasEndCard()Z

	move-result v0

	if-nez v0, :cond_3

	.line 150
	invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

	.line 154
	:cond_3
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v0, :cond_6

	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

	invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

	move-result v0

	if-nez v0, :cond_6

	.line 156
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

	.line 157
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->bringToFront()V

	.line 163
	:cond_4
	:goto_1
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

	const-wide/16 v2, 0x0

	cmp-long v0, v0, v2

	if-eqz v0, :cond_5

	.line 165
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

	iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

	invoke-direct {p0, v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismissAfter(J)V

	.line 167
	:cond_5
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v1, 0x1

	invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

	.line 168
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v1, 0x2

	invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

	.line 169
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

	const/4 v1, 0x3

	invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

	goto :goto_0

	.line 159
	:cond_6
	iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

	if-eqz v0, :cond_4

	.line 161
	invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

	goto :goto_1
.end method
