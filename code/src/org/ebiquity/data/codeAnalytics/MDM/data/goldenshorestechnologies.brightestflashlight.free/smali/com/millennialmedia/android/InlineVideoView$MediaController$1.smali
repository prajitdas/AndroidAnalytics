.class Lcom/millennialmedia/android/InlineVideoView$MediaController$1;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/InlineVideoView$MediaController;->setAnchorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/InlineVideoView$MediaController;)V
	.locals 0

	.prologue
	.line 763
	iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
	.locals 7
	.param p1, "arg0"	# Landroid/view/View;

	.prologue
	const/4 v6, 0x0

	const/4 v5, 0x1

	.line 768
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Lcom/millennialmedia/android/MMLayout;

	.line 769
	.local v1, "mmLayout":Lcom/millennialmedia/android/MMLayout;
	if-eqz v1, :cond_1

	.line 771
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	const/high16 v4, -0x1000000

	invoke-virtual {v3, v4}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->setBackgroundColor(I)V

	.line 773
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v3}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

	move-result v3

	if-eqz v3, :cond_0

	.line 775
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget-object v4, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v4, v4, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v4}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

	move-result v4

	iput v4, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

	.line 778
	:cond_0
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget-boolean v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

	if-eqz v3, :cond_3

	.line 780
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iput-boolean v6, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

	.line 781
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

	if-ne v3, v5, :cond_2

	.line 783
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	invoke-virtual {v3}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->getContext()Landroid/content/Context;

	move-result-object v0

	check-cast v0, Landroid/app/Activity;

	.line 784
	.local v0, "activity":Landroid/app/Activity;
	if-eqz v0, :cond_1

	.line 786
	invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

	.line 818
	.end local v0	# "activity":Landroid/app/Activity;
	:cond_1
	:goto_0
	return-void

	.line 791
	:cond_2
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v3}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

	move-result v2

	.line 792
	.local v2, "wasPlaying":Z
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v3}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

	.line 793
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMLayout;->repositionVideoLayout()V

	.line 794
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	# invokes: Lcom/millennialmedia/android/InlineVideoView;->resumeInternal(Z)V
	invoke-static {v3, v2}, Lcom/millennialmedia/android/InlineVideoView;->access$500(Lcom/millennialmedia/android/InlineVideoView;Z)V

	goto :goto_0

	.line 799
	.end local v2	# "wasPlaying":Z
	:cond_3
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget-object v4, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	invoke-virtual {v4}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->getContext()Landroid/content/Context;

	move-result-object v4

	invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

	move-result-object v4

	invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

	move-result-object v4

	iget v4, v4, Landroid/content/res/Configuration;->orientation:I

	iput v4, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

	.line 800
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iput-boolean v5, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

	.line 801
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

	const/4 v4, 0x2

	if-eq v3, v4, :cond_4

	.line 803
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	invoke-virtual {v3}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->getContext()Landroid/content/Context;

	move-result-object v0

	check-cast v0, Landroid/app/Activity;

	.line 804
	.restart local v0	# "activity":Landroid/app/Activity;
	if-eqz v0, :cond_1

	.line 806
	invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

	goto :goto_0

	.line 811
	.end local v0	# "activity":Landroid/app/Activity;
	:cond_4
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v3}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

	move-result v2

	.line 812
	.restart local v2	# "wasPlaying":Z
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	invoke-virtual {v3}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

	.line 813
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMLayout;->fullScreenVideoLayout()V

	.line 814
	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

	iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	# invokes: Lcom/millennialmedia/android/InlineVideoView;->resumeInternal(Z)V
	invoke-static {v3, v2}, Lcom/millennialmedia/android/InlineVideoView;->access$500(Lcom/millennialmedia/android/InlineVideoView;Z)V

	goto :goto_0
.end method
