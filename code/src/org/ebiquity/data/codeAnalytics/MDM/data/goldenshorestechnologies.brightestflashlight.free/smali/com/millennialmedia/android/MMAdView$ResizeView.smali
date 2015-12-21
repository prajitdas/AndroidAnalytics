.class Lcom/millennialmedia/android/MMAdView$ResizeView;
.super Landroid/view/View;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizeView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$ResizeView;->this$0:Lcom/millennialmedia/android/MMAdView;

    .line 458
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 459
    return-void
.end method


# virtual methods
.method declared-synchronized attachToContext(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$ResizeView;->this$0:Lcom/millennialmedia/android/MMAdView;

    # invokes: Lcom/millennialmedia/android/MMAdView;->detachFromParent(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMAdView;->access$100(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V

    .line 481
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :cond_0
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 473
    const-string v0, "onRestoreInstanceState"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$ResizeView;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$ResizeView;->this$0:Lcom/millennialmedia/android/MMAdView;

    # invokes: Lcom/millennialmedia/android/MMAdView;->attachToWindow(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdView;->access$000(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V

    .line 475
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 476
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 464
    const-string v0, "onSaveInstanceState"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$ResizeView;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->attachToContext(Landroid/view/View;)V

    .line 467
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
