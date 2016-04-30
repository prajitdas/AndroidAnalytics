.class Lcom/millennialmedia/android/AdViewOverlayView$1;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/AdViewOverlayView;->initMRaidCloseButton(Landroid/content/Context;F)Landroid/widget/Button;
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
	.line 141
	iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
	.locals 1
	.param p1, "view"	# Landroid/view/View;

	.prologue
	.line 145
	const-string v0, "Close button clicked."

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 146
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->finishOverlayWithAnimation()V

	.line 147
	return-void
.end method
