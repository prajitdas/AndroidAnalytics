.class Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$6;
.super Ljava/lang/Object;
.source "BrightestFlashlightMain.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setUpVideoWidget()V
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
	iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$6;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 1264
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
	.locals 2
	.param p1, "mp"	# Landroid/media/MediaPlayer;

	.prologue
	.line 1266
	const-string v0, "BrightestFlashlightMain"

	const-string v1, "Received video complete Event in onCompletion()"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 1268
	invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->getIsTimeToTerminate()Z

	move-result v0

	if-eqz v0, :cond_0

	.line 1269
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$6;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;
	invoke-static {v0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$5(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/widget/VideoView;

	move-result-object v0

	const/16 v1, 0x8

	invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

	.line 1270
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$6;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# invokes: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->restoreMuteState()V
	invoke-static {v0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$6(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	.line 1271
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$6;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->finish()V

	.line 1276
	:goto_0
	return-void

	.line 1274
	:cond_0
	const-string v0, "BrightestFlashlightMain"

	const-string v1, "Skipped shutdown onCompletion() because Timer was Extended"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	goto :goto_0
.end method
