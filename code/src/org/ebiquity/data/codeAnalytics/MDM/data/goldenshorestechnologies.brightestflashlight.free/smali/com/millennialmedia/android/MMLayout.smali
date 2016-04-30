.class abstract Lcom/millennialmedia/android/MMLayout;
.super Landroid/widget/RelativeLayout;
.source "MMLayout.java"

# interfaces
.implements Lcom/millennialmedia/android/MMAd;
.implements Lcom/millennialmedia/android/InlineVideoView$TransparentFix;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;,
		Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;
	}
.end annotation


# static fields
.field static final BOTTOM_CENTER:Ljava/lang/String; = "bottom-center"

.field static final BOTTOM_LEFT:Ljava/lang/String; = "bottom-left"

.field static final BOTTOM_RIGHT:Ljava/lang/String; = "bottom-right"

.field static final CENTER:Ljava/lang/String; = "center"

.field private static final CLOSE_AREA_SIZE:I = 0x32

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field static final TOP_CENTER:Ljava/lang/String; = "top-center"

.field static final TOP_LEFT:Ljava/lang/String; = "top-left"

.field static final TOP_RIGHT:Ljava/lang/String; = "top-right"

.field private static appInit:Z


# instance fields
.field adImpl:Lcom/millennialmedia/android/MMAdImpl;

.field blackView:Landroid/view/View;

.field closeAreaView:Landroid/view/View;

.field private diagnosticDetector:Landroid/view/GestureDetector;

.field goalId:Ljava/lang/String;

.field inlineVideoLayout:Landroid/widget/RelativeLayout;

.field inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

.field isResizing:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
	.locals 0
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 33
	invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

	.line 34
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMLayout;->initLayout(Landroid/content/Context;)V

	.line 35
	return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
	.locals 0
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "attrs"	# Landroid/util/AttributeSet;
	.param p3, "defStyle"	# I
	.annotation runtime Ljava/lang/Deprecated;
	.end annotation

	.prologue
	.line 45
	invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

	.line 46
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMLayout;->initLayout(Landroid/content/Context;)V

	.line 47
	return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMLayout;Ljava/lang/String;)V
	.locals 0
	.param p0, "x0"	# Lcom/millennialmedia/android/MMLayout;
	.param p1, "x1"	# Ljava/lang/String;

	.prologue
	.line 21
	invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMLayout;->internalSetCloseArea(Ljava/lang/String;)V

	return-void
.end method

.method private initInlineVideoTransparentFix()V
	.locals 5

	.prologue
	const/4 v4, -0x1

	.line 626
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	if-eqz v2, :cond_0

	.line 628
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

	move-result-object v1

	.line 629
	.local v1, "parent":Landroid/view/ViewParent;
	if-eqz v1, :cond_0

	instance-of v2, v1, Landroid/view/ViewGroup;

	if-eqz v2, :cond_0

	.line 631
	check-cast v1, Landroid/view/ViewGroup;

	.end local v1	# "parent":Landroid/view/ViewParent;
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

	.line 632
	const/4 v2, 0x0

	iput-object v2, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	.line 635
	:cond_0
	new-instance v2, Landroid/view/View;

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

	move-result-object v3

	invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

	iput-object v2, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	.line 636
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	const/high16 v3, -0x1000000

	invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

	.line 637
	new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 639
	.local v0, "blackViewParams":Landroid/widget/RelativeLayout$LayoutParams;
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

	.line 640
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	if-eqz v2, :cond_1

	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

	move-result-object v2

	if-nez v2, :cond_1

	.line 641
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	iget-object v3, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

	.line 642
	:cond_1
	return-void
.end method

.method private internalSetCloseArea(Ljava/lang/String;)V
	.locals 8
	.param p1, "position"	# Ljava/lang/String;

	.prologue
	const/16 v7, 0xe

	const/16 v6, 0xb

	const/high16 v5, 0x42480000	# 50.0f

	const/16 v4, 0xc

	.line 287
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

	if-nez v2, :cond_1

	.line 289
	new-instance v2, Landroid/view/View;

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

	move-result-object v3

	invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

	iput-object v2, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

	.line 291
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

	move-result-object v2

	invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

	move-result-object v2

	invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v2

	iget v1, v2, Landroid/util/DisplayMetrics;->density:F

	.line 292
	.local v1, "density":F
	new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

	mul-float v2, v5, v1

	float-to-int v2, v2

	mul-float v3, v5, v1

	float-to-int v3, v3

	invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 293
	.local v0, "closeParams":Landroid/widget/RelativeLayout$LayoutParams;
	const-string v2, "top-right"

	invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v2

	if-eqz v2, :cond_2

	.line 295
	invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 319
	:cond_0
	:goto_0
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

	new-instance v3, Lcom/millennialmedia/android/MMLayout$3;

	invoke-direct {v3, p0}, Lcom/millennialmedia/android/MMLayout$3;-><init>(Lcom/millennialmedia/android/MMLayout;)V

	invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

	.line 328
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

	invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 330
	.end local v0	# "closeParams":Landroid/widget/RelativeLayout$LayoutParams;
	.end local v1	# "density":F
	:cond_1
	return-void

	.line 297
	.restart local v0	# "closeParams":Landroid/widget/RelativeLayout$LayoutParams;
	.restart local v1	# "density":F
	:cond_2
	const-string v2, "top-center"

	invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v2

	if-eqz v2, :cond_3

	.line 299
	invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	goto :goto_0

	.line 301
	:cond_3
	const-string v2, "bottom-left"

	invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v2

	if-eqz v2, :cond_4

	.line 303
	invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	goto :goto_0

	.line 305
	:cond_4
	const-string v2, "bottom-center"

	invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v2

	if-eqz v2, :cond_5

	.line 307
	invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 308
	invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	goto :goto_0

	.line 310
	:cond_5
	const-string v2, "bottom-right"

	invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v2

	if-eqz v2, :cond_6

	.line 312
	invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 313
	invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	goto :goto_0

	.line 315
	:cond_6
	const-string v2, "center"

	invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v2

	if-eqz v2, :cond_0

	.line 317
	const/16 v2, 0xd

	invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	goto :goto_0
.end method


# virtual methods
.method public addBlackView()V
	.locals 2

	.prologue
	.line 610
	invoke-direct {p0}, Lcom/millennialmedia/android/MMLayout;->initInlineVideoTransparentFix()V

	.line 611
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	if-eqz v0, :cond_0

	.line 613
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	const/4 v1, 0x0

	invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

	.line 615
	:cond_0
	return-void
.end method

.method addInlineVideo()V
	.locals 2

	.prologue
	.line 586
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

	move-result-object v0

	if-eqz v0, :cond_0

	.line 588
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

	move-result-object v0

	check-cast v0, Landroid/view/ViewGroup;

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

	.line 590
	:cond_0
	new-instance v0, Landroid/widget/RelativeLayout;

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

	move-result-object v1

	invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

	iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	.line 591
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	const v1, 0x35391858

	invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

	.line 592
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

	move-result-object v0

	if-eqz v0, :cond_1

	.line 594
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

	move-result-object v0

	check-cast v0, Landroid/view/ViewGroup;

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

	.line 596
	:cond_1
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

	.line 597
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	if-eqz v0, :cond_3

	.line 599
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

	move-result-object v0

	if-nez v0, :cond_2

	.line 600
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

	.line 601
	:cond_2
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

	.line 603
	:cond_3
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

	move-result-object v1

	invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 604
	return-void
.end method

.method adjustVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z
	.locals 1
	.param p1, "params"	# Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	.prologue
	.line 523
	new-instance v0, Lcom/millennialmedia/android/MMLayout$4;

	invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMLayout$4;-><init>(Lcom/millennialmedia/android/MMLayout;Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

	.line 534
	const/4 v0, 0x0

	return v0
.end method

.method closeAreaTouched()V
	.locals 0

	.prologue
	.line 343
	return-void
.end method

.method protected finalize()V
	.locals 2
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/lang/Throwable;
		}
	.end annotation

	.prologue
	.line 53
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

	move-result v0

	const/4 v1, -0x1

	if-ne v0, v1, :cond_0

	.line 55
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	const/4 v1, 0x1

	iput-boolean v1, v0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

	.line 56
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	const-string v1, "finalize() for "

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 57
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->removeAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 59
	:cond_0
	return-void
.end method

.method fullScreenVideoLayout()V
	.locals 0

	.prologue
	.line 504
	return-void
.end method

.method public getApid()Ljava/lang/String;
	.locals 1

	.prologue
	.line 454
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getApid()Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method

.method public getIgnoresDensityScaling()Z
	.locals 1

	.prologue
	.line 478
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getIgnoresDensityScaling()Z

	move-result v0

	return v0
.end method

.method public getListener()Lcom/millennialmedia/android/RequestListener;
	.locals 1

	.prologue
	.line 466
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getListener()Lcom/millennialmedia/android/RequestListener;

	move-result-object v0

	return-object v0
.end method

.method public getMMRequest()Lcom/millennialmedia/android/MMRequest;
	.locals 1

	.prologue
	.line 490
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getMMRequest()Lcom/millennialmedia/android/MMRequest;

	move-result-object v0

	return-object v0
.end method

.method initInlineVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
	.locals 4
	.param p1, "params"	# Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	.prologue
	const/4 v3, -0x2

	.line 563
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v2, :cond_2

	.line 565
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

	move-result-object v1

	check-cast v1, Landroid/view/ViewGroup;

	.line 566
	.local v1, "vg":Landroid/view/ViewGroup;
	if-eqz v1, :cond_0

	.line 568
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

	.line 570
	:cond_0
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

	move-result v2

	if-eqz v2, :cond_1

	.line 571
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

	.line 572
	:cond_1
	const/4 v2, 0x0

	iput-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	.line 574
	.end local v1	# "vg":Landroid/view/ViewGroup;
	:cond_2
	new-instance v2, Lcom/millennialmedia/android/InlineVideoView;

	invoke-direct {v2, p0}, Lcom/millennialmedia/android/InlineVideoView;-><init>(Lcom/millennialmedia/android/MMLayout;)V

	iput-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	.line 575
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v2, p1}, Lcom/millennialmedia/android/InlineVideoView;->initInlineVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

	.line 577
	new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 578
	.local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
	const/16 v2, 0xd

	const/4 v3, -0x1

	invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

	.line 579
	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v2, v0}, Lcom/millennialmedia/android/InlineVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

	.line 581
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->addInlineVideo()V

	.line 582
	return-void
.end method

.method protected final initLayout(Landroid/content/Context;)V
	.locals 6
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	const/4 v5, 0x1

	.line 71
	:try_start_0
	const-string v1, "Initializing MMLayout."

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 72
	invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->checkPermissions(Landroid/content/Context;)V

	.line 73
	invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->checkActivity(Landroid/content/Context;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 81
	:goto_0
	new-instance v1, Landroid/view/GestureDetector;

	new-instance v2, Lcom/millennialmedia/android/MMLayout$1;

	invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMLayout$1;-><init>(Lcom/millennialmedia/android/MMLayout;)V

	invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

	iput-object v1, p0, Lcom/millennialmedia/android/MMLayout;->diagnosticDetector:Landroid/view/GestureDetector;

	.line 114
	sget-boolean v1, Lcom/millennialmedia/android/MMLayout;->appInit:Z

	if-nez v1, :cond_0

	.line 116
	const-string v1, "********** Millennial Device Id *****************"

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 117
	invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 118
	const-string v1, "Use the above identifier to register this device and receive test ads. Test devices can be registered and administered through your account at http://mmedia.com."

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 119
	const-string v1, "*************************************************"

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 120
	invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->cleanCache(Landroid/content/Context;)V

	.line 121
	sput-boolean v5, Lcom/millennialmedia/android/MMLayout;->appInit:Z

	.line 123
	:cond_0
	return-void

	.line 75
	:catch_0
	move-exception v0

	.line 77
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "There was an exception initializing the MMAdView. %s"

	new-array v2, v5, [Ljava/lang/Object;

	const/4 v3, 0x0

	invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

	move-result-object v4

	aput-object v4, v2, v3

	invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 78
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method isVideoPlayingStreaming()Z
	.locals 1

	.prologue
	.line 646
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->isPlayingStreaming()Z

	move-result v0

	if-eqz v0, :cond_0

	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method loadUrl(Ljava/lang/String;)V
	.locals 1
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 351
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->isConnected(Landroid/content/Context;)Z

	move-result v0

	if-eqz v0, :cond_1

	.line 353
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v0, :cond_0

	.line 354
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImplController;->loadUrl(Ljava/lang/String;)V

	.line 360
	:cond_0
	:goto_0
	return-void

	.line 358
	:cond_1
	const-string v0, "No network available, can\'t load overlay."

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	goto :goto_0
.end method

.method loadWebContent(Ljava/lang/String;Ljava/lang/String;)V
	.locals 1
	.param p1, "content"	# Ljava/lang/String;
	.param p2, "adUrl"	# Ljava/lang/String;

	.prologue
	.line 364
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->isConnected(Landroid/content/Context;)Z

	move-result v0

	if-eqz v0, :cond_1

	.line 366
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v0, :cond_0

	.line 367
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMAdImplController;->loadWebContent(Ljava/lang/String;Ljava/lang/String;)V

	.line 373
	:cond_0
	:goto_0
	return-void

	.line 371
	:cond_1
	const-string v0, "No network available, can\'t load overlay."

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	goto :goto_0
.end method

.method protected onAttachedToWindow()V
	.locals 2

	.prologue
	.line 241
	invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

	.line 242
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->isInEditMode()Z

	move-result v0

	if-nez v0, :cond_2

	.line 244
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	const-string v1, "onAttachedToWindow for "

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 245
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

	move-result v0

	const/4 v1, -0x1

	if-ne v0, v1, :cond_0

	.line 246
	const-string v0, "MMAd missing id from getId(). Performance will be affected for configuration changes."

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

	.line 247
	:cond_0
	iget-boolean v0, p0, Lcom/millennialmedia/android/MMLayout;->isResizing:Z

	if-nez v0, :cond_1

	.line 248
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 249
	:cond_1
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	if-eqz v0, :cond_2

	.line 250
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

	.line 252
	:cond_2
	return-void
.end method

.method protected onDetachedFromWindow()V
	.locals 2

	.prologue
	.line 213
	invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

	.line 215
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	const-string v1, "onDetachedFromWindow for"

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 216
	iget-boolean v0, p0, Lcom/millennialmedia/android/MMLayout;->isResizing:Z

	if-nez v0, :cond_0

	.line 217
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->removeAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 218
	:cond_0
	return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
	.locals 7
	.param p1, "state"	# Landroid/os/Parcelable;

	.prologue
	.line 224
	move-object v0, p1

	check-cast v0, Landroid/os/Bundle;

	.line 225
	.local v0, "bundle":Landroid/os/Bundle;
	iget-object v4, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-wide v2, v4, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	.line 226
	.local v2, "tempId":J
	iget-object v4, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	const-string v5, "MMAdImplId"

	invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

	move-result-wide v5

	iput-wide v5, v4, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	.line 227
	iget-object v4, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	const-string v5, "MMAdImplLinkedId"

	invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

	move-result-wide v5

	iput-wide v5, v4, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	.line 228
	new-instance v4, Ljava/lang/StringBuilder;

	invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

	const-string v5, "onRestoreInstanceState replacing adImpl-"

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

	move-result-object v4

	const-string v5, " with "

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	iget-object v5, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v4

	const-string v5, " id="

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

	move-result v5

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 229
	const-string v4, "inlineVideoViewGson"

	invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v1

	.line 230
	.local v1, "gsonInline":Ljava/lang/String;
	if-eqz v1, :cond_0

	.line 232
	invoke-static {v1}, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->getInlineParams(Ljava/lang/String;)Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	move-result-object v4

	invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMLayout;->initInlineVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

	.line 234
	:cond_0
	const-string v4, "super"

	invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

	move-result-object v4

	invoke-super {p0, v4}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

	.line 235
	return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
	.locals 4

	.prologue
	.line 194
	invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

	.line 195
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "onSaveInstanceState saving - "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, " id="

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

	move-result v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 196
	new-instance v0, Landroid/os/Bundle;

	invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

	.line 197
	.local v0, "bundle":Landroid/os/Bundle;
	const-string v1, "super"

	invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

	move-result-object v2

	invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

	.line 198
	const-string v1, "MMAdImplId"

	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-wide v2, v2, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

	.line 199
	const-string v1, "MMAdImplLinkedId"

	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-wide v2, v2, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

	.line 200
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v1, :cond_1

	.line 202
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

	move-result v1

	if-eqz v1, :cond_0

	.line 203
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

	move-result v2

	iput v2, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

	.line 204
	:cond_0
	const-string v1, "inlineVideoViewGson"

	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->getGsonState()Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

	.line 206
	:cond_1
	return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
	.locals 1
	.param p1, "event"	# Landroid/view/MotionEvent;

	.prologue
	.line 178
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->diagnosticDetector:Landroid/view/GestureDetector;

	invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

	move-result v0

	if-nez v0, :cond_0

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->isClickable()Z

	move-result v0

	if-eqz v0, :cond_0

	invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

	move-result v0

	if-eqz v0, :cond_1

	:cond_0
	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_1
	const/4 v0, 0x0

	goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
	.locals 6
	.param p1, "windowInFocus"	# Z
	.annotation runtime Ljava/lang/Deprecated;
	.end annotation

	.prologue
	const/4 v5, 0x1

	.line 132
	invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

	.line 133
	if-eqz p1, :cond_5

	.line 135
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v1, :cond_0

	.line 137
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->resumeVideo()V

	.line 151
	:cond_0
	:goto_0
	const-string v1, "Window Focus Changed. For %s, Window in focus?: %b Controllers: %s"

	const/4 v2, 0x3

	new-array v2, v2, [Ljava/lang/Object;

	const/4 v3, 0x0

	iget-object v4, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	aput-object v4, v2, v3

	invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

	move-result-object v3

	aput-object v3, v2, v5

	const/4 v3, 0x2

	invoke-static {}, Lcom/millennialmedia/android/MMAdImplController;->controllersToString()Ljava/lang/String;

	move-result-object v4

	aput-object v4, v2, v3

	invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 152
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	if-eqz v1, :cond_1

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v1, :cond_1

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v1, :cond_1

	.line 154
	if-eqz p1, :cond_6

	.line 155
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->setMraidViewableVisible()V

	.line 159
	:cond_1
	:goto_1
	if-nez p1, :cond_4

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

	move-result-object v1

	instance-of v1, v1, Landroid/app/Activity;

	if-eqz v1, :cond_4

	.line 161
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

	move-result-object v0

	check-cast v0, Landroid/app/Activity;

	.line 162
	.local v0, "activity":Landroid/app/Activity;
	if-eqz v0, :cond_2

	invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

	move-result v1

	if-eqz v1, :cond_4

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	if-eqz v1, :cond_4

	.line 164
	:cond_2
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iput-boolean v5, v1, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

	.line 165
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Window Focus Changed.removing "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 166
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v1, :cond_3

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v1, :cond_3

	.line 167
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->setMraidHidden()V

	.line 168
	:cond_3
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-static {v1}, Lcom/millennialmedia/android/MMAdImplController;->removeAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 172
	.end local v0	# "activity":Landroid/app/Activity;
	:cond_4
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

	move-result-object v1

	invoke-virtual {v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

	.line 173
	return-void

	.line 144
	:cond_5
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v1, :cond_0

	.line 146
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->pauseVideo()V

	goto/16 :goto_0

	.line 157
	:cond_6
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->setMraidViewableHidden()V

	goto :goto_1
.end method

.method pauseVideo()V
	.locals 1

	.prologue
	.line 545
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v0, :cond_0

	.line 546
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->pauseVideo()V

	.line 547
	:cond_0
	return-void
.end method

.method playVideo()V
	.locals 1

	.prologue
	.line 517
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v0, :cond_0

	.line 518
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->playVideo()V

	.line 519
	:cond_0
	return-void
.end method

.method public removeBlackView()V
	.locals 2

	.prologue
	.line 620
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	if-eqz v0, :cond_0

	.line 621
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

	const/4 v1, 0x4

	invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

	.line 622
	:cond_0
	return-void
.end method

.method removeCloseTouchDelegate()V
	.locals 2

	.prologue
	.line 258
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

	if-eqz v0, :cond_0

	.line 260
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

	invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

	move-result-object v0

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

	invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

	move-result-object v0

	instance-of v0, v0, Landroid/view/ViewGroup;

	if-eqz v0, :cond_0

	.line 262
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

	invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

	move-result-object v0

	check-cast v0, Landroid/view/ViewGroup;

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

	invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

	.line 263
	const/4 v0, 0x0

	iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

	.line 266
	:cond_0
	return-void
.end method

.method removeVideo()V
	.locals 1

	.prologue
	.line 508
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v0, :cond_0

	.line 510
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->removeVideo()V

	.line 511
	const/4 v0, 0x0

	iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	.line 513
	:cond_0
	return-void
.end method

.method repositionVideoLayout()V
	.locals 0

	.prologue
	.line 500
	return-void
.end method

.method resumeVideo()V
	.locals 1

	.prologue
	.line 551
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v0, :cond_0

	.line 552
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->resumeVideo()V

	.line 553
	:cond_0
	return-void
.end method

.method public setApid(Ljava/lang/String;)V
	.locals 1
	.param p1, "apid"	# Ljava/lang/String;

	.prologue
	.line 448
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setApid(Ljava/lang/String;)V

	.line 449
	return-void
.end method

.method setCloseArea(Ljava/lang/String;)V
	.locals 1
	.param p1, "position"	# Ljava/lang/String;

	.prologue
	.line 272
	new-instance v0, Lcom/millennialmedia/android/MMLayout$2;

	invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMLayout$2;-><init>(Lcom/millennialmedia/android/MMLayout;Ljava/lang/String;)V

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMLayout;->post(Ljava/lang/Runnable;)Z

	.line 281
	return-void
.end method

.method public setIgnoresDensityScaling(Z)V
	.locals 1
	.param p1, "ignoresDensityScaling"	# Z

	.prologue
	.line 472
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setIgnoresDensityScaling(Z)V

	.line 473
	return-void
.end method

.method public setListener(Lcom/millennialmedia/android/RequestListener;)V
	.locals 1
	.param p1, "listener"	# Lcom/millennialmedia/android/RequestListener;

	.prologue
	.line 460
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setListener(Lcom/millennialmedia/android/RequestListener;)V

	.line 461
	return-void
.end method

.method public setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
	.locals 1
	.param p1, "request"	# Lcom/millennialmedia/android/MMRequest;

	.prologue
	.line 484
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

	.line 485
	return-void
.end method

.method setVideoSource(Ljava/lang/String;)V
	.locals 1
	.param p1, "streamVideoURI"	# Ljava/lang/String;

	.prologue
	.line 557
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v0, :cond_0

	.line 558
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/InlineVideoView;->setVideoSource(Ljava/lang/String;)V

	.line 559
	:cond_0
	return-void
.end method

.method stopVideo()V
	.locals 1

	.prologue
	.line 539
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	if-eqz v0, :cond_0

	.line 540
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->stopVideo()V

	.line 541
	:cond_0
	return-void
.end method
