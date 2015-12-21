.class Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "JtAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jumptap/adtag/JtAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JtAdWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdView;


# direct methods
.method private constructor <init>(Lcom/jumptap/adtag/JtAdView;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jumptap/adtag/JtAdView;Lcom/jumptap/adtag/JtAdView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jumptap/adtag/JtAdView;
    .param p2, "x1"    # Lcom/jumptap/adtag/JtAdView$1;

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;-><init>(Lcom/jumptap/adtag/JtAdView;)V

    return-void
.end method

.method private switchActiveAndInactiveIndex()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget v1, v1, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

    .line 922
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget v1, v1, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

    .line 923
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 859
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 860
    const-string v0, "JtAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdView;->getWidthSize()I

    move-result v1

    iget-object v2, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    invoke-virtual {v2}, Lcom/jumptap/adtag/JtAdView;->getHeightSize()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/jumptap/adtag/JtAdView;->resize(IIZ)V

    .line 868
    const-string v0, "javascript:EmptyBodyChecker.checkBody(document.getElementsByTagName(\"body\")[0].innerHTML)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    # getter for: Lcom/jumptap/adtag/JtAdView;->isOnReceivedErrorCalled:Z
    invoke-static {v0}, Lcom/jumptap/adtag/JtAdView;->access$500(Lcom/jumptap/adtag/JtAdView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    # getter for: Lcom/jumptap/adtag/JtAdView;->imgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jumptap/adtag/JtAdView;->access$600(Lcom/jumptap/adtag/JtAdView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    invoke-direct {p0}, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->switchActiveAndInactiveIndex()V

    .line 876
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget-object v0, v0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget v1, v1, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget-object v0, v0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget v1, v1, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    # setter for: Lcom/jumptap/adtag/JtAdView;->isOnReceivedErrorCalled:Z
    invoke-static {v0, v3}, Lcom/jumptap/adtag/JtAdView;->access$502(Lcom/jumptap/adtag/JtAdView;Z)Z

    .line 882
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jumptap/adtag/JtAdView;->startTimers(Z)V

    .line 887
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    invoke-virtual {v0}, Lcom/jumptap/adtag/JtAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 888
    const-string v0, "javascript:if(typeof ORMMAReady == \'function\') { if (!ormma.ready) { ormma.ready = true; ORMMAReady(); } else {console.log(\"not ready\");} } else {console.log(\"no ormmaready\");}"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 891
    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 897
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v0, "JtAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    const/4 v1, 0x1

    # setter for: Lcom/jumptap/adtag/JtAdView;->isOnReceivedErrorCalled:Z
    invoke-static {v0, v1}, Lcom/jumptap/adtag/JtAdView;->access$502(Lcom/jumptap/adtag/JtAdView;Z)Z

    .line 901
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    invoke-virtual {v0, p2}, Lcom/jumptap/adtag/JtAdView;->onAdError(I)V

    .line 903
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "shouldOverrideUrlLoading":Z
    iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget-object v1, v1, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget v2, v2, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdWebViewClient;->this$0:Lcom/jumptap/adtag/JtAdView;

    invoke-virtual {v1, p2}, Lcom/jumptap/adtag/JtAdView;->handleClicks(Ljava/lang/String;)V

    .line 911
    const/4 v0, 0x1

    .line 916
    :goto_0
    const-string v1, "JtAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return v0

    .line 914
    :cond_0
    const-string v1, "JtAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading cannot override url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
