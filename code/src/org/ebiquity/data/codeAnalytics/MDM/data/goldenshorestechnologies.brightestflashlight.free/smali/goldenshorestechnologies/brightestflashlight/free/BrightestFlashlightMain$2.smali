.class Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$2;
.super Ljava/lang/Object;
.source "BrightestFlashlightMain.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;
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
	iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$2;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 1723
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
	.locals 3
	.param p1, "success"	# Z
	.param p2, "camera"	# Landroid/hardware/Camera;

	.prologue
	.line 1728
	:try_start_0
	sget-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFBlinkMode:Z

	if-eqz v1, :cond_0

	.line 1729
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$2;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mAutofocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
	invoke-static {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$1(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera$AutoFocusCallback;

	move-result-object v1

	invoke-virtual {p2, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1735
	:cond_0
	:goto_0
	return-void

	.line 1731
	:catch_0
	move-exception v0

	.line 1732
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in onAutoFocus()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1733
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method
