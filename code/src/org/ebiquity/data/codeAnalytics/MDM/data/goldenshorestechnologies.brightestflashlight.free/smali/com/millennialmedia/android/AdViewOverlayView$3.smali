.class Lcom/millennialmedia/android/AdViewOverlayView$3;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/AdViewOverlayView;->finishOverlayWithAnimation()V
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
	.line 332
	iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$3;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
	.locals 2
	.param p1, "animation"	# Landroid/view/animation/Animation;

	.prologue
	.line 343
	iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$3;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

	move-result-object v0

	check-cast v0, Landroid/app/Activity;

	.line 344
	.local v0, "activity":Landroid/app/Activity;
	const-string v1, "Finishing overlay this is in w/ anim finishOverLayWithAnim()"

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 345
	iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$3;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->attachWebViewToLink()V

	.line 346
	invoke-virtual {v0}, Landroid/app/Activity;->finish()V

	.line 353
	return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
	.locals 0
	.param p1, "animation"	# Landroid/view/animation/Animation;

	.prologue
	.line 358
	return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
	.locals 2
	.param p1, "animation"	# Landroid/view/animation/Animation;

	.prologue
	.line 336
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$3;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	# getter for: Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;
	invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$300(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/Button;

	move-result-object v0

	if-eqz v0, :cond_0

	.line 337
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$3;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

	# getter for: Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;
	invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$300(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/Button;

	move-result-object v0

	const/16 v1, 0x8

	invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

	.line 338
	:cond_0
	return-void
.end method
