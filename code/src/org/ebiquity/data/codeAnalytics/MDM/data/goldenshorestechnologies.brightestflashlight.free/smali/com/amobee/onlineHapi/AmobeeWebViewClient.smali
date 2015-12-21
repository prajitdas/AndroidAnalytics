.class Lcom/amobee/onlineHapi/AmobeeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AmobeeWebViewClient.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private didFinishLoad:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->didFinishLoad:Z

    .line 28
    iput-object p1, p0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->activity:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method private browse(Ljava/lang/String;)Z
    .locals 4
    .param p1, "destURL"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v2, 0x1

    .line 91
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDidFinishLoad()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->didFinishLoad:Z

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->didFinishLoad:Z

    .line 47
    invoke-static {}, Lcom/amobee/onlineHapi/AmobeeScheduler;->getInstance()Lcom/amobee/onlineHapi/AmobeeScheduler;

    move-result-object v1

    new-instance v2, Lcom/amobee/onlineHapi/RefreshTask;

    move-object v0, p1

    check-cast v0, Lcom/amobee/onlineHapi/AmobeeAdView;

    invoke-direct {v2, v0}, Lcom/amobee/onlineHapi/RefreshTask;-><init>(Lcom/amobee/onlineHapi/AmobeeAdView;)V

    check-cast p1, Lcom/amobee/onlineHapi/AmobeeAdView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/amobee/onlineHapi/AmobeeAdView;->getRefreshInterval()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/amobee/onlineHapi/AmobeeScheduler;->scheduleTask(Ljava/util/TimerTask;I)V

    .line 48
    sget-boolean v0, Lcom/amobee/onlineHapi/OnlineHAPI;->isFadeAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 50
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->didFinishLoad:Z

    .line 118
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->didFinishLoad:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p2}, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->browse(Ljava/lang/String;)Z

    .line 61
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
