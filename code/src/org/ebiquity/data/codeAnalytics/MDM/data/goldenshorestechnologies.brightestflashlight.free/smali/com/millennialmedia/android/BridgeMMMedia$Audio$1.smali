.class Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;
.super Ljava/lang/Object;
.source "BridgeMMMedia.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)V
	.locals 0

	.prologue
	.line 712
	iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
	.locals 2
	.param p1, "mp"	# Landroid/media/MediaPlayer;

	.prologue
	.line 716
	monitor-enter p0

	:try_start_0
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

	# getter for: Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->access$100(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;

	move-result-object v0

	if-eqz v0, :cond_0

	.line 718
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

	# getter for: Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->access$100(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;

	move-result-object v0

	invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

	.line 719
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

	const/4 v1, 0x0

	# setter for: Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v0, v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->access$102(Lcom/millennialmedia/android/BridgeMMMedia$Audio;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 721
	:cond_0
	monitor-exit p0

	return-void

	.line 716
	:catchall_0
	move-exception v0

	monitor-exit p0

	throw v0
.end method
