.class Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$1;
.super Ljava/lang/Object;
.source "MainSettingsUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;


# direct methods
.method constructor <init>(Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;)V
	.locals 0

	.prologue
	.line 1
	iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$1;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	.line 419
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
	.locals 3
	.param p1, "anim"	# Landroid/view/animation/Animation;

	.prologue
	.line 424
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$1;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

	invoke-static {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->access$0(Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 429
	:goto_0
	return-void

	.line 425
	:catch_0
	move-exception v0

	.line 426
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "MainSettingsUI"

	const-string v2, "animListenerInvisibleToTransparent.onAnimationEnd() Failed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 427
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
	.locals 0
	.param p1, "animation"	# Landroid/view/animation/Animation;

	.prologue
	.line 432
	return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
	.locals 0
	.param p1, "animation"	# Landroid/view/animation/Animation;

	.prologue
	.line 435
	return-void
.end method
