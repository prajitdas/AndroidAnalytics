.class Lcom/millennialmedia/android/InlineVideoView$2;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/InlineVideoView;->createOnTouchListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/view/View$OnTouchListener;
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
    .line 367
    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 375
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 376
    .local v0, "mmLayout":Lcom/millennialmedia/android/MMLayout;
    if-nez v0, :cond_0

    .line 378
    const-string v2, "MMLayout weak reference broken"

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 390
    .end local v0    # "mmLayout":Lcom/millennialmedia/android/MMLayout;
    :goto_0
    return v1

    .line 381
    .restart local v0    # "mmLayout":Lcom/millennialmedia/android/MMLayout;
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v4, v4, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v4, v4, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(%f,%f)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->loadUrl(Ljava/lang/String;)V

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 386
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->show()V

    move v1, v2

    .line 387
    goto :goto_0

    .end local v0    # "mmLayout":Lcom/millennialmedia/android/MMLayout;
    :cond_2
    move v1, v2

    .line 390
    goto :goto_0
.end method
