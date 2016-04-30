.class Lcom/millennialmedia/android/AdViewOverlayView$2;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/AdViewOverlayView;->closeAreaTouched()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
	.locals 0

	.prologue
	.line 314
	iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$2;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 1

	.prologue
	.line 318
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$2;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->finishOverlayWithAnimation()V

	.line 319
	return-void
.end method
