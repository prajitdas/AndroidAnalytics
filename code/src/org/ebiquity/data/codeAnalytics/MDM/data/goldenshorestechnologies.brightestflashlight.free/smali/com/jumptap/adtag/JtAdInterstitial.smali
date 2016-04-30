.class public Lcom/jumptap/adtag/JtAdInterstitial;
.super Lcom/jumptap/adtag/JtAdView;
.source "JtAdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;,
		Lcom/jumptap/adtag/JtAdInterstitial$InterstitialOnTouchListener;
	}
.end annotation


# instance fields
.field private dismissTask:Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;

.field private isPopupShown:Z

.field private popup:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
	.locals 1
	.param p1, "context"	# Landroid/content/Context;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	.line 35
	invoke-direct {p0, p1}, Lcom/jumptap/adtag/JtAdView;-><init>(Landroid/content/Context;)V

	.line 25
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->isPopupShown:Z

	.line 36
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->init()V

	.line 37
	return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
	.locals 1
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "attrs"	# Landroid/util/AttributeSet;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	.line 57
	invoke-direct {p0, p1, p2}, Lcom/jumptap/adtag/JtAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

	.line 25
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->isPopupShown:Z

	.line 58
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->init()V

	.line 59
	return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
	.locals 1
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "attrs"	# Landroid/util/AttributeSet;
	.param p3, "defStyle"	# I
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	.line 69
	invoke-direct {p0, p1, p2, p3}, Lcom/jumptap/adtag/JtAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

	.line 25
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->isPopupShown:Z

	.line 70
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->init()V

	.line 71
	return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V
	.locals 1
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "widgetSettings"	# Lcom/jumptap/adtag/JtAdWidgetSettings;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	.line 46
	invoke-direct {p0, p1, p2}, Lcom/jumptap/adtag/JtAdView;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V

	.line 25
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->isPopupShown:Z

	.line 47
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->init()V

	.line 48
	return-void
.end method

.method static synthetic access$000(Lcom/jumptap/adtag/JtAdInterstitial;Z)V
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/JtAdInterstitial;
	.param p1, "x1"	# Z

	.prologue
	.line 23
	invoke-direct {p0, p1}, Lcom/jumptap/adtag/JtAdInterstitial;->dismiss(Z)V

	return-void
.end method

.method static synthetic access$100(Lcom/jumptap/adtag/JtAdInterstitial;)V
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/JtAdInterstitial;

	.prologue
	.line 23
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->restartTimer()V

	return-void
.end method

.method private configDismissButton()V
	.locals 2

	.prologue
	.line 166
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->dismiss:Landroid/widget/TextView;

	const/4 v1, 0x0

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

	.line 169
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->dismiss:Landroid/widget/TextView;

	new-instance v1, Lcom/jumptap/adtag/JtAdInterstitial$1;

	invoke-direct {v1, p0}, Lcom/jumptap/adtag/JtAdInterstitial$1;-><init>(Lcom/jumptap/adtag/JtAdInterstitial;)V

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

	.line 175
	return-void
.end method

.method private dismiss(Z)V
	.locals 1
	.param p1, "isManuallyClosed"	# Z

	.prologue
	.line 111
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->stopTimer()V

	.line 112
	iget-boolean v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->isPopupShown:Z

	if-eqz v0, :cond_0

	.line 113
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->popup:Landroid/widget/PopupWindow;

	invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

	.line 114
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->isPopupShown:Z

	.line 117
	:cond_0
	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->onInterstitialDismissed()V

	.line 118
	return-void
.end method

.method private init()V
	.locals 4

	.prologue
	.line 151
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->configDismissButton()V

	.line 155
	new-instance v0, Landroid/widget/PopupWindow;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->getWidthSize()I

	move-result v1

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->getHeightSize()I

	move-result v2

	const/4 v3, 0x1

	invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->popup:Landroid/widget/PopupWindow;

	.line 157
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->webViewArr:[Landroid/webkit/WebView;

	iget v1, p0, Lcom/jumptap/adtag/JtAdInterstitial;->ACTIVE_WEBVIEW_INDEX:I

	aget-object v0, v0, v1

	new-instance v1, Lcom/jumptap/adtag/JtAdInterstitial$InterstitialOnTouchListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->getId()I

	move-result v2

	invoke-direct {v1, p0, p0, v2}, Lcom/jumptap/adtag/JtAdInterstitial$InterstitialOnTouchListener;-><init>(Lcom/jumptap/adtag/JtAdInterstitial;Lcom/jumptap/adtag/JtAdView;I)V

	invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

	.line 158
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->webViewArr:[Landroid/webkit/WebView;

	iget v1, p0, Lcom/jumptap/adtag/JtAdInterstitial;->INACTIVE_WEBVIEW_INDEX:I

	aget-object v0, v0, v1

	new-instance v1, Lcom/jumptap/adtag/JtAdInterstitial$InterstitialOnTouchListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->getId()I

	move-result v2

	invoke-direct {v1, p0, p0, v2}, Lcom/jumptap/adtag/JtAdInterstitial$InterstitialOnTouchListener;-><init>(Lcom/jumptap/adtag/JtAdInterstitial;Lcom/jumptap/adtag/JtAdView;I)V

	invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

	.line 161
	return-void
.end method

.method private restartTimer()V
	.locals 0

	.prologue
	.line 198
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->stopTimer()V

	.line 199
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->startTimer()V

	.line 200
	return-void
.end method

.method private startTimer()V
	.locals 5

	.prologue
	.line 178
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdInterstitial;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getInterstitialshowTime()I

	move-result v0

	.line 180
	.local v0, "interShowTime":I
	const-string v2, "JtAd"

	const-string v3, "Starting interstitial timer"

	invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 181
	new-instance v1, Ljava/util/Timer;

	const-string v2, "DismisTask"

	invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

	.line 182
	.local v1, "timer":Ljava/util/Timer;
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdInterstitial;->dismissTask:Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;

	if-eqz v2, :cond_0

	.line 183
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdInterstitial;->dismissTask:Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;

	invoke-virtual {v2}, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;->cancel()Z

	.line 185
	:cond_0
	new-instance v2, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;

	invoke-direct {v2, p0}, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;-><init>(Lcom/jumptap/adtag/JtAdInterstitial;)V

	iput-object v2, p0, Lcom/jumptap/adtag/JtAdInterstitial;->dismissTask:Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;

	.line 186
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdInterstitial;->dismissTask:Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;

	mul-int/lit16 v3, v0, 0x3e8

	int-to-long v3, v3

	invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

	.line 188
	return-void
.end method

.method private stopTimer()V
	.locals 2

	.prologue
	.line 191
	const-string v0, "JtAd"

	const-string v1, "stopping interstitial timer"

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 192
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->dismissTask:Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;

	if-eqz v0, :cond_0

	.line 193
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->dismissTask:Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;

	invoke-virtual {v0}, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;->cancel()Z

	.line 195
	:cond_0
	return-void
.end method


# virtual methods
.method public dismiss()V
	.locals 1

	.prologue
	.line 94
	const/4 v0, 0x0

	invoke-direct {p0, v0}, Lcom/jumptap/adtag/JtAdInterstitial;->dismiss(Z)V

	.line 95
	return-void
.end method

.method protected getHeightSize()I
	.locals 1

	.prologue
	.line 137
	const/4 v0, -0x1

	return v0
.end method

.method protected getWidthSize()I
	.locals 1

	.prologue
	.line 141
	const/4 v0, -0x1

	return v0
.end method

.method public onAdError(I)V
	.locals 1
	.param p1, "errorCode"	# I

	.prologue
	.line 122
	invoke-super {p0, p1}, Lcom/jumptap/adtag/JtAdView;->onAdError(I)V

	.line 123
	const/4 v0, 0x0

	invoke-direct {p0, v0}, Lcom/jumptap/adtag/JtAdInterstitial;->dismiss(Z)V

	.line 124
	return-void
.end method

.method public onNoAdFound()V
	.locals 1

	.prologue
	.line 128
	invoke-super {p0}, Lcom/jumptap/adtag/JtAdView;->onNoAdFound()V

	.line 129
	const/4 v0, 0x0

	invoke-direct {p0, v0}, Lcom/jumptap/adtag/JtAdInterstitial;->dismiss(Z)V

	.line 130
	return-void
.end method

.method public resize(IIZ)V
	.locals 0
	.param p1, "width"	# I
	.param p2, "height"	# I
	.param p3, "shouldExpand"	# Z

	.prologue
	.line 134
	return-void
.end method

.method public show()V
	.locals 0

	.prologue
	.line 78
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->startTimer()V

	.line 79
	return-void
.end method

.method public showAsPopup()V
	.locals 3

	.prologue
	const/4 v2, 0x0

	.line 86
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->popup:Landroid/widget/PopupWindow;

	const/16 v1, 0x30

	invoke-virtual {v0, p0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

	.line 87
	const/4 v0, 0x1

	iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdInterstitial;->isPopupShown:Z

	.line 88
	return-void
.end method

.method protected startTimers(Z)V
	.locals 0
	.param p1, "shouldRefreshAd"	# Z

	.prologue
	.line 145
	invoke-super {p0, p1}, Lcom/jumptap/adtag/JtAdView;->startTimers(Z)V

	.line 146
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdInterstitial;->startTimer()V

	.line 147
	return-void
.end method
