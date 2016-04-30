.class Lcom/millennialmedia/android/BannerWebViewClient;
.super Lcom/millennialmedia/android/MMWebViewClient;
.source "BannerWebViewClient.java"


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
	.locals 0
	.param p1, "mmWebViewClientListener"	# Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;
	.param p2, "redirListener"	# Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

	.prologue
	.line 9
	invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

	.line 10
	return-void
.end method


# virtual methods
.method setMraidState(Lcom/millennialmedia/android/MMWebView;)V
	.locals 0
	.param p1, "mmWebView"	# Lcom/millennialmedia/android/MMWebView;

	.prologue
	.line 15
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidPlacementTypeInline()V

	.line 16
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidDefault()V

	.line 17
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidReady()V

	.line 18
	return-void
.end method
