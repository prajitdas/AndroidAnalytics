.class Lcom/millennialmedia/android/BridgeMMPasteboard;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMPasteboard.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getPasteboardContents(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
    .line 20
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMPasteboard;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 21
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 23
    new-instance v1, Lcom/millennialmedia/android/BridgeMMPasteboard$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMPasteboard$1;-><init>(Lcom/millennialmedia/android/BridgeMMPasteboard;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMPasteboard;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 50
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToPasteboard(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
    .line 59
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMPasteboard;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 60
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lcom/millennialmedia/android/BridgeMMPasteboard$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/android/BridgeMMPasteboard$2;-><init>(Lcom/millennialmedia/android/BridgeMMPasteboard;Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMPasteboard;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
