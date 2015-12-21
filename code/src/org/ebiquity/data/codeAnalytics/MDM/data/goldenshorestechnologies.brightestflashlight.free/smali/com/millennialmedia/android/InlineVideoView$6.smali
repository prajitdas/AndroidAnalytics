.class Lcom/millennialmedia/android/InlineVideoView$6;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/InlineVideoView;->createOnCompletionListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
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
    .line 620
    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$6;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x2

    .line 624
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$6;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$6;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$6;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$6;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    .line 629
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$6;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$6;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    # getter for: Lcom/millennialmedia/android/InlineVideoView;->duration:I
    invoke-static {v1}, Lcom/millennialmedia/android/InlineVideoView;->access$200(Lcom/millennialmedia/android/InlineVideoView;)I

    move-result v1

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 630
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$6;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 631
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$6;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$6;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    # invokes: Lcom/millennialmedia/android/InlineVideoView;->updateVideoSeekTimeFinal()V
    invoke-static {v0}, Lcom/millennialmedia/android/InlineVideoView;->access$300(Lcom/millennialmedia/android/InlineVideoView;)V

    .line 634
    return-void
.end method
