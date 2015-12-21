.class Lcom/millennialmedia/android/MMJSObject;
.super Ljava/lang/Object;
.source "MMJSObject.java"


# instance fields
.field protected contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mmWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAdImplId(Ljava/lang/String;)J
    .locals 2
    .param p1, "creatorAdImplId"    # Ljava/lang/String;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 69
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-long v0, v0

    .line 71
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x4

    goto :goto_0
.end method

.method getBaseActivity()Lcom/millennialmedia/android/AdViewOverlayActivity;
    .locals 5

    .prologue
    .line 29
    iget-object v4, p0, Lcom/millennialmedia/android/MMJSObject;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/MMWebView;

    .line 30
    .local v3, "mmWebView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 33
    .local v0, "activity":Landroid/app/Activity;
    instance-of v4, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 35
    check-cast v2, Lcom/millennialmedia/android/MMActivity;

    .line 36
    .local v2, "mmActivity":Lcom/millennialmedia/android/MMActivity;
    invoke-virtual {v2}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v1

    .line 37
    .local v1, "baseActivity":Lcom/millennialmedia/android/MMBaseActivity;
    instance-of v4, v1, Lcom/millennialmedia/android/AdViewOverlayActivity;

    if-eqz v4, :cond_0

    .line 39
    check-cast v1, Lcom/millennialmedia/android/AdViewOverlayActivity;

    .line 43
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "baseActivity":Lcom/millennialmedia/android/MMBaseActivity;
    .end local v2    # "mmActivity":Lcom/millennialmedia/android/MMActivity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/millennialmedia/android/MMJSResponse;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/millennialmedia/android/MMJSResponse;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 49
    .local v1, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/millennialmedia/android/MMJSResponse;>;"
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1
.end method

.method setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMJSObject;->contextRef:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method

.method setMMWebView(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/millennialmedia/android/MMWebView;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMJSObject;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    .line 25
    return-void
.end method
