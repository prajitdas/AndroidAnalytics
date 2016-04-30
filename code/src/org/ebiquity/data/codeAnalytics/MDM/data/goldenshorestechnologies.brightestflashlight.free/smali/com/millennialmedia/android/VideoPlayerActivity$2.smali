.class Lcom/millennialmedia/android/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/VideoPlayerActivity;->processVideoPlayerUri(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)V
	.locals 0

	.prologue
	.line 178
	iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iput-object p2, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->val$action:Ljava/lang/String;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 2

	.prologue
	.line 182
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->val$action:Ljava/lang/String;

	const-string v1, "restartVideo"

	invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v0

	if-eqz v0, :cond_1

	.line 184
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->restartVideo()V

	.line 190
	:cond_0
	:goto_0
	return-void

	.line 186
	:cond_1
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->val$action:Ljava/lang/String;

	const-string v1, "endVideo"

	invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v0

	if-eqz v0, :cond_0

	.line 188
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->endVideo()V

	goto :goto_0
.end method
