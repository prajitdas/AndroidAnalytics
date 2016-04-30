.class Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$1;
.super Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

.field final synthetic val$this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;Lcom/millennialmedia/android/AdViewOverlayView;)V
	.locals 0

	.prologue
	.line 278
	iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$1;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

	iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$1;->val$this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

	return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
	.locals 1
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 282
	invoke-super {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

	.line 283
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$1;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

	iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	# invokes: Lcom/millennialmedia/android/AdViewOverlayView;->removeProgressBar()V
	invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)V

	.line 284
	return-void
.end method
