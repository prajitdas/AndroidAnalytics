.class public Lcom/jumptap/adtag/events/SendConversionUrlTask;
.super Ljava/util/TimerTask;
.source "SendConversionUrlTask.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jumptap/adtag/events/SendConversionUrlTask;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private static sendReportToTL(Landroid/content/Context;Lcom/jumptap/adtag/events/JtEvent;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/jumptap/adtag/events/JtEvent;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/jumptap/adtag/events/JtEvent;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jumptap/adtag/events/JtEvent;->getEventType()Lcom/jumptap/adtag/events/EventType;

    move-result-object v3

    .line 52
    .local v3, "eventType":Lcom/jumptap/adtag/events/EventType;
    invoke-virtual {p1}, Lcom/jumptap/adtag/events/JtEvent;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "date":Ljava/lang/String;
    const/4 v5, 0x0

    .line 56
    .local v5, "isSucc":Z
    const-string v11, "JtAd-Tracking"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sending url to Jumptap servers:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 58
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, "get":Lorg/apache/http/client/methods/HttpGet;
    const-string v11, "http.agent"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, "userAgent":Ljava/lang/String;
    const-string v11, "User-Agent"

    invoke-virtual {v4, v11, v10}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 67
    .local v6, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 68
    .local v8, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 69
    .local v7, "statusCode":I
    const-string v11, "JtAd-Tracking"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "conversion/event tracking response status code:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/16 v11, 0xc8

    if-ne v7, v11, :cond_2

    .line 73
    sget-object v11, Lcom/jumptap/adtag/events/EventType;->download:Lcom/jumptap/adtag/events/EventType;

    invoke-virtual {v11, v3}, Lcom/jumptap/adtag/events/EventType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz p0, :cond_0

    .line 75
    const-string v11, "isFirstLaunch"

    const-string v12, "0"

    invoke-static {p0, v11, v12}, Lcom/jumptap/adtag/utils/JtAdManager;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v11, "installDate"

    invoke-static {p0, v11}, Lcom/jumptap/adtag/utils/JtAdManager;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    :cond_0
    const/4 v5, 0x1

    .line 93
    .end local v6    # "resp":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_1
    :goto_0
    return v5

    .line 83
    .restart local v6    # "resp":Lorg/apache/http/HttpResponse;
    .restart local v7    # "statusCode":I
    .restart local v8    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_2
    sget-object v11, Lcom/jumptap/adtag/events/EventType;->download:Lcom/jumptap/adtag/events/EventType;

    invoke-virtual {v11, v3}, Lcom/jumptap/adtag/events/EventType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz p0, :cond_1

    .line 85
    const-string v11, "isFirstLaunch"

    invoke-static {p0, v11, v1}, Lcom/jumptap/adtag/utils/JtAdManager;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v6    # "resp":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "JtAd-Tracking"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "JTAppReport.sendReportToTL:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 33
    const-string v5, "JtAd-Tracking"

    const-string v6, "SendConversionUrlTask woke up"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v5, p0, Lcom/jumptap/adtag/events/SendConversionUrlTask;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/jumptap/adtag/db/DBManager;->getInstance(Landroid/content/Context;)Lcom/jumptap/adtag/db/DBManager;

    move-result-object v0

    .line 35
    .local v0, "dbManager":Lcom/jumptap/adtag/db/DBManager;
    invoke-virtual {v0}, Lcom/jumptap/adtag/db/DBManager;->selectAllEvents()Ljava/util/List;

    move-result-object v2

    .line 36
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/events/JtEvent;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jumptap/adtag/events/JtEvent;

    .line 37
    .local v1, "event":Lcom/jumptap/adtag/events/JtEvent;
    iget-object v5, p0, Lcom/jumptap/adtag/events/SendConversionUrlTask;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/jumptap/adtag/events/SendConversionUrlTask;->sendReportToTL(Landroid/content/Context;Lcom/jumptap/adtag/events/JtEvent;)Z

    move-result v4

    .line 38
    .local v4, "isSucc":Z
    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/jumptap/adtag/events/JtEvent;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/jumptap/adtag/db/DBManager;->deleteEventById(I)V

    goto :goto_0

    .line 42
    .end local v1    # "event":Lcom/jumptap/adtag/events/JtEvent;
    .end local v4    # "isSucc":Z
    :cond_1
    return-void
.end method
