.class Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$3;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->setDialogTimer()V
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
	iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;

	.line 345
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 3

	.prologue
	.line 349
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->deselectAll()V

	.line 350
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->fadeToInvisible()V

	.line 351
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;

	iget-object v1, v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showMainSettingsDialog()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 356
	:goto_0
	return-void

	.line 352
	:catch_0
	move-exception v0

	.line 353
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "CustomDialog"

	const-string v2, "run() Runnable Timer ObjectFailed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 354
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method
