.class public abstract Lcom/jumptap/adtag/actions/AdAction;
.super Ljava/lang/Object;
.source "AdAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jumptap/adtag/actions/AdAction$UrlPredicate;
    }
.end annotation


# instance fields
.field protected redirectedUrl:Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field protected useragent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/jumptap/adtag/actions/AdAction;->url:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/jumptap/adtag/actions/AdAction;->redirectedUrl:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/jumptap/adtag/actions/AdAction;->useragent:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static getRedirectedUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "useragent"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v6, 0x0

    .line 39
    .local v6, "retVal":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 40
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    .line 41
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    const/4 v7, 0x0

    invoke-static {v4, v7}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 45
    const/16 v7, 0x2000

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 48
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, "get":Lorg/apache/http/client/methods/HttpGet;
    const-string v7, "User-Agent"

    invoke-virtual {v2, v7, p1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 52
    .local v5, "resp":Lorg/apache/http/HttpResponse;
    if-eqz v5, :cond_1

    .line 53
    const-string v7, "Location"

    invoke-interface {v5, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 54
    .local v3, "header":Lorg/apache/http/Header;
    if-eqz v3, :cond_0

    .line 55
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 68
    .end local v2    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v5    # "resp":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v6

    .line 58
    .restart local v2    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "header":Lorg/apache/http/Header;
    .restart local v5    # "resp":Lorg/apache/http/HttpResponse;
    :cond_0
    const-string v7, "JtAd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdAction: cannot find Location header in the respons of :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v2    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v5    # "resp":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "JtAd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRedirectedUrl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "resp":Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_1
    const-string v7, "JtAd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdAction: cannot execute:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getRedirectedUrlWithPredicate(Ljava/lang/String;Ljava/lang/String;Lcom/jumptap/adtag/actions/AdAction$UrlPredicate;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "useragent"    # Ljava/lang/String;
    .param p2, "p"    # Lcom/jumptap/adtag/actions/AdAction$UrlPredicate;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "count":I
    :goto_0
    if-eqz p0, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-interface {p2, p0}, Lcom/jumptap/adtag/actions/AdAction$UrlPredicate;->test(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    invoke-static {p0, p1}, Lcom/jumptap/adtag/actions/AdAction;->getRedirectedUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 79
    :cond_0
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    .line 80
    :cond_1
    return-object p0
.end method


# virtual methods
.method public abstract perform(Landroid/content/Context;Lcom/jumptap/adtag/JtAdView;)V
.end method

.method public setRedirectedUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectedUrl"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jumptap/adtag/actions/AdAction;->redirectedUrl:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jumptap/adtag/actions/AdAction;->url:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "useragent"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jumptap/adtag/actions/AdAction;->useragent:Ljava/lang/String;

    .line 93
    return-void
.end method
