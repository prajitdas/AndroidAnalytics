.class Lcom/millennialmedia/android/MMWebView;
.super Landroid/webkit/WebView;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;
    }
.end annotation


# static fields
.field static final JS_INTERFACE_NAME:Ljava/lang/String; = "interface"

.field static final PROPERTY_BANNER_TYPE:Ljava/lang/String; = "PROPERTY_BANNER_TYPE"

.field static final PROPERTY_EXPANDING:Ljava/lang/String; = "PROPERTY_EXPANDING"

.field static final PROPERTY_STATE:Ljava/lang/String; = "PROPERTY_STATE"


# instance fields
.field creatorAdImplId:J

.field currentUrl:Ljava/lang/String;

.field volatile isExpanding:Z

.field volatile isUserClosedResize:Z

.field private mWebChromeClient:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

.field volatile mraidState:Ljava/lang/String;

.field oldHeight:I

.field oldWidth:I

.field volatile requiresPreAdSizeFix:Z

.field final tapDetector:Landroid/view/GestureDetector;

.field final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "internalId"    # J

    .prologue
    const/16 v3, -0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 379
    new-instance v1, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMWebView$1;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mWebChromeClient:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    .line 495
    iput v3, p0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    .line 496
    iput v3, p0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting isExpanding in constructor to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/MMWebView;->setWillNotDraw(Z)V

    .line 58
    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/MMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 59
    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/MMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 60
    new-instance v1, Lcom/millennialmedia/android/MMWebView$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMWebView$1;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    const-string v1, "loading"

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 70
    iput-wide p2, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    .line 71
    const-string v1, "Assigning WebView internal id: %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const-wide/16 v1, 0x3ad7

    iget-wide v3, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->setId(I)V

    .line 75
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-boolean v1, v1, Lcom/millennialmedia/android/HandShake;->hardwareAccelerationEnabled:Z

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->enableHardwareAcceleration()V

    .line 81
    :goto_0
    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/MMWebView;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 82
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mWebChromeClient:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 83
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 84
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->userAgent:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 86
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 87
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 89
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 90
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 92
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/millennialmedia/android/MMWebView$2;

    invoke-direct {v2, p0, p1}, Lcom/millennialmedia/android/MMWebView$2;-><init>(Lcom/millennialmedia/android/MMWebView;Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->tapDetector:Landroid/view/GestureDetector;

    .line 101
    return-void

    .line 80
    .end local v0    # "webSettings":Landroid/webkit/WebSettings;
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->disableAllAcceleration()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMWebView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->canScroll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/MMWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMWebView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->hasDefaultResizeParams()Z

    move-result v0

    return v0
.end method

.method private canScroll()Z
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    return v0
.end method

.method private hasDefaultResizeParams()Z
    .locals 2

    .prologue
    const/16 v1, -0x32

    .line 443
    iget v0, p0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method animateTransition(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 3
    .param p1, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 318
    new-instance v1, Lcom/millennialmedia/android/MMWebView$5;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/MMWebView$5;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;)V

    .line 345
    .local v1, "r":Ljava/lang/Runnable;
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :try_start_1
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 348
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 349
    monitor-exit v1

    .line 355
    :goto_0
    return-void

    .line 349
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    goto :goto_0
.end method

.method disableAllAcceleration()V
    .locals 6

    .prologue
    .line 153
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 154
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "Remove allAcceleration"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method enableHardwareAcceleration()V
    .locals 6

    .prologue
    .line 182
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 183
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "Enabled hardwareAcceleration"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method enableSoftwareAcceleration()V
    .locals 6

    .prologue
    .line 167
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 168
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "Remove allAcceleration"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method declared-synchronized getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 528
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 530
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 531
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v2, :cond_0

    .line 533
    check-cast v0, Lcom/millennialmedia/android/MMActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getAdViewOverlayView()Lcom/millennialmedia/android/AdViewOverlayView;
    .locals 2

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 551
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v1, :cond_0

    .line 553
    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    .end local v0    # "parent":Landroid/view/ViewParent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getBanner()Lcom/millennialmedia/android/MMAdView;
    .locals 2

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 563
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v1, :cond_0

    .line 565
    check-cast v0, Lcom/millennialmedia/android/MMAdView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 562
    .end local v0    # "parent":Landroid/view/ViewParent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getMMAdView()Lcom/millennialmedia/android/MMAdView;
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 514
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMMLayout()Lcom/millennialmedia/android/MMLayout;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMLayout;

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 521
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method isCurrentParent(J)Z
    .locals 6
    .param p1, "internalId"    # J

    .prologue
    const/4 v2, 0x0

    .line 852
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 853
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_0

    .line 856
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v2

    .line 855
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Id check for parent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " versus "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, v0

    check-cast v1, Lcom/millennialmedia/android/MMLayout;

    iget-object v1, v1, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v4, v1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 856
    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, v0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v3, v1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    cmp-long v1, p1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method isMraidResized()Z
    .locals 2

    .prologue
    .line 872
    const-string v0, "resized"

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isOriginalUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isParentBannerAd()Z
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 374
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/millennialmedia/android/MMAdView;

    .line 376
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    .line 270
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 542
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUrl @@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 545
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 118
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 121
    .local v0, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 123
    .local v3, "widthSize":I
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getMeasuredHeight()I

    move-result v1

    .line 124
    .local v1, "measuredHeight":I
    if-nez v1, :cond_0

    .line 125
    move v1, v0

    .line 126
    :cond_0
    move v2, v3

    .line 129
    .local v2, "measuredWidth":I
    iget-boolean v4, p0, Lcom/millennialmedia/android/MMWebView;->requiresPreAdSizeFix:Z

    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {p0, v5, v5}, Lcom/millennialmedia/android/MMWebView;->setMeasuredDimension(II)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/millennialmedia/android/MMWebView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPauseWebViewVideo()V
    .locals 4

    .prologue
    .line 575
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "onPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 576
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onResumeWebViewVideo()V
    .locals 4

    .prologue
    .line 588
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "onResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 589
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 836
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 837
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->getLocationInWindow([I)V

    .line 838
    new-instance v0, Lcom/millennialmedia/android/DTOAdViewLayout;

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getHeight()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/millennialmedia/android/DTOAdViewLayout;-><init>(IIII)V

    .line 840
    .local v0, "dtoLayout":Lcom/millennialmedia/android/DTOAdViewLayout;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:MMJS.sdk.setAdSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {v3}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 841
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 842
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->requestFocus()Z

    .line 197
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->tapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 200
    const-string v0, "Ad clicked: action=%d x=%f y=%f"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method removeFromParent()V
    .locals 2

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 866
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 868
    :cond_0
    return-void
.end method

.method setAdProperties(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "adProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 827
    if-eqz p1, :cond_0

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.setAdProperties("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 831
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->enableSoftwareAcceleration()V

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 147
    return-void
.end method

.method setMediaPlaybackRequiresUserGesture(Z)V
    .locals 6
    .param p1, "requiresGesture"    # Z

    .prologue
    .line 107
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setMediaPlaybackRequiresUserGesture"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 108
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method setMraidDefault()V
    .locals 1

    .prologue
    .line 789
    const-string v0, "javascript:MMJS.sdk.setState(\'default\')"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 790
    const-string v0, "default"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 791
    return-void
.end method

.method setMraidExpanded()V
    .locals 3

    .prologue
    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing state to EXPANDED for ---- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---- of creatorId ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 814
    const-string v0, "javascript:MMJS.sdk.setState(\'expanded\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 815
    const-string v0, "expanded"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 816
    return-void
.end method

.method setMraidHidden()V
    .locals 1

    .prologue
    .line 795
    const-string v0, "javascript:MMJS.sdk.setState(\'hidden\')"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 796
    const-string v0, "hidden"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 797
    return-void
.end method

.method setMraidPlacementTypeInline()V
    .locals 1

    .prologue
    .line 784
    const-string v0, "javascript:MMJS.sdk.setPlacementType(\'inline\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method setMraidPlacementTypeInterstitial()V
    .locals 1

    .prologue
    .line 779
    const-string v0, "javascript:MMJS.sdk.setPlacementType(\'interstitial\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method setMraidReady()V
    .locals 1

    .prologue
    .line 822
    const-string v0, "javascript:MMJS.sdk.ready();"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method declared-synchronized setMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 3
    .param p1, "resizeParams"    # Lcom/millennialmedia/android/DTOResizeParameters;

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getMMAdView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    .line 389
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->isUserClosedResize:Z

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New DTOResizeParameters = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 392
    if-eqz v0, :cond_0

    .line 394
    new-instance v1, Lcom/millennialmedia/android/MMWebView$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/android/MMWebView$6;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    .end local v0    # "adView":Lcom/millennialmedia/android/MMAdView;
    :cond_0
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setMraidViewableHidden()V
    .locals 1

    .prologue
    .line 802
    const-string v0, "javascript:MMJS.sdk.setViewable(false)"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method setMraidViewableVisible()V
    .locals 1

    .prologue
    .line 808
    const-string v0, "javascript:MMJS.sdk.setViewable(true)"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "webContent"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 275
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "finalBaseUrl":Ljava/lang/String;
    sget v3, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 282
    const-string v3, "Received ad with base url %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 286
    :cond_2
    move-object v0, p1

    .line 288
    .local v0, "content":Ljava/lang/String;
    invoke-static {p3}, Lcom/millennialmedia/android/MRaid;->hasMraidLocally(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    invoke-static {p3, v0}, Lcom/millennialmedia/android/MRaid;->injectMraidJs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_1
    move-object v2, v0

    .line 298
    .local v2, "finalContent":Ljava/lang/String;
    new-instance v3, Lcom/millennialmedia/android/MMWebView$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/millennialmedia/android/MMWebView$4;-><init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 294
    .end local v2    # "finalContent":Ljava/lang/String;
    :cond_3
    const-string v3, "MMJS is not downloaded"

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 6
    .param p1, "webContent"    # Ljava/lang/String;
    .param p2, "adUrl"    # Ljava/lang/String;
    .param p3, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    const/4 v5, 0x0

    .line 207
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0, p3}, Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 211
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "baseUrl":Ljava/lang/String;
    sget v3, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 215
    const-string v3, "Received ad with base url %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 219
    :cond_2
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->isTransitionAnimated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    invoke-virtual {p0, p3}, Lcom/millennialmedia/android/MMWebView;->animateTransition(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 224
    :cond_3
    iget-boolean v3, p3, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    if-eqz v3, :cond_4

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "content":Ljava/lang/String;
    :goto_1
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MRaid;->hasMraidLocally(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 235
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/millennialmedia/android/MRaid;->injectMraidJs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_2
    move-object v2, v1

    .line 243
    .local v2, "finalContent":Ljava/lang/String;
    new-instance v3, Lcom/millennialmedia/android/MMWebView$3;

    invoke-direct {v3, p0, p3, v0, v2}, Lcom/millennialmedia/android/MMWebView$3;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 230
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "finalContent":Ljava/lang/String;
    :cond_4
    move-object v1, p1

    .restart local v1    # "content":Ljava/lang/String;
    goto :goto_1

    .line 239
    :cond_5
    const-string v3, "MMJS is not downloaded"

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMWebView originally from("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") MRaidState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .param p1, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->isMraidResized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v1

    .line 455
    .local v1, "ad":Lcom/millennialmedia/android/MMAd;
    instance-of v3, v1, Lcom/millennialmedia/android/MMAdView;

    if-eqz v3, :cond_0

    .line 457
    move-object v0, v1

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    move-object v2, v0

    .line 458
    .local v2, "adView":Lcom/millennialmedia/android/MMAdView;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/millennialmedia/android/MMWebView;->isUserClosedResize:Z

    .line 459
    new-instance v3, Lcom/millennialmedia/android/MMWebView$7;

    invoke-direct {v3, p0, v2}, Lcom/millennialmedia/android/MMWebView$7;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    .end local v1    # "ad":Lcom/millennialmedia/android/MMAd;
    .end local v2    # "adView":Lcom/millennialmedia/android/MMAdView;
    :cond_0
    monitor-exit p0

    return-void

    .line 450
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method updateArgumentsWithSettings(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "PROPERTY_BANNER_TYPE"

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->isParentBannerAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v0, "PROPERTY_STATE"

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v0, "PROPERTY_EXPANDING"

    iget-wide v1, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-void

    .line 364
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
