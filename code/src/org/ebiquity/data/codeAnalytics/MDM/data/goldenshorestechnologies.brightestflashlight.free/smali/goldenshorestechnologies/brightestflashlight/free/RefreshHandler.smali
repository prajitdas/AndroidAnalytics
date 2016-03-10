.class public Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;
.super Landroid/os/Handler;
.source "RefreshHandler.java"


# static fields
.field private static final MSG_REFRESH_BANNER:I = 0x4

.field private static final TIME_TO_REFRESH_IN_MILLIS:J = 0x7530L


# instance fields
.field private mmAdViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;->mmAdViewRef:Ljava/lang/ref/WeakReference;

    .line 21
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 26
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;->mmAdViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;->mmAdViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 32
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 35
    const/4 v1, 0x4

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;->removeMessages(I)V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;->sendEmptyMessage(I)Z

    .line 50
    return-void
.end method
