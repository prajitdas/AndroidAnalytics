.class Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;
.super Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

.field final synthetic val$this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->val$this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->isTransitionAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->animateTransition()V

    .line 265
    :cond_0
    return-void
.end method
