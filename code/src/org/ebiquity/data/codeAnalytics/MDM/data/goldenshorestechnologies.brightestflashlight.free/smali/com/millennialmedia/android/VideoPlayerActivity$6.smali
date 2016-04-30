.class Lcom/millennialmedia/android/VideoPlayerActivity$6;
.super Landroid/os/Handler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
	.locals 0

	.prologue
	.line 434
	iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	invoke-direct {p0}, Landroid/os/Handler;-><init>()V

	return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
	.locals 4
	.param p1, "msg"	# Landroid/os/Message;

	.prologue
	const/4 v3, 0x4

	.line 438
	iget v0, p1, Landroid/os/Message;->what:I

	packed-switch v0, :pswitch_data_0

	.line 459
	:cond_0
	:goto_0
	return-void

	.line 441
	:pswitch_0
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	if-eqz v0, :cond_1

	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

	move-result v0

	if-eqz v0, :cond_1

	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

	move-result v0

	if-lez v0, :cond_1

	.line 443
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	const/4 v1, 0x0

	invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

	.line 444
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->transparentHandler:Landroid/os/Handler;

	const/4 v1, 0x5

	const-wide/16 v2, 0x64

	invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

	goto :goto_0

	.line 448
	:cond_1
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->transparentHandler:Landroid/os/Handler;

	const-wide/16 v1, 0x32

	invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

	goto :goto_0

	.line 452
	:pswitch_1
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

	move-result v0

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

	move-result v0

	if-lez v0, :cond_0

	.line 454
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

	invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

	.line 455
	iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

	invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

	goto :goto_0

	.line 438
	nop

	:pswitch_data_0
	.packed-switch 0x4
		:pswitch_0
		:pswitch_1
	.end packed-switch
.end method
