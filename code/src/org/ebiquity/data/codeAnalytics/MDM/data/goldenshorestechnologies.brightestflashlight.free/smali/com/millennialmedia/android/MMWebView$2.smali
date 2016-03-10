.class Lcom/millennialmedia/android/MMWebView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$2;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$2;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget-wide v1, v1, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/MMSDK$Event;->overlayTap(Landroid/content/Context;J)V

    .line 98
    const/4 v0, 0x0

    return v0
.end method
