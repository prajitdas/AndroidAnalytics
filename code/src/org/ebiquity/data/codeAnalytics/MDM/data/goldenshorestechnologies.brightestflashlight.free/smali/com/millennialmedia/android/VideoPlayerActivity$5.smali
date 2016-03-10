.class Lcom/millennialmedia/android/VideoPlayerActivity$5;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->initBottomBar(Landroid/widget/RelativeLayout;)V
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
    .line 284
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$5;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$5;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$5;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x1

    # setter for: Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$102(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z

    .line 291
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$5;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->dismiss()V

    .line 293
    :cond_0
    return-void
.end method
