.class Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;
.super Landroid/os/AsyncTask;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/AdViewOverlayView;
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

.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Ljava/lang/String;)V
	.locals 0
	.param p2, "baseUrl"	# Ljava/lang/String;

	.prologue
	.line 551
	iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

	.line 552
	iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

	.line 553
	return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
	.locals 1
	.param p1, "x0"	# [Ljava/lang/Object;

	.prologue
	.line 543
	check-cast p1, [Ljava/lang/Void;

	.end local p1	# "x0":[Ljava/lang/Object;
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
	.locals 7
	.param p1, "arg0"	# [Ljava/lang/Void;

	.prologue
	.line 570
	:try_start_0
	new-instance v5, Lcom/millennialmedia/android/HttpGetRequest;

	invoke-direct {v5}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

	iget-object v6, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

	invoke-virtual {v5, v6}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

	move-result-object v2

	.line 571
	.local v2, "httpResponse":Lorg/apache/http/HttpResponse;
	invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

	move-result-object v3

	.line 572
	.local v3, "statusLine":Lorg/apache/http/StatusLine;
	if-eqz v2, :cond_0

	if-eqz v3, :cond_0

	invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

	move-result v5

	const/16 v6, 0x194

	if-eq v5, v6, :cond_0

	.line 574
	invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

	move-result-object v1

	.line 576
	.local v1, "httpEntity":Lorg/apache/http/HttpEntity;
	if-eqz v1, :cond_1

	.line 578
	invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

	move-result-object v5

	invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

	move-result-object v4

	.line 592
	.end local v1	# "httpEntity":Lorg/apache/http/HttpEntity;
	.end local v2	# "httpResponse":Lorg/apache/http/HttpResponse;
	.end local v3	# "statusLine":Lorg/apache/http/StatusLine;
	:goto_0
	return-object v4

	.line 585
	.restart local v2	# "httpResponse":Lorg/apache/http/HttpResponse;
	.restart local v3	# "statusLine":Lorg/apache/http/StatusLine;
	:cond_0
	const/4 v5, 0x1

	iput-boolean v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 592
	.end local v2	# "httpResponse":Lorg/apache/http/HttpResponse;
	.end local v3	# "statusLine":Lorg/apache/http/StatusLine;
	:cond_1
	:goto_1
	const/4 v4, 0x0

	goto :goto_0

	.line 588
	:catch_0
	move-exception v0

	.line 590
	.local v0, "e":Ljava/lang/Exception;
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
	.locals 0
	.param p1, "x0"	# Ljava/lang/Object;

	.prologue
	.line 543
	check-cast p1, Ljava/lang/String;

	.end local p1	# "x0":Ljava/lang/Object;
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->onPostExecute(Ljava/lang/String;)V

	return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
	.locals 3
	.param p1, "webContent"	# Ljava/lang/String;

	.prologue
	.line 599
	iget-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z

	if-eqz v1, :cond_0

	.line 601
	iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	iget-object v1, v1, Lcom/millennialmedia/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/AdViewOverlayActivity;

	.line 602
	.local v0, "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
	if-eqz v0, :cond_2

	.line 604
	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->finish()V

	.line 611
	.end local v0	# "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
	:cond_0
	:goto_0
	if-eqz p1, :cond_1

	.line 613
	iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	iget-object v1, v1, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

	invoke-virtual {v1, p1, v2}, Lcom/millennialmedia/android/MMAdImplController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V

	.line 615
	:cond_1
	return-void

	.line 608
	.restart local v0	# "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
	:cond_2
	iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	# invokes: Lcom/millennialmedia/android/AdViewOverlayView;->removeProgressBar()V
	invoke-static {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)V

	goto :goto_0
.end method

.method protected onPreExecute()V
	.locals 1

	.prologue
	.line 558
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	# getter for: Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;
	invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$400(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/ProgressBar;

	move-result-object v0

	if-nez v0, :cond_0

	.line 560
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	# invokes: Lcom/millennialmedia/android/AdViewOverlayView;->initProgressBar()V
	invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$500(Lcom/millennialmedia/android/AdViewOverlayView;)V

	.line 562
	:cond_0
	invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

	.line 563
	return-void
.end method
