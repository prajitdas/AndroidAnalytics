.class Lcom/millennialmedia/android/BridgeMMInlineVideo;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMInlineVideo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public adjustVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 86
    .local p1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;Ljava/util/HashMap;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public insertVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 17
    .local p1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMInlineVideo$1;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;Ljava/util/HashMap;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public pauseVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 134
    .local p1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$6;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public playVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 62
    .local p1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$3;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public removeVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 37
    .local p1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$2;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public resumeVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 157
    .local p1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$7;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public setStreamVideoSource(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 180
    .local p1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$8;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMInlineVideo$8;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;Ljava/util/HashMap;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public stopVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 111
    .local p1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$5;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
