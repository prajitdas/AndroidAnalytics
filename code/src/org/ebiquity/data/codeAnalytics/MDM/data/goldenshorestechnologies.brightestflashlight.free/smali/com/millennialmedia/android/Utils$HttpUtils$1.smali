.class final Lcom/millennialmedia/android/Utils$HttpUtils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/Utils$HttpUtils;->executeUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x8
	name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
	.locals 0

	.prologue
	.line 41
	iput-object p1, p0, Lcom/millennialmedia/android/Utils$HttpUtils$1;->val$url:Ljava/lang/String;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 6

	.prologue
	.line 47
	:try_start_0
	new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

	invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

	.line 48
	.local v0, "client":Lorg/apache/http/client/HttpClient;
	new-instance v2, Lorg/apache/http/client/methods/HttpGet;

	iget-object v4, p0, Lcom/millennialmedia/android/Utils$HttpUtils$1;->val$url:Ljava/lang/String;

	invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

	.line 49
	.local v2, "get":Lorg/apache/http/client/methods/HttpGet;
	invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

	move-result-object v3

	.line 50
	.local v3, "request":Lorg/apache/http/HttpResponse;
	new-instance v4, Ljava/lang/StringBuilder;

	invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

	const-string v5, "Executed Url :\""

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	iget-object v5, p0, Lcom/millennialmedia/android/Utils$HttpUtils$1;->val$url:Ljava/lang/String;

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	const-string v5, "\""

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
	:try_end_0
	.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

	.line 56
	.end local v0	# "client":Lorg/apache/http/client/HttpClient;
	.end local v2	# "get":Lorg/apache/http/client/methods/HttpGet;
	.end local v3	# "request":Lorg/apache/http/HttpResponse;
	:goto_0
	return-void

	.line 52
	:catch_0
	move-exception v1

	.line 54
	.local v1, "e":Ljava/io/IOException;
	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

	goto :goto_0
.end method
