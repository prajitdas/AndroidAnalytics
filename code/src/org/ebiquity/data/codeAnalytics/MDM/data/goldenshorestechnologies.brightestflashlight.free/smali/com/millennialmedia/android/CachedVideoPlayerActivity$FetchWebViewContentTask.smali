.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;
.super Landroid/os/AsyncTask;
.source "CachedVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/CachedVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = "FetchWebViewContentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
	value = {
		"Landroid/os/AsyncTask",
		"<",
		"Ljava/lang/Void;",
		"Ljava/lang/Void;",
		"Ljava/lang/String;",
		">;"
	}
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private cancelVideo:Z

.field final synthetic this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V
	.locals 0
	.param p2, "baseUrl"	# Ljava/lang/String;

	.prologue
	.line 750
	iput-object p1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

	.line 751
	iput-object p2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

	.line 752
	return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
	.locals 1
	.param p1, "x0"	# [Ljava/lang/Object;

	.prologue
	.line 743
	check-cast p1, [Ljava/lang/Void;

	.end local p1	# "x0":[Ljava/lang/Object;
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
	.locals 7
	.param p1, "arg0"	# [Ljava/lang/Void;

	.prologue
	.line 773
	:try_start_0
	new-instance v5, Lcom/millennialmedia/android/HttpGetRequest;

	invoke-direct {v5}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

	iget-object v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

	invoke-virtual {v5, v6}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

	move-result-object v2

	.line 774
	.local v2, "httpResponse":Lorg/apache/http/HttpResponse;
	invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

	move-result-object v3

	.line 775
	.local v3, "statusLine":Lorg/apache/http/StatusLine;
	if-eqz v2, :cond_0

	if-eqz v3, :cond_0

	invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

	move-result v5

	const/16 v6, 0x194

	if-eq v5, v6, :cond_0

	.line 777
	invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

	move-result-object v1

	.line 779
	.local v1, "httpEntity":Lorg/apache/http/HttpEntity;
	if-eqz v1, :cond_1

	.line 781
	invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

	move-result-object v5

	invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

	move-result-object v4

	.line 795
	.end local v1	# "httpEntity":Lorg/apache/http/HttpEntity;
	.end local v2	# "httpResponse":Lorg/apache/http/HttpResponse;
	.end local v3	# "statusLine":Lorg/apache/http/StatusLine;
	:goto_0
	return-object v4

	.line 788
	.restart local v2	# "httpResponse":Lorg/apache/http/HttpResponse;
	.restart local v3	# "statusLine":Lorg/apache/http/StatusLine;
	:cond_0
	const/4 v5, 0x1

	iput-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->cancelVideo:Z
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 795
	.end local v2	# "httpResponse":Lorg/apache/http/HttpResponse;
	.end local v3	# "statusLine":Lorg/apache/http/StatusLine;
	:cond_1
	:goto_1
	const/4 v4, 0x0

	goto :goto_0

	.line 791
	:catch_0
	move-exception v0

	.line 793
	.local v0, "e":Ljava/lang/Exception;
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
	.locals 0
	.param p1, "x0"	# Ljava/lang/Object;

	.prologue
	.line 743
	check-cast p1, Ljava/lang/String;

	.end local p1	# "x0":Ljava/lang/Object;
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->onPostExecute(Ljava/lang/String;)V

	return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
	.locals 3
	.param p1, "webContent"	# Ljava/lang/String;

	.prologue
	.line 757
	iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->cancelVideo:Z

	if-eqz v0, :cond_0

	.line 759
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

	.line 761
	:cond_0
	if-eqz p1, :cond_1

	.line 763
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	# getter for: Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;
	invoke-static {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->access$100(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/MMWebView;

	move-result-object v0

	iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

	iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	iget-object v2, v2, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

	.line 764
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	const/4 v1, 0x1

	iput-boolean v1, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

	.line 766
	:cond_1
	return-void
.end method
