.class public Lcom/jumptap/adtag/actions/VideoAdAction;
.super Lcom/jumptap/adtag/actions/AdAction;
.source "VideoAdAction.java"


# direct methods
.method public constructor <init>()V
	.locals 0

	.prologue
	.line 12
	invoke-direct {p0}, Lcom/jumptap/adtag/actions/AdAction;-><init>()V

	return-void
.end method


# virtual methods
.method public perform(Landroid/content/Context;Lcom/jumptap/adtag/JtAdView;)V
	.locals 6
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "widget"	# Lcom/jumptap/adtag/JtAdView;

	.prologue
	.line 16
	const-string v3, "JtAd"

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

	const-string v5, "Performing VideoAdAction: "

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	iget-object v5, p0, Lcom/jumptap/adtag/actions/VideoAdAction;->redirectedUrl:Ljava/lang/String;

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 17
	new-instance v1, Landroid/content/Intent;

	const-string v3, "android.intent.action.VIEW"

	invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

	.line 18
	.local v1, "myIntent":Landroid/content/Intent;
	iget-object v3, p0, Lcom/jumptap/adtag/actions/VideoAdAction;->redirectedUrl:Ljava/lang/String;

	invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v2

	.line 19
	.local v2, "u":Landroid/net/Uri;
	const-string v3, "video/*"

	invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

	.line 22
	if-eqz p2, :cond_0

	.line 23
	const/4 v3, 0x1

	:try_start_0
	invoke-virtual {p2, v3}, Lcom/jumptap/adtag/JtAdView;->setLaunchedActivity(Z)V

	.line 24
	invoke-virtual {p2}, Lcom/jumptap/adtag/JtAdView;->notifyLaunchActivity()V

	.line 26
	:cond_0
	invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
	:try_end_0
	.catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

	.line 31
	:goto_0
	return-void

	.line 27
	:catch_0
	move-exception v0

	.line 28
	.local v0, "e":Landroid/content/ActivityNotFoundException;
	const-string v3, "JtAd"

	const-string v4, "cannot initiate video"

	invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto :goto_0
.end method
