.class public Lcom/jumptap/adtag/callbacks/JtWebviewCb;
.super Ljava/lang/Object;
.source "JtWebviewCb.java"


# instance fields
.field private adView:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;)V
	.locals 0
	.param p1, "ctx"	# Landroid/content/Context;
	.param p2, "adView"	# Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	.prologue
	.line 17
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 18
	iput-object p1, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->context:Landroid/content/Context;

	.line 19
	iput-object p2, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->adView:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	.line 21
	return-void
.end method


# virtual methods
.method public expandTo(IILjava/lang/String;ILjava/lang/String;)V
	.locals 8
	.param p1, "width"	# I
	.param p2, "height"	# I
	.param p3, "callback"	# Ljava/lang/String;
	.param p4, "transition"	# I
	.param p5, "options"	# Ljava/lang/String;
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 46
	const-string v0, "JtAd"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v4, "JtWebViewCB::expandTo ("

	invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v4, ")"

	invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 47
	iget-object v0, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->context:Landroid/content/Context;

	invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

	move-result-object v0

	invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v0

	iget v7, v0, Landroid/util/DisplayMetrics;->density:F

	.line 48
	.local v7, "density":F
	int-to-float v0, p2

	mul-float/2addr v0, v7

	float-to-int v3, v0

	.line 49
	.local v3, "h":I
	int-to-float v0, p1

	mul-float/2addr v0, v7

	float-to-int v2, v0

	.line 50
	.local v2, "w":I
	iget-object v0, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->adView:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	const/4 v1, 0x1

	move-object v4, p3

	move v5, p4

	move-object v6, p5

	invoke-interface/range {v0 .. v6}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->resizeWithCallback(ZIILjava/lang/String;ILjava/lang/String;)V

	.line 51
	return-void
.end method

.method public getDeviceIdSha1()Ljava/lang/String;
	.locals 4
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 39
	iget-object v1, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->context:Landroid/content/Context;

	invoke-static {v1}, Lcom/jumptap/adtag/utils/JtAdManager;->getHIDSHA1(Landroid/content/Context;)Ljava/lang/String;

	move-result-object v0

	.line 40
	.local v0, "andIdSha1":Ljava/lang/String;
	const-string v1, "JtAd"

	new-instance v2, Ljava/lang/StringBuilder;

	invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

	const-string v3, "JtWebViewCB::getDeviceId andId="

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 41
	return-object v0
.end method

.method public getLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
	.locals 4
	.param p1, "callback"	# Ljava/lang/String;
	.param p2, "options"	# Ljava/lang/String;
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 85
	const-string v0, "Kuku"

	.line 86
	.local v0, "locString":Ljava/lang/String;
	const-string v1, "JtAd"

	new-instance v2, Ljava/lang/StringBuilder;

	invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

	const-string v3, "JtWebViewCB::getLocation options: "

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	const-string v3, " callback: "

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	const-string v3, "  location="

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 88
	return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
	.locals 7
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 65
	iget-object v5, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->context:Landroid/content/Context;

	invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

	move-result-object v5

	invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v5

	iget v0, v5, Landroid/util/DisplayMetrics;->density:F

	.line 66
	.local v0, "density":F
	iget-object v5, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->context:Landroid/content/Context;

	invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

	move-result-object v5

	invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v5

	iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

	.line 67
	.local v2, "heightPixels":I
	iget-object v5, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->context:Landroid/content/Context;

	invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

	move-result-object v5

	invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v5

	iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

	.line 68
	.local v4, "widthPixels":I
	int-to-float v5, v2

	div-float/2addr v5, v0

	float-to-int v1, v5

	.line 69
	.local v1, "height":I
	int-to-float v5, v4

	div-float/2addr v5, v0

	float-to-int v3, v5

	.line 71
	.local v3, "width":I
	new-instance v5, Ljava/lang/StringBuilder;

	invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

	const-string v6, "{\"width\": "

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v5

	const-string v6, ",\"height\":"

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v5

	const-string v6, "}"

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v5

	return-object v5
.end method

.method public hideWidget()V
	.locals 1
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 93
	iget-object v0, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->adView:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	invoke-interface {v0}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->hide()V

	.line 94
	return-void
.end method

.method public openURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
	.locals 3
	.param p1, "URI"	# Ljava/lang/String;
	.param p2, "contentType"	# Ljava/lang/String;
	.param p3, "options"	# Ljava/lang/String;
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 76
	const-string v0, "JtAd"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "JtWebViewCB::openURI URI: "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, " contentType:"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, " options: "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 80
	iget-object v0, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->adView:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	invoke-interface {v0, p1}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->handleClicks(Ljava/lang/String;)V

	.line 81
	return-void
.end method

.method public resizeViewer(IIIIILjava/lang/String;Ljava/lang/String;)V
	.locals 3
	.param p1, "left"	# I
	.param p2, "top"	# I
	.param p3, "right"	# I
	.param p4, "bottom"	# I
	.param p5, "transition"	# I
	.param p6, "options"	# Ljava/lang/String;
	.param p7, "callback"	# Ljava/lang/String;
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 34
	const-string v0, "JtAd"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "JtWebViewCB::resizeViewer left: "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, " top:"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, " right: "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, " bottom: "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, " transition: "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, " options: "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, " callback: "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 35
	return-void
.end method

.method public restoreToBanner(Ljava/lang/String;ILjava/lang/String;)V
	.locals 7
	.param p1, "callback"	# Ljava/lang/String;
	.param p2, "transition"	# I
	.param p3, "options"	# Ljava/lang/String;
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 57
	const/4 v2, 0x0

	.line 58
	.local v2, "w":I
	const/4 v3, 0x0

	.line 59
	.local v3, "h":I
	iget-object v0, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->adView:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	const/4 v1, 0x0

	move-object v4, p1

	move v5, p2

	move-object v6, p3

	invoke-interface/range {v0 .. v6}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->resizeWithCallback(ZIILjava/lang/String;ILjava/lang/String;)V

	.line 60
	return-void
.end method

.method public setSize(IIIIZ)V
	.locals 6
	.param p1, "a"	# I
	.param p2, "b"	# I
	.param p3, "c"	# I
	.param p4, "d"	# I
	.param p5, "shouldExpand"	# Z
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 25
	const-string v3, "JtAd"

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

	const-string v5, "JtWebViewCB::setSize a:"

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v4

	const-string v5, " b:"

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v4

	const-string v5, " c:"

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v4

	const-string v5, " d:"

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v4

	const-string v5, " shouldExpand:"

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 26
	iget-object v3, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->context:Landroid/content/Context;

	invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

	move-result-object v3

	invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v3

	iget v0, v3, Landroid/util/DisplayMetrics;->density:F

	.line 27
	.local v0, "density":F
	int-to-float v3, p3

	mul-float/2addr v3, v0

	float-to-int v2, v3

	.line 28
	.local v2, "width":I
	int-to-float v3, p4

	mul-float/2addr v3, v0

	float-to-int v1, v3

	.line 29
	.local v1, "height":I
	iget-object v3, p0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;->adView:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	invoke-interface {v3, v2, v1, p5}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->resize(IIZ)V

	.line 30
	return-void
.end method
