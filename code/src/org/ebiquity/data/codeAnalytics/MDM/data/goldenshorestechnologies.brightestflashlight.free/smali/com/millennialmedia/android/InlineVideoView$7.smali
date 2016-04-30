.class Lcom/millennialmedia/android/InlineVideoView$7;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/InlineVideoView;->createOnPreparedListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
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
	.line 649
	iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
	.locals 2
	.param p1, "arg0"	# Landroid/media/MediaPlayer;

	.prologue
	.line 658
	iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

	if-eqz v0, :cond_0

	.line 660
	iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	# invokes: Lcom/millennialmedia/android/InlineVideoView;->makeTransparent()V
	invoke-static {v0}, Lcom/millennialmedia/android/InlineVideoView;->access$400(Lcom/millennialmedia/android/InlineVideoView;)V

	.line 662
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

	invoke-virtual {v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

	.line 663
	iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

	if-nez v0, :cond_1

	iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

	if-nez v0, :cond_2

	.line 665
	:cond_1
	iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getHeight()I

	.line 671
	:goto_0
	iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->getDuration()I

	move-result v1

	# setter for: Lcom/millennialmedia/android/InlineVideoView;->duration:I
	invoke-static {v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->access$202(Lcom/millennialmedia/android/InlineVideoView;I)I

	.line 672
	return-void

	.line 669
	:cond_2
	iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$7;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	const/4 v1, 0x0

	iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

	goto :goto_0
.end method
