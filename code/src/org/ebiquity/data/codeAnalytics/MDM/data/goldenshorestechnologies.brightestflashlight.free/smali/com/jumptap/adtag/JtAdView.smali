.class public Lcom/jumptap/adtag/JtAdView;
.super Landroid/widget/RelativeLayout;
.source "JtAdView.java"

# interfaces
.implements Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lcom/jumptap/adtag/JtAdView$PerformActionHandler;,
		Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;,
		Lcom/jumptap/adtag/JtAdView$JtAdListener;
	}
.end annotation


# static fields
.field private static final DISMISS_BTN_HIEGHT:I = 0x1e

.field private static final DISMISS_BTN_ID:I = 0xf423f

.field private static final DISMISS_BTN_TEXT_SIZE:I = 0x14

.field protected static final MILLIS_IN_SEC:I = 0x3e8


# instance fields
.field protected ACTIVE_WEBVIEW_INDEX:I

.field protected INACTIVE_WEBVIEW_INDEX:I

.field private accel:Lcom/jumptap/adtag/utils/JtAccelerator;

.field private adRequestId:Ljava/lang/String;

.field private adRequestUrl:Ljava/lang/String;

.field private adUrlBuilder:Lcom/jumptap/adtag/utils/JtAdUrlBuilder;

.field protected adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

.field protected context:Landroid/content/Context;

.field protected dismiss:Landroid/widget/TextView;

.field private emptyBodyChecker:Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;

.field protected eventManager:Lcom/jumptap/adtag/events/EventManager;

.field private fetcher:Lcom/jumptap/adtag/utils/JtAdFetcher;

.field private imgView:Landroid/widget/ImageView;

.field private isExpanded:Z

.field private isOnReceivedErrorCalled:Z

.field private isWindowVisible:Z

.field private launchedActivity:Z

.field private loadUrlRunnable:Ljava/lang/Runnable;

.field private mainHandler:Landroid/os/Handler;

.field private refreshIsImmediate:Z

.field private responseContent:Ljava/lang/String;

.field protected webViewArr:[Landroid/webkit/WebView;

.field protected widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
	.locals 3
	.param p1, "context"	# Landroid/content/Context;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	const/4 v2, 0x0

	const/4 v1, 0x0

	.line 86
	invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

	.line 46
	iput v1, p0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	.line 47
	const/4 v0, 0x1

	iput v0, p0, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

	.line 51
	iput-object v2, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	.line 64
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->refreshIsImmediate:Z

	.line 68
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isExpanded:Z

	.line 69
	iput-object v2, p0, Lcom/jumptap/adtag/JtAdView;->mainHandler:Landroid/os/Handler;

	.line 71
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isWindowVisible:Z

	.line 72
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isOnReceivedErrorCalled:Z

	.line 74
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->responseContent:Ljava/lang/String;

	.line 75
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adRequestUrl:Ljava/lang/String;

	.line 76
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adRequestId:Ljava/lang/String;

	.line 78
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->launchedActivity:Z

	.line 87
	const-string v0, "JtAd"

	const-string v1, "JtAdView(Context context)"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 89
	invoke-direct {p0, p1, v2}, Lcom/jumptap/adtag/JtAdView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

	.line 90
	return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
	.locals 3
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "attrs"	# Landroid/util/AttributeSet;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	const/4 v2, 0x0

	const/4 v1, 0x0

	.line 114
	invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

	.line 46
	iput v1, p0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	.line 47
	const/4 v0, 0x1

	iput v0, p0, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

	.line 51
	iput-object v2, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	.line 64
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->refreshIsImmediate:Z

	.line 68
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isExpanded:Z

	.line 69
	iput-object v2, p0, Lcom/jumptap/adtag/JtAdView;->mainHandler:Landroid/os/Handler;

	.line 71
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isWindowVisible:Z

	.line 72
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isOnReceivedErrorCalled:Z

	.line 74
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->responseContent:Ljava/lang/String;

	.line 75
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adRequestUrl:Ljava/lang/String;

	.line 76
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adRequestId:Ljava/lang/String;

	.line 78
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->launchedActivity:Z

	.line 115
	const-string v0, "JtAd"

	const-string v1, "JtAdView(Context context, AttributeSet attrs)"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 117
	invoke-direct {p0, p1, p2}, Lcom/jumptap/adtag/JtAdView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

	.line 118
	return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
	.locals 3
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "attrs"	# Landroid/util/AttributeSet;
	.param p3, "defStyle"	# I
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	const/4 v2, 0x0

	const/4 v1, 0x0

	.line 128
	invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

	.line 46
	iput v1, p0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	.line 47
	const/4 v0, 0x1

	iput v0, p0, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

	.line 51
	iput-object v2, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	.line 64
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->refreshIsImmediate:Z

	.line 68
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isExpanded:Z

	.line 69
	iput-object v2, p0, Lcom/jumptap/adtag/JtAdView;->mainHandler:Landroid/os/Handler;

	.line 71
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isWindowVisible:Z

	.line 72
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isOnReceivedErrorCalled:Z

	.line 74
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->responseContent:Ljava/lang/String;

	.line 75
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adRequestUrl:Ljava/lang/String;

	.line 76
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adRequestId:Ljava/lang/String;

	.line 78
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->launchedActivity:Z

	.line 129
	const-string v0, "JtAd"

	const-string v1, "JtAdView(Context context, AttributeSet attrs, int defStyle)"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 131
	invoke-direct {p0, p1, p2}, Lcom/jumptap/adtag/JtAdView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

	.line 132
	return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V
	.locals 3
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "widgetSettings"	# Lcom/jumptap/adtag/JtAdWidgetSettings;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	const/4 v2, 0x0

	const/4 v1, 0x0

	.line 99
	invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

	.line 46
	iput v1, p0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	.line 47
	const/4 v0, 0x1

	iput v0, p0, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

	.line 51
	iput-object v2, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	.line 64
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->refreshIsImmediate:Z

	.line 68
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isExpanded:Z

	.line 69
	iput-object v2, p0, Lcom/jumptap/adtag/JtAdView;->mainHandler:Landroid/os/Handler;

	.line 71
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isWindowVisible:Z

	.line 72
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isOnReceivedErrorCalled:Z

	.line 74
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->responseContent:Ljava/lang/String;

	.line 75
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adRequestUrl:Ljava/lang/String;

	.line 76
	const-string v0, ""

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adRequestId:Ljava/lang/String;

	.line 78
	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->launchedActivity:Z

	.line 100
	iput-object p2, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	.line 102
	const-string v0, "JtAd"

	const-string v1, "JtAdView(Context context, JtAdWidgetSettings widgetSettings)"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 104
	invoke-direct {p0, p1, v2}, Lcom/jumptap/adtag/JtAdView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

	.line 105
	return-void
.end method

.method static synthetic access$000(Lcom/jumptap/adtag/JtAdView;)V
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/JtAdView;

	.prologue
	.line 37
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->loadUrlIfVisible()V

	return-void
.end method

.method static synthetic access$200(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;)V
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/JtAdView;
	.param p1, "x1"	# Ljava/lang/String;

	.prologue
	.line 37
	invoke-direct {p0, p1}, Lcom/jumptap/adtag/JtAdView;->logChromeActivity(Ljava/lang/String;)V

	return-void
.end method

.method static synthetic access$300(Lcom/jumptap/adtag/JtAdView;I)V
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/JtAdView;
	.param p1, "x1"	# I

	.prologue
	.line 37
	invoke-direct {p0, p1}, Lcom/jumptap/adtag/JtAdView;->refreshAd(I)V

	return-void
.end method

.method static synthetic access$400(Lcom/jumptap/adtag/JtAdView;)Ljava/lang/Runnable;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/JtAdView;

	.prologue
	.line 37
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->loadUrlRunnable:Ljava/lang/Runnable;

	return-object v0
.end method

.method static synthetic access$500(Lcom/jumptap/adtag/JtAdView;)Z
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/JtAdView;

	.prologue
	.line 37
	iget-boolean v0, p0, Lcom/jumptap/adtag/JtAdView;->isOnReceivedErrorCalled:Z

	return v0
.end method

.method static synthetic access$502(Lcom/jumptap/adtag/JtAdView;Z)Z
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/JtAdView;
	.param p1, "x1"	# Z

	.prologue
	.line 37
	iput-boolean p1, p0, Lcom/jumptap/adtag/JtAdView;->isOnReceivedErrorCalled:Z

	return p1
.end method

.method static synthetic access$600(Lcom/jumptap/adtag/JtAdView;)Landroid/widget/ImageView;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/JtAdView;

	.prologue
	.line 37
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->imgView:Landroid/widget/ImageView;

	return-object v0
.end method

.method private binderBrowser(Landroid/webkit/WebView;)V
	.locals 2
	.param p1, "webView"	# Landroid/webkit/WebView;

	.prologue
	.line 631
	new-instance v0, Lcom/jumptap/adtag/callbacks/JtWebviewCb;

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->context:Landroid/content/Context;

	invoke-direct {v0, v1, p0}, Lcom/jumptap/adtag/callbacks/JtWebviewCb;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;)V

	const-string v1, "JtVwCb"

	invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

	.line 633
	new-instance v0, Lcom/jumptap/adtag/utils/JtAccelerator;

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->context:Landroid/content/Context;

	invoke-direct {v0, v1, p1}, Lcom/jumptap/adtag/utils/JtAccelerator;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->accel:Lcom/jumptap/adtag/utils/JtAccelerator;

	.line 634
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->accel:Lcom/jumptap/adtag/utils/JtAccelerator;

	const-string v1, "Accel"

	invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

	.line 635
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->eventManager:Lcom/jumptap/adtag/events/EventManager;

	const-string v1, "Tracking"

	invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

	.line 636
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->emptyBodyChecker:Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;

	const-string v1, "EmptyBodyChecker"

	invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

	.line 637
	return-void
.end method

.method private getDensity()F
	.locals 1

	.prologue
	.line 429
	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getContext()Landroid/content/Context;

	move-result-object v0

	invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

	move-result-object v0

	invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v0

	iget v0, v0, Landroid/util/DisplayMetrics;->density:F

	return v0
.end method

.method private getMainHandler()Landroid/os/Handler;
	.locals 2

	.prologue
	.line 181
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->mainHandler:Landroid/os/Handler;

	if-nez v0, :cond_0

	.line 182
	new-instance v0, Landroid/os/Handler;

	invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

	move-result-object v1

	invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->mainHandler:Landroid/os/Handler;

	.line 184
	:cond_0
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->mainHandler:Landroid/os/Handler;

	return-object v0
.end method

.method private getUrlFromNetwork()V
	.locals 2

	.prologue
	.line 552
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->fetcher:Lcom/jumptap/adtag/utils/JtAdFetcher;

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->adRequestUrl:Ljava/lang/String;

	invoke-virtual {v0, v1}, Lcom/jumptap/adtag/utils/JtAdFetcher;->kickOffUrlFetch(Ljava/lang/String;)V

	.line 553
	return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
	.locals 5
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "attrs"	# Landroid/util/AttributeSet;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	.line 335
	const-string v3, "JtAd"

	const-string v4, "getting into init()"

	invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 337
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdView;->context:Landroid/content/Context;

	.line 342
	new-instance v3, Lcom/jumptap/adtag/JtAdView$5;

	invoke-direct {v3, p0}, Lcom/jumptap/adtag/JtAdView$5;-><init>(Lcom/jumptap/adtag/JtAdView;)V

	iput-object v3, p0, Lcom/jumptap/adtag/JtAdView;->loadUrlRunnable:Ljava/lang/Runnable;

	.line 352
	:try_start_0
	invoke-direct {p0, p2}, Lcom/jumptap/adtag/JtAdView;->initWidgetSettings(Landroid/util/AttributeSet;)V

	.line 354
	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getWidthSize()I

	move-result v3

	invoke-virtual {p0, v3}, Lcom/jumptap/adtag/JtAdView;->setMinimumWidth(I)V

	.line 355
	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getHeightSize()I

	move-result v3

	invoke-virtual {p0, v3}, Lcom/jumptap/adtag/JtAdView;->setMinimumHeight(I)V

	.line 358
	new-instance v3, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;

	iget-object v4, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-direct {v3, v4, p1}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;-><init>(Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/content/Context;)V

	iput-object v3, p0, Lcom/jumptap/adtag/JtAdView;->adUrlBuilder:Lcom/jumptap/adtag/utils/JtAdUrlBuilder;

	.line 361
	new-instance v3, Lcom/jumptap/adtag/events/EventManager;

	invoke-direct {v3, p1, p0}, Lcom/jumptap/adtag/events/EventManager;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;)V

	iput-object v3, p0, Lcom/jumptap/adtag/JtAdView;->eventManager:Lcom/jumptap/adtag/events/EventManager;

	.line 364
	new-instance v3, Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;

	iget-object v4, p0, Lcom/jumptap/adtag/JtAdView;->eventManager:Lcom/jumptap/adtag/events/EventManager;

	invoke-direct {v3, p0, v4}, Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;-><init>(Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;Lcom/jumptap/adtag/events/EventManager;)V

	iput-object v3, p0, Lcom/jumptap/adtag/JtAdView;->emptyBodyChecker:Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;

	.line 366
	const/4 v3, 0x0

	invoke-virtual {p0, v3}, Lcom/jumptap/adtag/JtAdView;->setVerticalScrollBarEnabled(Z)V

	.line 367
	const/4 v3, 0x0

	invoke-virtual {p0, v3}, Lcom/jumptap/adtag/JtAdView;->setHorizontalScrollBarEnabled(Z)V

	.line 370
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->initAlternativeImgView()V

	.line 373
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->initWebViewArray()V

	.line 377
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->initDismissButton()V

	.line 379
	new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getWidthSize()I

	move-result v3

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getDismissBtnHeight()I

	move-result v4

	invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 380
	.local v0, "dismissBtnRlp":Landroid/widget/RelativeLayout$LayoutParams;
	iget-object v3, p0, Lcom/jumptap/adtag/JtAdView;->dismiss:Landroid/widget/TextView;

	invoke-virtual {p0, v3, v0}, Lcom/jumptap/adtag/JtAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 382
	new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getWidthSize()I

	move-result v3

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getHeightSize()I

	move-result v4

	invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 383
	.local v2, "viewsRlp":Landroid/widget/RelativeLayout$LayoutParams;
	const/4 v3, 0x3

	const v4, 0xf423f

	invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

	.line 384
	const/16 v3, 0xe

	invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 385
	iget-object v3, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget v4, p0, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

	aget-object v3, v3, v4

	invoke-virtual {p0, v3, v2}, Lcom/jumptap/adtag/JtAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 386
	iget-object v3, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget v4, p0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	aget-object v3, v3, v4

	invoke-virtual {p0, v3, v2}, Lcom/jumptap/adtag/JtAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 387
	iget-object v3, p0, Lcom/jumptap/adtag/JtAdView;->imgView:Landroid/widget/ImageView;

	invoke-virtual {p0, v3, v2}, Lcom/jumptap/adtag/JtAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 390
	new-instance v3, Lcom/jumptap/adtag/utils/JtAdFetcher;

	invoke-direct {v3, p1, p0}, Lcom/jumptap/adtag/utils/JtAdFetcher;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;)V

	iput-object v3, p0, Lcom/jumptap/adtag/JtAdView;->fetcher:Lcom/jumptap/adtag/utils/JtAdFetcher;

	.line 391
	iget-object v3, p0, Lcom/jumptap/adtag/JtAdView;->fetcher:Lcom/jumptap/adtag/utils/JtAdFetcher;

	iget-object v4, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v4}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getShouldDebugNetworkTraffic()Z

	move-result v4

	invoke-virtual {v3, v4}, Lcom/jumptap/adtag/utils/JtAdFetcher;->setShouldDebugNetworkTraffic(Z)V
	:try_end_0
	.catch Lcom/jumptap/adtag/utils/JtException; {:try_start_0 .. :try_end_0} :catch_0

	.line 398
	return-void

	.line 393
	.end local v0	# "dismissBtnRlp":Landroid/widget/RelativeLayout$LayoutParams;
	.end local v2	# "viewsRlp":Landroid/widget/RelativeLayout$LayoutParams;
	:catch_0
	move-exception v1

	.line 394
	.local v1, "e":Lcom/jumptap/adtag/utils/JtException;
	const-string v3, "JtAd"

	invoke-virtual {v1}, Lcom/jumptap/adtag/utils/JtException;->getMessage()Ljava/lang/String;

	move-result-object v4

	invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 396
	throw v1
.end method

.method private initAlternativeImgView()V
	.locals 2

	.prologue
	.line 644
	new-instance v0, Landroid/widget/ImageView;

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->context:Landroid/content/Context;

	invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->imgView:Landroid/widget/ImageView;

	.line 650
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->setBgAndImg()V

	.line 651
	return-void
.end method

.method private initDismissButton()V
	.locals 2

	.prologue
	.line 401
	new-instance v0, Landroid/widget/TextView;

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->context:Landroid/content/Context;

	invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->dismiss:Landroid/widget/TextView;

	.line 402
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->dismiss:Landroid/widget/TextView;

	const v1, 0xf423f

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

	.line 403
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->dismiss:Landroid/widget/TextView;

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getDismissButtonLabel()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

	.line 404
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->dismiss:Landroid/widget/TextView;

	const/16 v1, 0x8

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

	.line 405
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->dismiss:Landroid/widget/TextView;

	const/4 v1, 0x1

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

	.line 406
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->dismiss:Landroid/widget/TextView;

	const/high16 v1, -0x1000000

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

	.line 407
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->dismiss:Landroid/widget/TextView;

	const/high16 v1, 0x41a00000	# 20.0f

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

	.line 408
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->dismiss:Landroid/widget/TextView;

	const v1, -0x777778

	invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

	.line 409
	return-void
.end method

.method private initWebView(Landroid/webkit/WebView;)V
	.locals 3
	.param p1, "webView"	# Landroid/webkit/WebView;

	.prologue
	const/4 v1, 0x0

	.line 569
	invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

	.line 570
	invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

	.line 571
	invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

	move-result-object v1

	const/4 v2, 0x1

	invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

	.line 572
	const/4 v1, 0x4

	invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

	.line 578
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getBackgroundColor()I

	move-result v1

	invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

	.line 580
	invoke-direct {p0, p1}, Lcom/jumptap/adtag/JtAdView;->binderBrowser(Landroid/webkit/WebView;)V

	.line 582
	new-instance v1, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;

	const/4 v2, 0x0

	invoke-direct {v1, p0, v2}, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;-><init>(Lcom/jumptap/adtag/JtAdView;Lcom/jumptap/adtag/JtAdView$1;)V

	invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

	.line 583
	new-instance v0, Lcom/jumptap/adtag/JtAdView$JtAdListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-direct {v0, p0, p0, v1}, Lcom/jumptap/adtag/JtAdView$JtAdListener;-><init>(Lcom/jumptap/adtag/JtAdView;Lcom/jumptap/adtag/JtAdView;I)V

	.line 584
	.local v0, "jtAdListener":Lcom/jumptap/adtag/JtAdView$JtAdListener;
	invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

	.line 585
	invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

	.line 586
	invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

	.line 587
	invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

	.line 590
	new-instance v1, Lcom/jumptap/adtag/JtAdView$6;

	invoke-direct {v1, p0}, Lcom/jumptap/adtag/JtAdView$6;-><init>(Lcom/jumptap/adtag/JtAdView;)V

	invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

	.line 628
	return-void
.end method

.method private initWebViewArray()V
	.locals 4

	.prologue
	.line 556
	const/4 v0, 0x2

	new-array v0, v0, [Landroid/webkit/WebView;

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	.line 557
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget v1, p0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	new-instance v2, Landroid/webkit/WebView;

	iget-object v3, p0, Lcom/jumptap/adtag/JtAdView;->context:Landroid/content/Context;

	invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

	aput-object v2, v0, v1

	.line 558
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget v1, p0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	aget-object v0, v0, v1

	invoke-direct {p0, v0}, Lcom/jumptap/adtag/JtAdView;->initWebView(Landroid/webkit/WebView;)V

	.line 559
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget v1, p0, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

	new-instance v2, Landroid/webkit/WebView;

	iget-object v3, p0, Lcom/jumptap/adtag/JtAdView;->context:Landroid/content/Context;

	invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

	aput-object v2, v0, v1

	.line 560
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget v1, p0, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

	aget-object v0, v0, v1

	invoke-direct {p0, v0}, Lcom/jumptap/adtag/JtAdView;->initWebView(Landroid/webkit/WebView;)V

	.line 561
	return-void
.end method

.method private initWidgetSettings(Landroid/util/AttributeSet;)V
	.locals 2
	.param p1, "attributes"	# Landroid/util/AttributeSet;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	.line 670
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	if-nez v0, :cond_0

	.line 671
	invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v0

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	.line 674
	:cond_0
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->context:Landroid/content/Context;

	invoke-static {v0, p1, v1}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->populateSettings(Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/util/AttributeSet;Landroid/content/Context;)V

	.line 676
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getPublisherId()Ljava/lang/String;

	move-result-object v0

	if-eqz v0, :cond_1

	const-string v0, ""

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getPublisherId()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_2

	.line 677
	:cond_1
	new-instance v0, Lcom/jumptap/adtag/utils/JtException;

	const-string v1, "Publisher id was not set. Please set it and try again"

	invoke-direct {v0, v1}, Lcom/jumptap/adtag/utils/JtException;-><init>(Ljava/lang/String;)V

	throw v0

	.line 680
	:cond_2
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getApplicationId()Ljava/lang/String;

	move-result-object v0

	if-eqz v0, :cond_3

	const-string v0, ""

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getApplicationId()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_4

	.line 681
	:cond_3
	const-string v0, "JtAd"

	const-string v1, "Application id was not set. empty application id will be sent to Jumptap servers"

	invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 684
	:cond_4
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getApplicationVersion()Ljava/lang/String;

	move-result-object v0

	if-eqz v0, :cond_5

	const-string v0, ""

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getApplicationVersion()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_6

	.line 685
	:cond_5
	const-string v0, "JtAd"

	const-string v1, "Application version was not set. empty application version will be sent to Jumptap servers"

	invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 687
	:cond_6
	return-void
.end method

.method private loadUrlIfVisible()V
	.locals 5

	.prologue
	.line 517
	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getVisibility()I

	move-result v1

	.line 518
	.local v1, "viewVisibility":I
	const/4 v1, 0x0

	.line 522
	iget-boolean v2, p0, Lcom/jumptap/adtag/JtAdView;->isExpanded:Z

	if-eqz v2, :cond_1

	.line 523
	const-string v2, "JtAd"

	const-string v3, "Ad expanded, no refresh."

	invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 546
	:cond_0
	:goto_0
	return-void

	.line 530
	:cond_1
	iget-boolean v2, p0, Lcom/jumptap/adtag/JtAdView;->refreshIsImmediate:Z

	if-nez v2, :cond_2

	iget-boolean v2, p0, Lcom/jumptap/adtag/JtAdView;->isWindowVisible:Z

	if-eqz v2, :cond_0

	if-nez v1, :cond_0

	.line 531
	:cond_2
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->context:Landroid/content/Context;

	const-string v3, "android.permission.INTERNET"

	invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

	move-result v0

	.line 532
	.local v0, "isInternatePermissionGranted":I
	if-nez v0, :cond_4

	.line 533
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->adUrlBuilder:Lcom/jumptap/adtag/utils/JtAdUrlBuilder;

	if-eqz v2, :cond_0

	.line 534
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->adUrlBuilder:Lcom/jumptap/adtag/utils/JtAdUrlBuilder;

	iget-object v3, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget v4, p0, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

	aget-object v3, v3, v4

	invoke-virtual {v2, v3}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->getAdUrl(Landroid/webkit/WebView;)Ljava/lang/String;

	move-result-object v2

	iput-object v2, p0, Lcom/jumptap/adtag/JtAdView;->adRequestUrl:Ljava/lang/String;

	.line 535
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getShouldDebugNetworkTraffic()Z

	move-result v2

	if-eqz v2, :cond_3

	.line 536
	const-string v2, "JtAd"

	new-instance v3, Ljava/lang/StringBuilder;

	invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

	const-string v4, "Base url : "

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	iget-object v4, p0, Lcom/jumptap/adtag/JtAdView;->adRequestUrl:Ljava/lang/String;

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 538
	:cond_3
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->getUrlFromNetwork()V

	goto :goto_0

	.line 542
	:cond_4
	const-string v2, "JtAd"

	const-string v3, "JtAdView: Requires INTERNET permission"

	invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 543
	const/4 v2, -0x1

	invoke-virtual {p0, v2}, Lcom/jumptap/adtag/JtAdView;->onAdError(I)V

	goto :goto_0
.end method

.method private logChromeActivity(Ljava/lang/String;)V
	.locals 1
	.param p1, "activity"	# Ljava/lang/String;

	.prologue
	.line 640
	const-string v0, "JtAd"

	invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 641
	return-void
.end method

.method private refreshAd(I)V
	.locals 2
	.param p1, "refreshPeriod"	# I

	.prologue
	.line 199
	if-nez p1, :cond_0

	.line 200
	const/4 v0, 0x1

	iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdView;->refreshIsImmediate:Z

	.line 205
	:goto_0
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->removeRefreshCallbacks()V

	.line 207
	iget-boolean v0, p0, Lcom/jumptap/adtag/JtAdView;->refreshIsImmediate:Z

	if-eqz v0, :cond_1

	.line 208
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->getMainHandler()Landroid/os/Handler;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->loadUrlRunnable:Ljava/lang/Runnable;

	invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

	.line 212
	:goto_1
	return-void

	.line 202
	:cond_0
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdView;->refreshIsImmediate:Z

	goto :goto_0

	.line 210
	:cond_1
	invoke-direct {p0, p1}, Lcom/jumptap/adtag/JtAdView;->restoreRefreshCallback(I)V

	goto :goto_1
.end method

.method private removeRefreshCallbacks()V
	.locals 2

	.prologue
	.line 188
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->getMainHandler()Landroid/os/Handler;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->loadUrlRunnable:Ljava/lang/Runnable;

	invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

	.line 189
	return-void
.end method

.method private restoreRefreshCallback(I)V
	.locals 4
	.param p1, "refreshPeriod"	# I

	.prologue
	.line 192
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->getMainHandler()Landroid/os/Handler;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->loadUrlRunnable:Ljava/lang/Runnable;

	mul-int/lit16 v2, p1, 0x3e8

	int-to-long v2, v2

	invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

	.line 193
	return-void
.end method

.method private setBgAndImg()V
	.locals 4

	.prologue
	.line 656
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getBackgroundColor()I

	move-result v0

	.line 657
	.local v0, "backgroundColor":I
	const/4 v2, -0x1

	if-eq v0, v2, :cond_0

	.line 658
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->imgView:Landroid/widget/ImageView;

	invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

	.line 662
	:cond_0
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getAlternateImage()Landroid/graphics/Bitmap;

	move-result-object v1

	.line 663
	.local v1, "bm":Landroid/graphics/Bitmap;
	if-eqz v1, :cond_1

	.line 664
	const-string v2, "JtAd"

	const-string v3, "Loading user\'s alternate image"

	invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 665
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->imgView:Landroid/widget/ImageView;

	invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

	.line 667
	:cond_1
	return-void
.end method


# virtual methods
.method public getAdRequestId()Ljava/lang/String;
	.locals 1

	.prologue
	.line 330
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adRequestId:Ljava/lang/String;

	return-object v0
.end method

.method public getAdRequestUrl()Ljava/lang/String;
	.locals 1

	.prologue
	.line 169
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adRequestUrl:Ljava/lang/String;

	return-object v0
.end method

.method protected getDismissBtnHeight()I
	.locals 2

	.prologue
	.line 424
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->getDensity()F

	move-result v0

	.line 425
	.local v0, "density":F
	const/high16 v1, 0x41f00000	# 30.0f

	mul-float/2addr v1, v0

	float-to-int v1, v1

	return v1
.end method

.method protected getHeightSize()I
	.locals 3

	.prologue
	.line 412
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->getDensity()F

	move-result v0

	.line 413
	.local v0, "density":F
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getHeight()I

	move-result v1

	.line 414
	.local v1, "height":I
	int-to-float v2, v1

	mul-float/2addr v2, v0

	float-to-int v2, v2

	return v2
.end method

.method public getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;
	.locals 1

	.prologue
	.line 139
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	return-object v0
.end method

.method protected getWidthSize()I
	.locals 3

	.prologue
	.line 418
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->getDensity()F

	move-result v0

	.line 419
	.local v0, "density":F
	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getWidth()I

	move-result v1

	.line 420
	.local v1, "width":I
	int-to-float v2, v1

	mul-float/2addr v2, v0

	float-to-int v2, v2

	return v2
.end method

.method public handleClicks(Ljava/lang/String;)V
	.locals 2
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 785
	new-instance v0, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;

	invoke-direct {v0, p0, p1, p0}, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;-><init>(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;Lcom/jumptap/adtag/JtAdView;)V

	.line 786
	.local v0, "performActionRunnable":Ljava/lang/Runnable;
	new-instance v1, Ljava/lang/Thread;

	invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

	.line 787
	.local v1, "th":Ljava/lang/Thread;
	invoke-virtual {v1}, Ljava/lang/Thread;->start()V

	.line 788
	return-void
.end method

.method public hide()V
	.locals 2

	.prologue
	.line 304
	new-instance v0, Lcom/jumptap/adtag/JtAdView$3;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/JtAdView$3;-><init>(Lcom/jumptap/adtag/JtAdView;)V

	invoke-virtual {p0, v0}, Lcom/jumptap/adtag/JtAdView;->post(Ljava/lang/Runnable;)Z

	.line 310
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 311
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-interface {v0, p0, v1}, Lcom/jumptap/adtag/JtAdViewListener;->onHide(Lcom/jumptap/adtag/JtAdView;I)V

	.line 313
	:cond_0
	return-void
.end method

.method public notifyAdClicked()V
	.locals 2

	.prologue
	.line 763
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 764
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-interface {v0, p0, v1}, Lcom/jumptap/adtag/JtAdViewListener;->onBannerClicked(Lcom/jumptap/adtag/JtAdView;I)V

	.line 766
	:cond_0
	return-void
.end method

.method public notifyContract()V
	.locals 3

	.prologue
	.line 752
	const/4 v1, 0x0

	iput-boolean v1, p0, Lcom/jumptap/adtag/JtAdView;->isExpanded:Z

	.line 753
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v1, :cond_0

	.line 754
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v2

	invoke-interface {v1, p0, v2}, Lcom/jumptap/adtag/JtAdViewListener;->onContract(Lcom/jumptap/adtag/JtAdView;I)V

	.line 756
	:cond_0
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getRefreshPeriod()I

	move-result v0

	.line 757
	.local v0, "refreshPeriod":I
	if-lez v0, :cond_1

	.line 758
	invoke-direct {p0, v0}, Lcom/jumptap/adtag/JtAdView;->refreshAd(I)V

	.line 760
	:cond_1
	return-void
.end method

.method public notifyExpand()V
	.locals 2

	.prologue
	.line 744
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->loadUrlRunnable:Ljava/lang/Runnable;

	invoke-virtual {p0, v0}, Lcom/jumptap/adtag/JtAdView;->removeCallbacks(Ljava/lang/Runnable;)Z

	.line 745
	const/4 v0, 0x1

	iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdView;->isExpanded:Z

	.line 746
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 747
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-interface {v0, p0, v1}, Lcom/jumptap/adtag/JtAdViewListener;->onExpand(Lcom/jumptap/adtag/JtAdView;I)V

	.line 749
	:cond_0
	return-void
.end method

.method public notifyLaunchActivity()V
	.locals 2

	.prologue
	.line 769
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 770
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-interface {v0, p0, v1}, Lcom/jumptap/adtag/JtAdViewListener;->onLaunchActivity(Lcom/jumptap/adtag/JtAdView;I)V

	.line 772
	:cond_0
	return-void
.end method

.method public notifyReturnFromActivity()V
	.locals 2

	.prologue
	.line 775
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 776
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-interface {v0, p0, v1}, Lcom/jumptap/adtag/JtAdViewListener;->onReturnFromActivity(Lcom/jumptap/adtag/JtAdView;I)V

	.line 778
	:cond_0
	return-void
.end method

.method public onAdError(I)V
	.locals 3
	.param p1, "errorCode"	# I

	.prologue
	const/4 v2, 0x0

	.line 695
	const/4 v0, 0x1

	invoke-virtual {p0, v2, v2, v0}, Lcom/jumptap/adtag/JtAdView;->resize(IIZ)V

	.line 696
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 697
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-interface {v0, p0, v1, p1}, Lcom/jumptap/adtag/JtAdViewListener;->onAdError(Lcom/jumptap/adtag/JtAdView;II)V

	.line 699
	:cond_0
	invoke-virtual {p0, v2}, Lcom/jumptap/adtag/JtAdView;->startTimers(Z)V

	.line 700
	return-void
.end method

.method public onBeginAdInteraction()V
	.locals 2

	.prologue
	.line 730
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 731
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-interface {v0, p0, v1}, Lcom/jumptap/adtag/JtAdViewListener;->onBeginAdInteraction(Lcom/jumptap/adtag/JtAdView;I)V

	.line 733
	:cond_0
	return-void
.end method

.method public onEndAdInteraction()V
	.locals 2

	.prologue
	.line 737
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 738
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-interface {v0, p0, v1}, Lcom/jumptap/adtag/JtAdViewListener;->onEndAdInteraction(Lcom/jumptap/adtag/JtAdView;I)V

	.line 740
	:cond_0
	return-void
.end method

.method public onInterstitialDismissed()V
	.locals 2

	.prologue
	.line 716
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 717
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-interface {v0, p0, v1}, Lcom/jumptap/adtag/JtAdViewListener;->onInterstitialDismissed(Lcom/jumptap/adtag/JtAdView;I)V

	.line 719
	:cond_0
	return-void
.end method

.method public onNewAd()V
	.locals 3

	.prologue
	.line 723
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 724
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView;->responseContent:Ljava/lang/String;

	invoke-interface {v0, p0, v1, v2}, Lcom/jumptap/adtag/JtAdViewListener;->onNewAd(Lcom/jumptap/adtag/JtAdView;ILjava/lang/String;)V

	.line 726
	:cond_0
	return-void
.end method

.method public onNoAdFound()V
	.locals 2

	.prologue
	const/4 v1, 0x0

	.line 708
	const/4 v0, 0x1

	invoke-virtual {p0, v1, v1, v0}, Lcom/jumptap/adtag/JtAdView;->resize(IIZ)V

	.line 709
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v0, :cond_0

	.line 710
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getId()I

	move-result v1

	invoke-interface {v0, p0, v1}, Lcom/jumptap/adtag/JtAdViewListener;->onNoAdFound(Lcom/jumptap/adtag/JtAdView;I)V

	.line 712
	:cond_0
	return-void
.end method

.method protected onWindowVisibilityChanged(I)V
	.locals 4
	.param p1, "visibility"	# I

	.prologue
	const/4 v3, 0x0

	.line 437
	const-string v0, "JtAd"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "visibility="

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 438
	invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

	.line 442
	sparse-switch p1, :sswitch_data_0

	.line 510
	iput-boolean v3, p0, Lcom/jumptap/adtag/JtAdView;->isWindowVisible:Z

	.line 514
	:cond_0
	:goto_0
	return-void

	.line 448
	:sswitch_0
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget v1, p0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	aget-object v0, v0, v1

	invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

	move-result v0

	if-nez v0, :cond_1

	.line 449
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget v1, p0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	aget-object v0, v0, v1

	invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

	.line 452
	:cond_1
	iget-boolean v0, p0, Lcom/jumptap/adtag/JtAdView;->launchedActivity:Z

	if-eqz v0, :cond_2

	.line 453
	invoke-virtual {p0, v3}, Lcom/jumptap/adtag/JtAdView;->setLaunchedActivity(Z)V

	.line 454
	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->notifyReturnFromActivity()V

	.line 457
	:cond_2
	iget-boolean v0, p0, Lcom/jumptap/adtag/JtAdView;->isWindowVisible:Z

	if-nez v0, :cond_0

	.line 458
	const/4 v0, 0x1

	iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdView;->isWindowVisible:Z

	.line 459
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->imgView:Landroid/widget/ImageView;

	if-eqz v0, :cond_3

	.line 460
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->setBgAndImg()V

	.line 461
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->imgView:Landroid/widget/ImageView;

	invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

	.line 488
	:cond_3
	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v0

	invoke-virtual {v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getRefreshPeriod()I

	move-result v0

	if-lez v0, :cond_0

	.line 489
	const-string v0, "JtAd"

	const-string v1, "Time to refresh ad because of window visibility"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 490
	iget-boolean v0, p0, Lcom/jumptap/adtag/JtAdView;->isExpanded:Z

	if-eqz v0, :cond_4

	.line 491
	const-string v0, "JtAd"

	const-string v1, "But not now because the ad is expanded"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	goto :goto_0

	.line 493
	:cond_4
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->loadUrlIfVisible()V

	goto :goto_0

	.line 502
	:sswitch_1
	iput-boolean v3, p0, Lcom/jumptap/adtag/JtAdView;->isWindowVisible:Z

	.line 503
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->eventManager:Lcom/jumptap/adtag/events/EventManager;

	if-eqz v0, :cond_0

	goto :goto_0

	.line 442
	:sswitch_data_0
	.sparse-switch
		0x0 -> :sswitch_0
		0x4 -> :sswitch_1
		0x8 -> :sswitch_1
	.end sparse-switch
.end method

.method public refreshAd()V
	.locals 1

	.prologue
	.line 162
	const/4 v0, 0x0

	invoke-direct {p0, v0}, Lcom/jumptap/adtag/JtAdView;->refreshAd(I)V

	.line 163
	return-void
.end method

.method public resize(IIZ)V
	.locals 1
	.param p1, "width"	# I
	.param p2, "height"	# I
	.param p3, "shouldExpand"	# Z

	.prologue
	.line 252
	invoke-virtual {p0}, Lcom/jumptap/adtag/JtAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

	move-result-object v0

	if-eqz v0, :cond_0

	.line 256
	new-instance v0, Lcom/jumptap/adtag/JtAdView$2;

	invoke-direct {v0, p0, p3, p1, p2}, Lcom/jumptap/adtag/JtAdView$2;-><init>(Lcom/jumptap/adtag/JtAdView;ZII)V

	invoke-virtual {p0, v0}, Lcom/jumptap/adtag/JtAdView;->post(Ljava/lang/Runnable;)Z

	.line 299
	:cond_0
	return-void
.end method

.method public resizeWithCallback(ZIILjava/lang/String;ILjava/lang/String;)V
	.locals 3
	.param p1, "shouldExpand"	# Z
	.param p2, "width"	# I
	.param p3, "height"	# I
	.param p4, "callback"	# Ljava/lang/String;
	.param p5, "transition"	# I
	.param p6, "options"	# Ljava/lang/String;

	.prologue
	.line 317
	const-string v0, "JtAd"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "JtAdView::resizeWithCallback ("

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, ")"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 318
	invoke-virtual {p0, p2, p3, p1}, Lcom/jumptap/adtag/JtAdView;->resize(IIZ)V

	.line 320
	new-instance v0, Lcom/jumptap/adtag/JtAdView$4;

	invoke-direct {v0, p0, p4}, Lcom/jumptap/adtag/JtAdView$4;-><init>(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;)V

	invoke-virtual {p0, v0}, Lcom/jumptap/adtag/JtAdView;->post(Ljava/lang/Runnable;)Z

	.line 327
	return-void
.end method

.method public setAdViewListener(Lcom/jumptap/adtag/JtAdViewListener;)V
	.locals 0
	.param p1, "adViewListener"	# Lcom/jumptap/adtag/JtAdViewListener;

	.prologue
	.line 155
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	.line 156
	return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;)V
	.locals 2
	.param p1, "adContent"	# Ljava/lang/String;
	.param p2, "adRequestId"	# Ljava/lang/String;

	.prologue
	.line 230
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdView;->responseContent:Ljava/lang/String;

	.line 231
	iput-object p2, p0, Lcom/jumptap/adtag/JtAdView;->adRequestId:Ljava/lang/String;

	.line 234
	if-nez p1, :cond_0

	.line 235
	const/4 v0, -0x1

	invoke-virtual {p0, v0}, Lcom/jumptap/adtag/JtAdView;->onAdError(I)V

	.line 247
	:goto_0
	return-void

	.line 239
	:cond_0
	invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView;->getMainHandler()Landroid/os/Handler;

	move-result-object v0

	new-instance v1, Lcom/jumptap/adtag/JtAdView$1;

	invoke-direct {v1, p0, p1}, Lcom/jumptap/adtag/JtAdView$1;-><init>(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;)V

	invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

	.line 245
	const-string v0, "JtAd"

	const-string v1, "called load data"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	goto :goto_0
.end method

.method public setLaunchedActivity(Z)V
	.locals 0
	.param p1, "launchedActivity"	# Z

	.prologue
	.line 791
	iput-boolean p1, p0, Lcom/jumptap/adtag/JtAdView;->launchedActivity:Z

	.line 792
	return-void
.end method

.method public setVisibility(I)V
	.locals 2
	.param p1, "visibility"	# I

	.prologue
	.line 219
	invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

	.line 223
	if-nez p1, :cond_0

	.line 224
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget v1, p0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	aget-object v0, v0, v1

	const-string v1, "javascript:if(typeof ORMMAReady == \'function\') { if (!ormma.ready) { ormma.ready = true; ORMMAReady(); } else {console.log(\"not ready\");} } else {console.log(\"no ormmaready\");}"

	invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

	.line 226
	:cond_0
	return-void
.end method

.method public setWidgetSettings(Lcom/jumptap/adtag/JtAdWidgetSettings;)V
	.locals 0
	.param p1, "widgetSettings"	# Lcom/jumptap/adtag/JtAdWidgetSettings;

	.prologue
	.line 147
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	.line 148
	return-void
.end method

.method protected startTimers(Z)V
	.locals 2
	.param p1, "shouldRefreshAd"	# Z

	.prologue
	.line 174
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getRefreshPeriod()I

	move-result v0

	.line 175
	.local v0, "refreshPeriod":I
	if-lez v0, :cond_0

	if-eqz p1, :cond_0

	.line 176
	invoke-direct {p0, v0}, Lcom/jumptap/adtag/JtAdView;->refreshAd(I)V

	.line 178
	:cond_0
	return-void
.end method
