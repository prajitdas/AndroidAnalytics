.class public Lcom/jumptap/adtag/actions/BrowserAdAction;
.super Lcom/jumptap/adtag/actions/AdAction;
.source "BrowserAdAction.java"


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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/jumptap/adtag/JtAdView;

    .prologue
    .line 16
    const-string v2, "JtAd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performing BrowserAdAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jumptap/adtag/actions/BrowserAdAction;->redirectedUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/jumptap/adtag/actions/BrowserAdAction;->redirectedUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 19
    .local v1, "myIntent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 20
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2, v2}, Lcom/jumptap/adtag/JtAdView;->setLaunchedActivity(Z)V

    .line 21
    invoke-virtual {p2}, Lcom/jumptap/adtag/JtAdView;->notifyLaunchActivity()V

    .line 23
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "JtAd"

    const-string v3, "cannot initiate Browser"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
