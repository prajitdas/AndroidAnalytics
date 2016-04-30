.class public Lcom/jumptap/adtag/actions/YouTubeAdAction;
.super Lcom/jumptap/adtag/actions/AdAction;
.source "YouTubeAdAction.java"


# static fields
.field private static final CLASS_NAME1:Ljava/lang/String; = "com.google.android.youtube.YouTubePlayer"

.field private static final CLASS_NAME2:Ljava/lang/String; = "com.google.android.youtube.PlayerActivity"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"


# direct methods
.method public constructor <init>()V
	.locals 0

	.prologue
	.line 13
	invoke-direct {p0}, Lcom/jumptap/adtag/actions/AdAction;-><init>()V

	return-void
.end method

.method private openYoutubePlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
	.locals 3
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "uri"	# Landroid/net/Uri;
	.param p3, "className"	# Ljava/lang/String;

	.prologue
	.line 64
	new-instance v0, Landroid/content/Intent;

	const-string v1, "android.intent.action.VIEW"

	invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.line 65
	.local v0, "myIntent":Landroid/content/Intent;
	new-instance v1, Landroid/content/ComponentName;

	const-string v2, "com.google.android.youtube"

	invoke-direct {v1, v2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

	invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

	.line 66
	const/high16 v1, 0x10000000

	invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

	.line 68
	invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

	.line 70
	return-void
.end method


# virtual methods
.method public perform(Landroid/content/Context;Lcom/jumptap/adtag/JtAdView;)V
	.locals 7
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "widget"	# Lcom/jumptap/adtag/JtAdView;

	.prologue
	.line 21
	const-string v4, "JtAd"

	new-instance v5, Ljava/lang/StringBuilder;

	invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

	const-string v6, "Performing YouTubeAdAction:"

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	iget-object v6, p0, Lcom/jumptap/adtag/actions/YouTubeAdAction;->redirectedUrl:Ljava/lang/String;

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v5

	invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 22
	iget-object v4, p0, Lcom/jumptap/adtag/actions/YouTubeAdAction;->redirectedUrl:Ljava/lang/String;

	invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v3

	.line 23
	.local v3, "uri":Landroid/net/Uri;
	if-eqz p2, :cond_0

	.line 24
	const/4 v4, 0x1

	invoke-virtual {p2, v4}, Lcom/jumptap/adtag/JtAdView;->setLaunchedActivity(Z)V

	.line 25
	invoke-virtual {p2}, Lcom/jumptap/adtag/JtAdView;->notifyLaunchActivity()V

	.line 28
	:cond_0
	:try_start_0
	const-string v4, "com.google.android.youtube.PlayerActivity"

	invoke-direct {p0, p1, v3, v4}, Lcom/jumptap/adtag/actions/YouTubeAdAction;->openYoutubePlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
	:try_end_0
	.catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

	.line 45
	:goto_0
	return-void

	.line 30
	:catch_0
	move-exception v0

	.line 31
	.local v0, "e1":Landroid/content/ActivityNotFoundException;
	const-string v4, "JtAd"

	const-string v5, "cannot start activity: com.google.android.youtube.PlayerActivity"

	invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 32
	const-string v4, "JtAd"

	invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

	move-result-object v5

	invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 34
	:try_start_1
	const-string v4, "com.google.android.youtube.YouTubePlayer"

	invoke-direct {p0, p1, v3, v4}, Lcom/jumptap/adtag/actions/YouTubeAdAction;->openYoutubePlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
	:try_end_1
	.catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

	goto :goto_0

	.line 36
	:catch_1
	move-exception v1

	.line 37
	.local v1, "e2":Landroid/content/ActivityNotFoundException;
	const-string v4, "JtAd"

	const-string v5, "cannot start activity: com.google.android.youtube.YouTubePlayer"

	invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 38
	const-string v4, "JtAd"

	invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

	move-result-object v5

	invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 41
	new-instance v2, Landroid/content/Intent;

	const-string v4, "android.intent.action.VIEW"

	invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.line 42
	.local v2, "myIntent":Landroid/content/Intent;
	invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

	goto :goto_0
.end method
