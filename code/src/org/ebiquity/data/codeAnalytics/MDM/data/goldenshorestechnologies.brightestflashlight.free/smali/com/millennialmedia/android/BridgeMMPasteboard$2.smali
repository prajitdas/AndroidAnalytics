.class Lcom/millennialmedia/android/BridgeMMPasteboard$2;
.super Ljava/lang/Object;
.source "BridgeMMPasteboard.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/BridgeMMPasteboard;->writeToPasteboard(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMPasteboard;

.field final synthetic val$arguments:Ljava/util/HashMap;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMPasteboard;Landroid/content/Context;Ljava/util/HashMap;)V
	.locals 0

	.prologue
	.line 63
	iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->this$0:Lcom/millennialmedia/android/BridgeMMPasteboard;

	iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->val$context:Landroid/content/Context;

	iput-object p3, p0, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->val$arguments:Ljava/util/HashMap;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
	.locals 5

	.prologue
	.line 69
	:try_start_0
	iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->val$context:Landroid/content/Context;

	const-string v4, "clipboard"

	invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Landroid/text/ClipboardManager;

	.line 70
	.local v0, "clipboard":Landroid/text/ClipboardManager;
	iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->val$arguments:Ljava/util/HashMap;

	const-string v4, "data"

	invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v2

	check-cast v2, Ljava/lang/String;

	.line 71
	.local v2, "message":Ljava/lang/String;
	invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

	.line 72
	invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	move-result-object v3

	.line 79
	.end local v0	# "clipboard":Landroid/text/ClipboardManager;
	.end local v2	# "message":Ljava/lang/String;
	:goto_0
	return-object v3

	.line 75
	:catch_0
	move-exception v1

	.line 77
	.local v1, "e":Ljava/lang/Exception;
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	.line 79
	const/4 v3, 0x0

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
	.line 63
	invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->call()Lcom/millennialmedia/android/MMJSResponse;

	move-result-object v0

	return-object v0
.end method
