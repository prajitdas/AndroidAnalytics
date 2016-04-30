.class Lcom/millennialmedia/android/InlineVideoView$5;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/InlineVideoView;->createOnErrorListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/InlineVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/InlineVideoView;)V
	.locals 0

	.prologue
	.line 598
	iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$5;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
	.locals 7
	.param p1, "mp"	# Landroid/media/MediaPlayer;
	.param p2, "what"	# I
	.param p3, "extra"	# I

	.prologue
	const/4 v2, 0x1

	const/4 v1, 0x0

	const/4 v5, 0x2

	.line 602
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$5;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

	if-eqz v3, :cond_0

	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$5;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

	invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

	move-result v3

	if-eqz v3, :cond_0

	.line 603
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$5;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

	invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

	.line 605
	:cond_0
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$5;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/MMLayout;

	.line 606
	.local v0, "mmLayout":Lcom/millennialmedia/android/MMLayout;
	if-nez v0, :cond_1

	.line 608
	const-string v2, "MMLayout weak reference broken"

	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

	.line 612
	:goto_0
	return v1

	.line 611
	:cond_1
	new-instance v3, Ljava/lang/StringBuilder;

	invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

	const-string v4, "javascript:MMJS.setError("

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	const-string v4, "Error while playing, %d - %d"

	new-array v5, v5, [Ljava/lang/Object;

	invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v6

	aput-object v6, v5, v1

	invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v1

	aput-object v1, v5, v2

	invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v3, ");"

	invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->loadUrl(Ljava/lang/String;)V

	move v1, v2

	.line 612
	goto :goto_0
.end method
