.class Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$5;
.super Ljava/lang/Object;
.source "BrightestFlashlightMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;


# direct methods
.method constructor <init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
	.locals 0

	.prologue
	.line 1
	iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$5;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 542
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 5

	.prologue
	.line 546
	:try_start_0
	invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->getIsTimeToTerminate()Z

	move-result v1

	if-nez v1, :cond_1

	sget-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bTimerExtended:Z

	if-eqz v1, :cond_1

	.line 548
	const/4 v1, 0x0

	sput-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bTimerExtended:Z

	.line 549
	sget-wide v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iAutoShutdownTimeout:J

	const-wide/16 v3, -0x1

	cmp-long v1, v1, v3

	if-eqz v1, :cond_0

	.line 550
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$5;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	iget-object v1, v1, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mHandlerShutdownTimer:Landroid/os/Handler;

	sget-wide v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iAutoShutdownTimeout:J

	invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

	.line 551
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Launched extended timer"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 565
	:cond_0
	:goto_0
	return-void

	.line 557
	:cond_1
	const/4 v1, 0x1

	invoke-static {v1}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->setIsTimeToTerminate(Z)V

	.line 558
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$5;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# invokes: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->playCountdownAnimation()V
	invoke-static {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$4(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 560
	:catch_0
	move-exception v0

	.line 561
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "run() Runnable Timer ObjectFailed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 562
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 563
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$5;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionRunFailed:Ljava/lang/String;

	const/4 v3, 0x0

	invoke-virtual {v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method
