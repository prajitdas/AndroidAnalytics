.class Lcom/millennialmedia/android/BridgeMMInlineVideo$7;
.super Ljava/lang/Object;
.source "BridgeMMInlineVideo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/BridgeMMInlineVideo;->resumeVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
	value = {
		"Ljava/lang/Object;",
		"Ljava/util/concurrent/Callable",
		"<",
		"Lcom/millennialmedia/android/MMJSResponse;",
		">;"
	}
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMInlineVideo;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V
	.locals 0

	.prologue
	.line 158
	iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$7;->this$0:Lcom/millennialmedia/android/BridgeMMInlineVideo;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
	.locals 3

	.prologue
	.line 162
	iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$7;->this$0:Lcom/millennialmedia/android/BridgeMMInlineVideo;

	iget-object v2, v2, Lcom/millennialmedia/android/BridgeMMInlineVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Lcom/millennialmedia/android/MMWebView;

	.line 163
	.local v1, "webView":Lcom/millennialmedia/android/MMWebView;
	if-eqz v1, :cond_0

	.line 165
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getMMLayout()Lcom/millennialmedia/android/MMLayout;

	move-result-object v0

	.line 167
	.local v0, "mmLayout":Lcom/millennialmedia/android/MMLayout;
	if-eqz v0, :cond_0

	.line 169
	invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->resumeVideo()V

	.line 170
	invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

	move-result-object v2

	.line 173
	.end local v0	# "mmLayout":Lcom/millennialmedia/android/MMLayout;
	:goto_0
	return-object v2

	:cond_0
	invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError()Lcom/millennialmedia/android/MMJSResponse;

	move-result-object v2

	goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
	.locals 1
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/lang/Exception;
		}
	.end annotation

	.prologue
	.line 158
	invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$7;->call()Lcom/millennialmedia/android/MMJSResponse;

	move-result-object v0

	return-object v0
.end method
