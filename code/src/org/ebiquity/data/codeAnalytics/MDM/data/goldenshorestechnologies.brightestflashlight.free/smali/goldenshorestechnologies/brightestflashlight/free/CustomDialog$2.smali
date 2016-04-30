.class Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$2;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;


# direct methods
.method constructor <init>(Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;)V
	.locals 0

	.prologue
	.line 1
	iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$2;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;

	.line 319
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
	.locals 3
	.param p1, "anim"	# Landroid/view/animation/Animation;

	.prologue
	.line 324
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$2;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;

	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	iput-object v2, v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 329
	:goto_0
	return-void

	.line 325
	:catch_0
	move-exception v0

	.line 326
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "CustomDialog"

	const-string v2, "animListenerHide.onAnimationEnd() Failed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 327
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
	.locals 0
	.param p1, "animation"	# Landroid/view/animation/Animation;

	.prologue
	.line 332
	return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
	.locals 0
	.param p1, "animation"	# Landroid/view/animation/Animation;

	.prologue
	.line 335
	return-void
.end method
