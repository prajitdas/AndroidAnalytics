.class public final Lcom/millennialmedia/android/MMInterstitial;
.super Ljava/lang/Object;
.source "MMInterstitial.java"

# interfaces
.implements Lcom/millennialmedia/android/MMAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;
    }
.end annotation


# instance fields
.field adImpl:Lcom/millennialmedia/android/MMAdImpl;

.field externalId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;-><init>(Lcom/millennialmedia/android/MMInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    .line 13
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v1, "i"

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private fetchInternal()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "Ad already fetched and ready for display..."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    new-instance v1, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v0, "Fetching new ad..."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->requestAd()V

    goto :goto_0
.end method


# virtual methods
.method public display()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMInterstitial;->display(Z)Z

    move-result v0

    return v0
.end method

.method public display(Z)Z
    .locals 4
    .param p1, "throwError"    # Z

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return v2

    .line 109
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMInterstitial;->displayInternal()I

    move-result v1

    .local v1, "error":I
    if-eqz v1, :cond_2

    .line 111
    if-eqz p1, :cond_2

    .line 112
    new-instance v3, Lcom/millennialmedia/android/MMException;

    invoke-direct {v3, v1}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1    # "error":I
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 118
    new-instance v2, Lcom/millennialmedia/android/MMException;

    invoke-direct {v2, v0}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "error":I
    :cond_2
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method displayInternal()I
    .locals 5

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 129
    iget-object v1, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdImplController;->display(Lcom/millennialmedia/android/MMAdImpl;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "There was an exception displaying a cached ad. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public fetch()V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    iget-object v1, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->fetch(Lcom/millennialmedia/android/MMRequest;Lcom/millennialmedia/android/RequestListener;)V

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMInterstitial;->fetchInternal()V

    goto :goto_0
.end method

.method public fetch(Lcom/millennialmedia/android/MMRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/millennialmedia/android/MMRequest;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch(Lcom/millennialmedia/android/MMRequest;Lcom/millennialmedia/android/RequestListener;)V

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMInterstitial;->fetchInternal()V

    goto :goto_0
.end method

.method public fetch(Lcom/millennialmedia/android/MMRequest;Lcom/millennialmedia/android/RequestListener;)V
    .locals 1
    .param p1, "request"    # Lcom/millennialmedia/android/MMRequest;
    .param p2, "listener"    # Lcom/millennialmedia/android/RequestListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    .line 43
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p2, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMInterstitial;->fetchInternal()V

    .line 46
    return-void
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getListener()Lcom/millennialmedia/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getMMRequest()Lcom/millennialmedia/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 82
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 74
    iget-object v3, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v4, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/MMAdImplController;->isAdAvailable(Lcom/millennialmedia/android/MMAdImpl;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "There was an exception checking for a cached ad. %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 1
    .param p1, "apid"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setApid(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 1
    .param p1, "ignoresDensityScaling"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setIgnoresDensityScaling(Z)V

    .line 183
    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/millennialmedia/android/RequestListener;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 171
    return-void
.end method

.method public setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/millennialmedia/android/MMRequest;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 195
    return-void
.end method
