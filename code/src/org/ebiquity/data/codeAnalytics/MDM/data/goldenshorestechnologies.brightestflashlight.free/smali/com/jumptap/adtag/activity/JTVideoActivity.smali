.class public Lcom/jumptap/adtag/activity/JTVideoActivity;
.super Landroid/app/Activity;
.source "JTVideoActivity.java"

# interfaces
.implements Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field private static final LEARN_MORE_BTN_ID:I = 0x4a2cb71

.field private static final SKIP_BTN_ID:I = 0x87a238


# instance fields
.field private learnMoreBtn:Landroid/widget/Button;

.field private learnMoreBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

.field private skipBtn:Landroid/widget/Button;

.field private skipBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
	.locals 0

	.prologue
	.line 36
	invoke-direct {p0}, Landroid/app/Activity;-><init>()V

	return-void
.end method

.method static synthetic access$000(Lcom/jumptap/adtag/activity/JTVideoActivity;)V
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/activity/JTVideoActivity;

	.prologue
	.line 36
	invoke-direct {p0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->closeActivity()V

	return-void
.end method

.method static synthetic access$100(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/RelativeLayout$LayoutParams;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/activity/JTVideoActivity;

	.prologue
	.line 36
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

	return-object v0
.end method

.method static synthetic access$200(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/Button;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/activity/JTVideoActivity;

	.prologue
	.line 36
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtn:Landroid/widget/Button;

	return-object v0
.end method

.method static synthetic access$300(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/RelativeLayout$LayoutParams;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/activity/JTVideoActivity;

	.prologue
	.line 36
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

	return-object v0
.end method

.method static synthetic access$400(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/Button;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/activity/JTVideoActivity;

	.prologue
	.line 36
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtn:Landroid/widget/Button;

	return-object v0
.end method

.method private closeActivity()V
	.locals 1

	.prologue
	.line 200
	new-instance v0, Lcom/jumptap/adtag/activity/JTVideoActivity$3;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/activity/JTVideoActivity$3;-><init>(Lcom/jumptap/adtag/activity/JTVideoActivity;)V

	invoke-virtual {p0, v0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

	.line 219
	return-void
.end method

.method private configLearnMoreBtnOnClickListener()V
	.locals 3

	.prologue
	.line 67
	invoke-static {}, Lcom/jumptap/adtag/activity/JTVideo;->getClickThroughUrl()Ljava/lang/String;

	move-result-object v0

	.line 69
	.local v0, "clickThroughUrl":Ljava/lang/String;
	if-eqz v0, :cond_0

	const-string v1, ""

	invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-nez v1, :cond_0

	.line 70
	iget-object v1, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtn:Landroid/widget/Button;

	new-instance v2, Lcom/jumptap/adtag/activity/JTVideoActivity$1;

	invoke-direct {v2, p0, v0}, Lcom/jumptap/adtag/activity/JTVideoActivity$1;-><init>(Lcom/jumptap/adtag/activity/JTVideoActivity;Ljava/lang/String;)V

	invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

	.line 96
	:goto_0
	return-void

	.line 94
	:cond_0
	iget-object v1, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtn:Landroid/widget/Button;

	const/16 v2, 0x8

	invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

	goto :goto_0
.end method

.method private initJtMediaPlayer()V
	.locals 2

	.prologue
	.line 106
	invoke-static {}, Lcom/jumptap/adtag/media/JTMediaPlayer;->getInstance()Lcom/jumptap/adtag/media/JTMediaPlayer;

	move-result-object v0

	.line 109
	.local v0, "jtMediaPlayer":Lcom/jumptap/adtag/media/JTMediaPlayer;
	invoke-virtual {v0, p0}, Lcom/jumptap/adtag/media/JTMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

	.line 110
	iget-object v1, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->videoView:Landroid/widget/VideoView;

	invoke-virtual {v0, v1}, Lcom/jumptap/adtag/media/JTMediaPlayer;->setVideoView(Landroid/widget/VideoView;)V

	.line 111
	return-void
.end method

.method private initUI()V
	.locals 9

	.prologue
	const/16 v8, 0x23

	const/4 v6, 0x6

	const/4 v5, -0x1

	const/4 v7, -0x2

	.line 138
	invoke-virtual {p0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->getWindowManager()Landroid/view/WindowManager;

	move-result-object v4

	invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

	move-result-object v0

	.line 139
	.local v0, "display":Landroid/view/Display;
	invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

	move-result v3

	.line 141
	.local v3, "width":I
	new-instance v1, Landroid/widget/RelativeLayout;

	invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

	.line 142
	.local v1, "relLayout":Landroid/widget/RelativeLayout;
	new-instance v4, Landroid/view/ViewGroup$LayoutParams;

	invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

	invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

	.line 146
	invoke-direct {p0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->setLearnMoreButton()V

	.line 147
	new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

	div-int/lit8 v5, v3, 0x2

	invoke-direct {v4, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	iput-object v4, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

	.line 148
	iget-object v4, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

	invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 149
	iget-object v4, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtn:Landroid/widget/Button;

	iget-object v5, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

	invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 152
	invoke-direct {p0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->setSkipButton()V

	.line 153
	new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

	div-int/lit8 v5, v3, 0x2

	invoke-direct {v4, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	iput-object v4, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

	.line 154
	iget-object v4, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

	invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 155
	iget-object v4, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

	const/4 v5, 0x1

	const v6, 0x4a2cb71

	invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

	.line 156
	iget-object v4, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtn:Landroid/widget/Button;

	iget-object v5, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;

	invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 159
	new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 161
	.local v2, "videoLp":Landroid/widget/RelativeLayout$LayoutParams;
	const/4 v4, 0x3

	const v5, 0x87a238

	invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

	.line 162
	new-instance v4, Landroid/widget/VideoView;

	invoke-direct {v4, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

	iput-object v4, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->videoView:Landroid/widget/VideoView;

	.line 163
	iget-object v4, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->videoView:Landroid/widget/VideoView;

	invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 165
	invoke-virtual {p0, v1}, Lcom/jumptap/adtag/activity/JTVideoActivity;->setContentView(Landroid/view/View;)V

	.line 166
	return-void
.end method

.method private sendTrackingLink()V
	.locals 12

	.prologue
	const/4 v8, 0x1

	const/4 v9, 0x0

	.line 114
	invoke-static {}, Lcom/jumptap/adtag/activity/JTVideo;->getTrackingUrl()Ljava/util/List;

	move-result-object v6

	.line 116
	.local v6, "urlArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
	if-eqz v6, :cond_3

	.line 117
	new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

	invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

	.line 118
	.local v0, "client":Lorg/apache/http/client/HttpClient;
	const/4 v2, 0x0

	.line 119
	.local v2, "get":Lorg/apache/http/client/methods/HttpGet;
	invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

	move-result-object v4

	.local v4, "i$":Ljava/util/Iterator;
	:cond_0
	:goto_0
	invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

	move-result v7

	if-eqz v7, :cond_3

	invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v5

	check-cast v5, Ljava/lang/String;

	.line 121
	.local v5, "url":Ljava/lang/String;
	if-eqz v5, :cond_1

	move v7, v8

	:goto_1
	const-string v10, ""

	invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v10

	if-nez v10, :cond_2

	move v10, v8

	:goto_2
	and-int/2addr v7, v10

	if-eqz v7, :cond_0

	.line 123
	:try_start_0
	new-instance v3, Lorg/apache/http/client/methods/HttpGet;

	invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
	:try_end_0
	.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
	.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

	.line 124
	.end local v2	# "get":Lorg/apache/http/client/methods/HttpGet;
	.local v3, "get":Lorg/apache/http/client/methods/HttpGet;
	:try_start_1
	invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

	.line 125
	const-string v7, "JtAd"

	new-instance v10, Ljava/lang/StringBuilder;

	invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

	const-string v11, "Sending video tracking url succeeded   url="

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v10

	invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_1
	.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
	.catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

	move-object v2, v3

	.line 130
	.end local v3	# "get":Lorg/apache/http/client/methods/HttpGet;
	.restart local v2	# "get":Lorg/apache/http/client/methods/HttpGet;
	goto :goto_0

	:cond_1
	move v7, v9

	.line 121
	goto :goto_1

	:cond_2
	move v10, v9

	goto :goto_2

	.line 126
	:catch_0
	move-exception v1

	.line 127
	.local v1, "e":Lorg/apache/http/client/ClientProtocolException;
	:goto_3
	const-string v7, "JtAd"

	new-instance v10, Ljava/lang/StringBuilder;

	invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

	const-string v11, "fail to send video tracking url  url="

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v10

	invoke-static {v7, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto :goto_0

	.line 128
	.end local v1	# "e":Lorg/apache/http/client/ClientProtocolException;
	:catch_1
	move-exception v1

	.line 129
	.local v1, "e":Ljava/io/IOException;
	:goto_4
	const-string v7, "JtAd"

	new-instance v10, Ljava/lang/StringBuilder;

	invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

	const-string v11, "fail to send video tracking url  url="

	invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v10

	invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v10

	invoke-static {v7, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto :goto_0

	.line 134
	.end local v0	# "client":Lorg/apache/http/client/HttpClient;
	.end local v1	# "e":Ljava/io/IOException;
	.end local v2	# "get":Lorg/apache/http/client/methods/HttpGet;
	.end local v4	# "i$":Ljava/util/Iterator;
	.end local v5	# "url":Ljava/lang/String;
	:cond_3
	return-void

	.line 128
	.restart local v0	# "client":Lorg/apache/http/client/HttpClient;
	.restart local v3	# "get":Lorg/apache/http/client/methods/HttpGet;
	.restart local v4	# "i$":Ljava/util/Iterator;
	.restart local v5	# "url":Ljava/lang/String;
	:catch_2
	move-exception v1

	move-object v2, v3

	.end local v3	# "get":Lorg/apache/http/client/methods/HttpGet;
	.restart local v2	# "get":Lorg/apache/http/client/methods/HttpGet;
	goto :goto_4

	.line 126
	.end local v2	# "get":Lorg/apache/http/client/methods/HttpGet;
	.restart local v3	# "get":Lorg/apache/http/client/methods/HttpGet;
	:catch_3
	move-exception v1

	move-object v2, v3

	.end local v3	# "get":Lorg/apache/http/client/methods/HttpGet;
	.restart local v2	# "get":Lorg/apache/http/client/methods/HttpGet;
	goto :goto_3
.end method

.method private setLearnMoreButton()V
	.locals 2

	.prologue
	.line 169
	new-instance v0, Landroid/widget/Button;

	invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

	iput-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtn:Landroid/widget/Button;

	.line 170
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtn:Landroid/widget/Button;

	const v1, 0x4a2cb71

	invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

	.line 171
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtn:Landroid/widget/Button;

	const/4 v1, 0x1

	invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

	.line 172
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtn:Landroid/widget/Button;

	const-string v1, "Learn more"

	invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

	.line 173
	return-void
.end method

.method private setSkipButton()V
	.locals 2

	.prologue
	.line 176
	new-instance v0, Landroid/widget/Button;

	invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

	iput-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtn:Landroid/widget/Button;

	.line 177
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtn:Landroid/widget/Button;

	const v1, 0x87a238

	invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

	.line 178
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtn:Landroid/widget/Button;

	const/4 v1, 0x1

	invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

	.line 179
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtn:Landroid/widget/Button;

	const-string v1, "Skip"

	invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

	.line 180
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtn:Landroid/widget/Button;

	new-instance v1, Lcom/jumptap/adtag/activity/JTVideoActivity$2;

	invoke-direct {v1, p0}, Lcom/jumptap/adtag/activity/JTVideoActivity$2;-><init>(Lcom/jumptap/adtag/activity/JTVideoActivity;)V

	invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

	.line 196
	return-void
.end method


# virtual methods
.method public getAdRequestId()Ljava/lang/String;
	.locals 1

	.prologue
	.line 244
	invoke-static {}, Lcom/jumptap/adtag/activity/JTVideo;->getAdRequestId()Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method

.method public getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;
	.locals 1

	.prologue
	.line 248
	invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v0

	return-object v0
.end method

.method public handleClicks(Ljava/lang/String;)V
	.locals 0
	.param p1, "URI"	# Ljava/lang/String;

	.prologue
	.line 306
	return-void
.end method

.method public hide()V
	.locals 0

	.prologue
	.line 289
	return-void
.end method

.method public onAdError(I)V
	.locals 0
	.param p1, "errorCode"	# I

	.prologue
	.line 252
	return-void
.end method

.method public onBeginAdInteraction()V
	.locals 0

	.prologue
	.line 279
	return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
	.locals 0
	.param p1, "mp"	# Landroid/media/MediaPlayer;

	.prologue
	.line 299
	invoke-direct {p0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->closeActivity()V

	.line 300
	return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
	.locals 1
	.param p1, "newConfig"	# Landroid/content/res/Configuration;

	.prologue
	.line 225
	new-instance v0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/activity/JTVideoActivity$4;-><init>(Lcom/jumptap/adtag/activity/JTVideoActivity;)V

	invoke-virtual {p0, v0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

	.line 240
	invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

	.line 241
	return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
	.locals 0
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	.line 51
	invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

	.line 54
	invoke-direct {p0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->initUI()V

	.line 57
	invoke-direct {p0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->initJtMediaPlayer()V

	.line 60
	invoke-direct {p0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->sendTrackingLink()V

	.line 62
	invoke-direct {p0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->configLearnMoreBtnOnClickListener()V

	.line 64
	return-void
.end method

.method public onEndAdInteraction()V
	.locals 0

	.prologue
	.line 284
	return-void
.end method

.method public onInterstitialDismissed()V
	.locals 0

	.prologue
	.line 255
	return-void
.end method

.method public onNewAd()V
	.locals 0

	.prologue
	.line 258
	return-void
.end method

.method public onNoAdFound()V
	.locals 0

	.prologue
	.line 261
	return-void
.end method

.method protected onPause()V
	.locals 0

	.prologue
	.line 100
	invoke-super {p0}, Landroid/app/Activity;->onPause()V

	.line 101
	invoke-direct {p0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->closeActivity()V

	.line 102
	return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
	.locals 1
	.param p1, "action"	# Ljava/lang/Runnable;

	.prologue
	.line 264
	const/4 v0, 0x0

	return v0
.end method

.method public resize(IIZ)V
	.locals 0
	.param p1, "width"	# I
	.param p2, "height"	# I
	.param p3, "shouldExpand"	# Z

	.prologue
	.line 269
	return-void
.end method

.method public resizeWithCallback(ZIILjava/lang/String;ILjava/lang/String;)V
	.locals 0
	.param p1, "shouldExpand"	# Z
	.param p2, "width"	# I
	.param p3, "height"	# I
	.param p4, "callback"	# Ljava/lang/String;
	.param p5, "transition"	# I
	.param p6, "options"	# Ljava/lang/String;

	.prologue
	.line 274
	return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;)V
	.locals 0
	.param p1, "resContent"	# Ljava/lang/String;
	.param p2, "adRequestId"	# Ljava/lang/String;

	.prologue
	.line 292
	return-void
.end method
