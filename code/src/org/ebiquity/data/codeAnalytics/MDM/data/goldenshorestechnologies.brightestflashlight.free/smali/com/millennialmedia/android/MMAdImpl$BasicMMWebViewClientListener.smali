.class Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;
.super Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;
.source "MMAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BasicMMWebViewClientListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdImpl;->setClickable(Z)V

    .line 55
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->setMraidViewableVisible()V

    .line 63
    :goto_0
    monitor-exit v1

    .line 65
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->setMraidViewableHidden()V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdImpl;->setClickable(Z)V

    .line 46
    return-void
.end method
