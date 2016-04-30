.class public Lcom/jumptap/adtag/utils/JtAdFetcher;
.super Ljava/lang/Object;
.source "JtAdFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ADVIEW_HTML_FILE_NAME:Ljava/lang/String; = "adview.html"

.field private static final ADVIEW_JS_FILE_NAME:Ljava/lang/String; = "adview.js"

.field private static final AD_CONTENT_HERE_STR:Ljava/lang/String; = "%AD_CONTENT_HERE%"

.field private static final BUFFER_SIZE:I = 0x400

.field private static final JS_CONTENT_HERE_STR:Ljava/lang/String; = "%JS_CONTENT_HERE%"

.field private static final XJT_RESPONSE_ID:Ljava/lang/String; = "Xjt-Responseid"


# instance fields
.field private adRequestId:Ljava/lang/String;

.field private contentListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

.field private context:Landroid/content/Context;

.field private shouldDebugNetworkTraffic:Z

.field private url:Ljava/lang/String;

.field private wrapperContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;)V
	.locals 2
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "contentListener"	# Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	const/4 v1, 0x0

	.line 37
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 28
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->shouldDebugNetworkTraffic:Z

	.line 33
	iput-object v1, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->contentListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	.line 34
	iput-object v1, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->wrapperContent:Ljava/lang/String;

	.line 39
	iput-object p2, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->contentListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	.line 40
	iput-object p1, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->context:Landroid/content/Context;

	.line 42
	invoke-direct {p0}, Lcom/jumptap/adtag/utils/JtAdFetcher;->makeContentWrapper()V

	.line 43
	return-void
.end method

.method private makeContentWrapper()V
	.locals 4
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Lcom/jumptap/adtag/utils/JtException;
		}
	.end annotation

	.prologue
	.line 156
	iget-object v2, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->wrapperContent:Ljava/lang/String;

	if-nez v2, :cond_0

	.line 158
	iget-object v2, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->context:Landroid/content/Context;

	const-string v3, "adview.html"

	invoke-static {v2, v3}, Lcom/jumptap/adtag/utils/FileReaderUtil;->getFileContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	.line 160
	.local v0, "htmlFileContent":Ljava/lang/StringBuilder;
	iget-object v2, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->context:Landroid/content/Context;

	const-string v3, "adview.js"

	invoke-static {v2, v3}, Lcom/jumptap/adtag/utils/FileReaderUtil;->getFileContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	.line 162
	.local v1, "jsFileContent":Ljava/lang/StringBuilder;
	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	const-string v3, "%JS_CONTENT_HERE%"

	invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

	move-result-object v2

	iput-object v2, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->wrapperContent:Ljava/lang/String;

	.line 164
	.end local v0	# "htmlFileContent":Ljava/lang/StringBuilder;
	.end local v1	# "jsFileContent":Ljava/lang/StringBuilder;
	:cond_0
	return-void
.end method

.method private modifyHtml(Ljava/lang/String;)Ljava/lang/String;
	.locals 3
	.param p1, "sourceHtml"	# Ljava/lang/String;

	.prologue
	.line 135
	const/4 v0, 0x0

	.line 137
	.local v0, "retHtml":Ljava/lang/String;
	if-eqz p1, :cond_0

	.line 138
	invoke-virtual {p1}, Ljava/lang/String;->length()I

	move-result v1

	if-lez v1, :cond_1

	.line 139
	iget-object v1, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->wrapperContent:Ljava/lang/String;

	const-string v2, "%AD_CONTENT_HERE%"

	invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

	move-result-object v0

	.line 147
	:cond_0
	:goto_0
	return-object v0

	.line 143
	:cond_1
	const-string v0, ""

	goto :goto_0
.end method


# virtual methods
.method public getAdContent()Ljava/lang/String;
	.locals 18

	.prologue
	.line 79
	const/4 v1, 0x0

	.line 81
	.local v1, "adContent":Ljava/lang/String;
	new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

	invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

	.line 82
	.local v3, "client":Lorg/apache/http/client/HttpClient;
	new-instance v7, Lorg/apache/http/client/methods/HttpGet;

	move-object/from16 v0, p0

	iget-object v15, v0, Lcom/jumptap/adtag/utils/JtAdFetcher;->url:Ljava/lang/String;

	invoke-direct {v7, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

	.line 83
	.local v7, "get":Lorg/apache/http/client/methods/HttpGet;
	move-object/from16 v0, p0

	iget-boolean v15, v0, Lcom/jumptap/adtag/utils/JtAdFetcher;->shouldDebugNetworkTraffic:Z

	if-eqz v15, :cond_0

	.line 84
	const-string v15, "JtAd"

	new-instance v16, Ljava/lang/StringBuilder;

	invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

	const-string v17, "Created html client for: "

	invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v16

	move-object/from16 v0, p0

	iget-object v0, v0, Lcom/jumptap/adtag/utils/JtAdFetcher;->url:Ljava/lang/String;

	move-object/from16 v17, v0

	invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v16

	invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v16

	invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 89
	:cond_0
	:try_start_0
	invoke-interface {v3, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

	move-result-object v11

	.line 91
	.local v11, "resp":Lorg/apache/http/HttpResponse;
	const-string v15, "Xjt-Responseid"

	invoke-interface {v11, v15}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

	move-result-object v6

	.line 92
	.local v6, "firstHeader":Lorg/apache/http/Header;
	if-eqz v6, :cond_1

	.line 93
	invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

	move-result-object v15

	move-object/from16 v0, p0

	iput-object v15, v0, Lcom/jumptap/adtag/utils/JtAdFetcher;->adRequestId:Ljava/lang/String;

	.line 96
	:cond_1
	invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

	move-result-object v13

	.line 98
	.local v13, "statusLine":Lorg/apache/http/StatusLine;
	invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

	move-result v12

	.line 99
	.local v12, "statusCode":I
	const/16 v15, 0xc8

	if-ne v12, v15, :cond_3

	.line 100
	invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

	move-result-object v5

	.line 101
	.local v5, "ent":Lorg/apache/http/HttpEntity;
	invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

	move-result-wide v15

	long-to-int v9, v15

	.line 102
	.local v9, "len":I
	invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

	move-result-object v8

	.line 104
	.local v8, "is":Ljava/io/InputStream;
	const/16 v15, 0x400

	new-array v2, v15, [B

	.line 105
	.local v2, "bar":[B
	new-instance v10, Ljava/lang/StringBuilder;

	invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

	.line 106
	.local v10, "reqContent":Ljava/lang/StringBuilder;
	:goto_0
	invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

	move-result v9

	if-lez v9, :cond_2

	.line 108
	new-instance v14, Ljava/lang/StringBuffer;

	new-instance v15, Ljava/lang/String;

	const/16 v16, 0x0

	move/from16 v0, v16

	invoke-direct {v15, v2, v0, v9}, Ljava/lang/String;-><init>([BII)V

	invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

	.line 109
	.local v14, "tmpBuf":Ljava/lang/StringBuffer;
	invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;
	:try_end_0
	.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 119
	.end local v2	# "bar":[B
	.end local v5	# "ent":Lorg/apache/http/HttpEntity;
	.end local v6	# "firstHeader":Lorg/apache/http/Header;
	.end local v8	# "is":Ljava/io/InputStream;
	.end local v9	# "len":I
	.end local v10	# "reqContent":Ljava/lang/StringBuilder;
	.end local v11	# "resp":Lorg/apache/http/HttpResponse;
	.end local v12	# "statusCode":I
	.end local v13	# "statusLine":Lorg/apache/http/StatusLine;
	.end local v14	# "tmpBuf":Ljava/lang/StringBuffer;
	:catch_0
	move-exception v4

	.line 120
	.local v4, "e":Ljava/io/IOException;
	const-string v15, "JtAd"

	new-instance v16, Ljava/lang/StringBuilder;

	invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

	const-string v17, "JtAdFetcher.getAdContent:"

	invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v16

	invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

	move-result-object v17

	invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v16

	invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v16

	invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 121
	const/4 v1, 0x0

	.line 124
	.end local v4	# "e":Ljava/io/IOException;
	:goto_1
	return-object v1

	.line 112
	.restart local v2	# "bar":[B
	.restart local v5	# "ent":Lorg/apache/http/HttpEntity;
	.restart local v6	# "firstHeader":Lorg/apache/http/Header;
	.restart local v8	# "is":Ljava/io/InputStream;
	.restart local v9	# "len":I
	.restart local v10	# "reqContent":Ljava/lang/StringBuilder;
	.restart local v11	# "resp":Lorg/apache/http/HttpResponse;
	.restart local v12	# "statusCode":I
	.restart local v13	# "statusLine":Lorg/apache/http/StatusLine;
	:cond_2
	:try_start_1
	invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	.line 113
	goto :goto_1

	.line 115
	.end local v2	# "bar":[B
	.end local v5	# "ent":Lorg/apache/http/HttpEntity;
	.end local v8	# "is":Ljava/io/InputStream;
	.end local v9	# "len":I
	.end local v10	# "reqContent":Ljava/lang/StringBuilder;
	:cond_3
	const-string v15, "JtAd"

	new-instance v16, Ljava/lang/StringBuilder;

	invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

	const-string v17, "JtAdFetcher.getAdContent: Recieve error Code=["

	invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v16

	move-object/from16 v0, v16

	invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v16

	const-string v17, "] when sending url=["

	invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v16

	move-object/from16 v0, p0

	iget-object v0, v0, Lcom/jumptap/adtag/utils/JtAdFetcher;->url:Ljava/lang/String;

	move-object/from16 v17, v0

	invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v16

	const-string v17, "]"

	invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v16

	invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v16

	invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_1
	.catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

	.line 116
	const/4 v1, 0x0

	goto :goto_1
.end method

.method public getAdRequestId()Ljava/lang/String;
	.locals 1

	.prologue
	.line 74
	iget-object v0, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->adRequestId:Ljava/lang/String;

	return-object v0
.end method

.method public kickOffUrlFetch(Ljava/lang/String;)V
	.locals 3
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 67
	const-string v1, "JtAd"

	const-string v2, "Kicked off fetcher"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 68
	iput-object p1, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->url:Ljava/lang/String;

	.line 69
	new-instance v0, Ljava/lang/Thread;

	invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

	.line 70
	.local v0, "thr":Ljava/lang/Thread;
	invoke-virtual {v0}, Ljava/lang/Thread;->start()V

	.line 71
	return-void
.end method

.method public run()V
	.locals 4

	.prologue
	.line 54
	const-string v2, "JtAd"

	const-string v3, "Started Url Thread"

	invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 56
	invoke-virtual {p0}, Lcom/jumptap/adtag/utils/JtAdFetcher;->getAdContent()Ljava/lang/String;

	move-result-object v0

	.line 59
	.local v0, "adContent":Ljava/lang/String;
	invoke-direct {p0, v0}, Lcom/jumptap/adtag/utils/JtAdFetcher;->modifyHtml(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v1

	.line 61
	.local v1, "adWrappedContent":Ljava/lang/String;
	iget-object v2, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->contentListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	if-eqz v2, :cond_0

	.line 62
	iget-object v2, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->contentListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	iget-object v3, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->adRequestId:Ljava/lang/String;

	invoke-interface {v2, v1, v3}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->setContent(Ljava/lang/String;Ljava/lang/String;)V

	.line 64
	:cond_0
	return-void
.end method

.method public setShouldDebugNetworkTraffic(Z)V
	.locals 0
	.param p1, "debug"	# Z

	.prologue
	.line 50
	iput-boolean p1, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->shouldDebugNetworkTraffic:Z

	.line 51
	return-void
.end method

.method public setUrl(Ljava/lang/String;)V
	.locals 0
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 46
	iput-object p1, p0, Lcom/jumptap/adtag/utils/JtAdFetcher;->url:Ljava/lang/String;

	.line 47
	return-void
.end method
