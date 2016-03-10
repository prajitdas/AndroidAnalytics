.class Lcom/millennialmedia/android/BridgeMMNotification;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private index:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/BridgeMMNotification;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/BridgeMMNotification;

    .prologue
    .line 14
    iget v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    return v0
.end method


# virtual methods
.method public declared-synchronized alert(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/millennialmedia/android/BridgeMMNotification$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMNotification$1;-><init>(Lcom/millennialmedia/android/BridgeMMNotification;Ljava/util/HashMap;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMNotification;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 27
    monitor-enter p0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 28
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    .line 29
    :cond_0
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    .line 31
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    .line 33
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public vibrate(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMNotification;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 95
    .local v0, "context":Landroid/content/Context;
    const-wide/16 v1, 0x0

    .line 97
    .local v1, "time":J
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v1, v4

    .line 100
    :cond_0
    if-eqz v0, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_2

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.VIBRATE"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 104
    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 105
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vibrating for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 113
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :goto_0
    return-object v4

    .line 110
    :cond_1
    const-string v4, "The required permissions to vibrate are not set."

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 113
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
