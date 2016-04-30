.class Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$OverlayRedirectionListenerImpl;
.super Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = "OverlayRedirectionListenerImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;)V
	.locals 0

	.prologue
	.line 299
	iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$OverlayRedirectionListenerImpl;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

	invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

	return-void
.end method


# virtual methods
.method public isExpandingToUrl()Z
	.locals 1

	.prologue
	.line 305
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$OverlayRedirectionListenerImpl;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

	iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

	invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->hasExpandUrl()Z

	move-result v0

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$OverlayRedirectionListenerImpl;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

	iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

	invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->hasLoadedExpandUrl()Z

	move-result v0

	if-nez v0, :cond_0

	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method
