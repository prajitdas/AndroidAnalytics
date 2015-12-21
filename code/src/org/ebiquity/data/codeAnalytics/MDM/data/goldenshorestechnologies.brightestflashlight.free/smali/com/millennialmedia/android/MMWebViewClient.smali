.class abstract Lcom/millennialmedia/android/MMWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MMWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;
    }
.end annotation


# instance fields
.field private cachedExecutor:Ljava/util/concurrent/ExecutorService;

.field isLastMMCommandResize:Z

.field mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

.field redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 1
    .param p1, "mmWebViewClientListener"    # Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;
    .param p2, "redirListener"    # Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebViewClient;->cachedExecutor:Ljava/util/concurrent/ExecutorService;

    .line 23
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebViewClient;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    .line 24
    iput-object p2, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .line 25
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 77
    .local v0, "mmWebView":Lcom/millennialmedia/android/MMWebView;
    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/MMWebView;->isOriginalUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebViewClient;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    invoke-virtual {v1, p2}, Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished webview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-virtual {v1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->getAdProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->setAdProperties(Lorg/json/JSONObject;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebViewClient;->setMraidState(Lcom/millennialmedia/android/MMWebView;)V

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 30
    const-string v1, "onPageStarted: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebViewClient;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    invoke-virtual {v1, p2}, Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;->onPageStarted(Ljava/lang/String;)V

    move-object v0, p1

    .line 32
    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 33
    .local v0, "mmWebView":Lcom/millennialmedia/android/MMWebView;
    const-string v1, "loading"

    iput-object v1, v0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 34
    iput-boolean v3, v0, Lcom/millennialmedia/android/MMWebView;->requiresPreAdSizeFix:Z

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 36
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "Error: %s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method abstract setMraidState(Lcom/millennialmedia/android/MMWebView;)V
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    move-object v1, p1

    check-cast v1, Lcom/millennialmedia/android/MMWebView;

    .line 44
    .local v1, "mmWebView":Lcom/millennialmedia/android/MMWebView;
    invoke-virtual {v1, p2}, Lcom/millennialmedia/android/MMWebView;->isOriginalUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@@@@@@@@@SHOULDOVERRIDELOADING@@@@@@@@@@@@@ Url is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x6

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mmsdk:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running JS bridge command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/millennialmedia/android/MMCommand;

    check-cast p1, Lcom/millennialmedia/android/MMWebView;

    .end local p1    # "webView":Landroid/webkit/WebView;
    invoke-direct {v0, p1, p2}, Lcom/millennialmedia/android/MMCommand;-><init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V

    .line 51
    .local v0, "command":Lcom/millennialmedia/android/MMCommand;
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMCommand;->isResizeCommand()Z

    move-result v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/MMWebViewClient;->isLastMMCommandResize:Z

    .line 52
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebViewClient;->cachedExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 64
    .end local v0    # "command":Lcom/millennialmedia/android/MMCommand;
    :cond_0
    :goto_0
    return v2

    .line 56
    .restart local p1    # "webView":Landroid/webkit/WebView;
    :cond_1
    iget-object v4, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-virtual {v4}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isExpandingToUrl()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iput-object p2, v3, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->url:Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    .line 61
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iget-wide v4, v1, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    iput-wide v4, v3, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    .line 62
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-static {v3}, Lcom/millennialmedia/android/HttpRedirection;->startActivityFromUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    goto :goto_0
.end method
