.class Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetCloseButtonTouchDelegateRunnable"
.end annotation


# instance fields
.field bottom:I

.field private final closeButton:Landroid/widget/Button;

.field left:I

.field right:I

.field top:I


# direct methods
.method constructor <init>(Landroid/widget/Button;IIII)V
    .locals 0
    .param p1, "closeButton"    # Landroid/widget/Button;
    .param p2, "topMargin"    # I
    .param p3, "leftMargin"    # I
    .param p4, "bottomMargin"    # I
    .param p5, "rightMargin"    # I

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->closeButton:Landroid/widget/Button;

    .line 388
    iput p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->top:I

    .line 389
    iput p3, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->left:I

    .line 390
    iput p4, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->bottom:I

    .line 391
    iput p5, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->right:I

    .line 392
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 398
    .local v0, "delegateArea":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->closeButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    .line 399
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->top:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 400
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->right:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 401
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 402
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->left:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 403
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->closeButton:Landroid/widget/Button;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 406
    .local v1, "expandedArea":Landroid/view/TouchDelegate;
    const-class v2, Landroid/view/View;

    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->closeButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;->closeButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 408
    :cond_0
    return-void
.end method
