.class Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;
.super Ljava/lang/Object;
.source "MMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->animateTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;)V
	.locals 0

	.prologue
	.line 336
	iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 8

	.prologue
	const/4 v7, 0x4

	const/4 v6, 0x1

	const/4 v5, 0x0

	.line 341
	iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

	iget-object v4, v4, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

	iget v3, v4, Lcom/millennialmedia/android/MMAdView;->transitionType:I

	.line 344
	.local v3, "type":I
	if-ne v3, v7, :cond_0

	.line 346
	new-instance v2, Ljava/util/Random;

	invoke-direct {v2}, Ljava/util/Random;-><init>()V

	.line 347
	.local v2, "r":Ljava/util/Random;
	invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

	move-result v3

	.line 351
	.end local v2	# "r":Ljava/util/Random;
	:cond_0
	packed-switch v3, :pswitch_data_0

	.line 355
	new-instance v0, Landroid/view/animation/AlphaAnimation;

	const/high16 v4, 0x3f800000	# 1.0f

	invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

	.line 368
	.local v0, "animation":Landroid/view/animation/Animation;
	:goto_0
	const-wide/16 v4, 0x3e8

	invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

	.line 369
	iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

	iget-object v4, v4, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

	.line 370
	invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

	.line 371
	invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillBefore(Z)V

	.line 372
	invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

	.line 373
	iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

	iget-object v4, v4, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

	iget-object v4, v4, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

	invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

	.line 374
	return-void

	.line 358
	.end local v0	# "animation":Landroid/view/animation/Animation;
	:pswitch_0
	iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

	iget-object v4, v4, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v4}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

	move-result v4

	int-to-float v1, v4

	.line 359
	.local v1, "height":F
	new-instance v0, Landroid/view/animation/TranslateAnimation;

	neg-float v4, v1

	invoke-direct {v0, v5, v5, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

	.line 360
	.restart local v0	# "animation":Landroid/view/animation/Animation;
	goto :goto_0

	.line 362
	.end local v0	# "animation":Landroid/view/animation/Animation;
	.end local v1	# "height":F
	:pswitch_1
	iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

	iget-object v4, v4, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v4}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

	move-result v4

	int-to-float v1, v4

	.line 363
	.restart local v1	# "height":F
	new-instance v0, Landroid/view/animation/TranslateAnimation;

	invoke-direct {v0, v5, v5, v5, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

	.restart local v0	# "animation":Landroid/view/animation/Animation;
	goto :goto_0

	.line 351
	:pswitch_data_0
	.packed-switch 0x2
		:pswitch_0
		:pswitch_1
	.end packed-switch
.end method
