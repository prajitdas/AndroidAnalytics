.class Lcom/millennialmedia/android/MMCommand$1;
.super Ljava/lang/Object;
.source "MMCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/MMCommand;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMCommand;

.field final synthetic val$call:Ljava/lang/String;

.field final synthetic val$webViewCallback:Lcom/millennialmedia/android/MMWebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V
	.locals 0

	.prologue
	.line 135
	iput-object p1, p0, Lcom/millennialmedia/android/MMCommand$1;->this$0:Lcom/millennialmedia/android/MMCommand;

	iput-object p2, p0, Lcom/millennialmedia/android/MMCommand$1;->val$webViewCallback:Lcom/millennialmedia/android/MMWebView;

	iput-object p3, p0, Lcom/millennialmedia/android/MMCommand$1;->val$call:Ljava/lang/String;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 2

	.prologue
	.line 139
	iget-object v0, p0, Lcom/millennialmedia/android/MMCommand$1;->this$0:Lcom/millennialmedia/android/MMCommand;

	# getter for: Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;
	invoke-static {v0}, Lcom/millennialmedia/android/MMCommand;->access$000(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/reflect/Method;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

	move-result-object v0

	const-string v1, "expandWithProperties"

	invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_0

	.line 141
	iget-object v0, p0, Lcom/millennialmedia/android/MMCommand$1;->val$webViewCallback:Lcom/millennialmedia/android/MMWebView;

	const/4 v1, 0x1

	iput-boolean v1, v0, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

	.line 143
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/MMCommand$1;->val$webViewCallback:Lcom/millennialmedia/android/MMWebView;

	iget-object v1, p0, Lcom/millennialmedia/android/MMCommand$1;->val$call:Ljava/lang/String;

	invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

	.line 144
	return-void
.end method
