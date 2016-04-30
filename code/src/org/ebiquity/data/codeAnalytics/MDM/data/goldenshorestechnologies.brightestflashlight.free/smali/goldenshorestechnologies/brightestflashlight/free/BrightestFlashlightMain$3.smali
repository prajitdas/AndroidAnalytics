.class Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;
.super Ljava/lang/Object;
.source "BrightestFlashlightMain.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
	iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 1760
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
	.locals 11
	.param p1, "holder"	# Landroid/view/SurfaceHolder;
	.param p2, "format"	# I
	.param p3, "width"	# I
	.param p4, "height"	# I

	.prologue
	.line 1775
	:try_start_0
	iget-object v8, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;
	invoke-static {v8}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$0(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera;

	move-result-object v8

	if-eqz v8, :cond_1

	.line 1776
	sget-boolean v8, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingTorchNoPrevResize:Z

	if-nez v8, :cond_0

	.line 1777
	iget-object v8, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;
	invoke-static {v8}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$0(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera;

	move-result-object v8

	invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v6

	.line 1778
	.local v6, "parameters":Landroid/hardware/Camera$Parameters;
	invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

	move-result-object v5

	.line 1779
	.local v5, "listSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
	const v2, 0x7fffffff

	.line 1780
	.local v2, "iSmallestArea":I
	const/4 v4, 0x1

	.line 1781
	.local v4, "iSmallestWidth":I
	const/4 v3, 0x1

	.line 1782
	.local v3, "iSmallestHeight":I
	const/4 v1, 0x0

	.local v1, "i":I
	:goto_0
	invoke-interface {v5}, Ljava/util/List;->size()I

	move-result v8

	if-lt v1, v8, :cond_2

	.line 1792
	invoke-virtual {v6, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

	.line 1793
	iget-object v8, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;
	invoke-static {v8}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$0(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera;

	move-result-object v8

	invoke-virtual {v8, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 1795
	.end local v1	# "i":I
	.end local v2	# "iSmallestArea":I
	.end local v3	# "iSmallestHeight":I
	.end local v4	# "iSmallestWidth":I
	.end local v5	# "listSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
	.end local v6	# "parameters":Landroid/hardware/Camera$Parameters;
	:cond_0
	iget-object v8, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;
	invoke-static {v8}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$0(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera;

	move-result-object v8

	invoke-virtual {v8}, Landroid/hardware/Camera;->startPreview()V

	.line 1796
	const/4 v8, 0x1

	sput-boolean v8, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bCameraPreviewRunning:Z

	.line 1803
	:cond_1
	:goto_1
	return-void

	.line 1783
	.restart local v1	# "i":I
	.restart local v2	# "iSmallestArea":I
	.restart local v3	# "iSmallestHeight":I
	.restart local v4	# "iSmallestWidth":I
	.restart local v5	# "listSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
	.restart local v6	# "parameters":Landroid/hardware/Camera$Parameters;
	:cond_2
	invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

	move-result-object v7

	check-cast v7, Landroid/hardware/Camera$Size;

	.line 1784
	.local v7, "size":Landroid/hardware/Camera$Size;
	iget v8, v7, Landroid/hardware/Camera$Size;->width:I

	iget v9, v7, Landroid/hardware/Camera$Size;->height:I

	mul-int/2addr v8, v9

	if-ge v8, v2, :cond_3

	.line 1786
	iget v4, v7, Landroid/hardware/Camera$Size;->width:I

	.line 1787
	iget v3, v7, Landroid/hardware/Camera$Size;->height:I

	.line 1788
	iget v8, v7, Landroid/hardware/Camera$Size;->width:I

	iget v9, v7, Landroid/hardware/Camera$Size;->height:I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	mul-int v2, v8, v9

	.line 1782
	:cond_3
	add-int/lit8 v1, v1, 0x1

	goto :goto_0

	.line 1798
	.end local v1	# "i":I
	.end local v2	# "iSmallestArea":I
	.end local v3	# "iSmallestHeight":I
	.end local v4	# "iSmallestWidth":I
	.end local v5	# "listSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
	.end local v6	# "parameters":Landroid/hardware/Camera$Parameters;
	.end local v7	# "size":Landroid/hardware/Camera$Size;
	:catch_0
	move-exception v0

	.line 1799
	.local v0, "e":Ljava/lang/Exception;
	const-string v8, "BrightestFlashlightMain"

	const-string v9, "SurfaceHolder::surfaceChanged() Failed"

	invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1800
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1801
	iget-object v8, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	sget-object v9, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSurfaceChangedFailed:Ljava/lang/String;

	const/4 v10, 0x0

	invoke-virtual {v8, v9, v10}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
	.locals 4
	.param p1, "holder"	# Landroid/view/SurfaceHolder;

	.prologue
	.line 1763
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;
	invoke-static {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$0(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera;

	move-result-object v1

	if-eqz v1, :cond_0

	.line 1764
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;
	invoke-static {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$0(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera;

	move-result-object v1

	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreviewHolder:Landroid/view/SurfaceHolder;
	invoke-static {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$2(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/view/SurfaceHolder;

	move-result-object v2

	invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1771
	:cond_0
	:goto_0
	return-void

	.line 1766
	:catch_0
	move-exception v0

	.line 1767
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in setPreviewDisplay()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1768
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1769
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSurfaceCreatedFailed:Ljava/lang/String;

	const/4 v3, 0x0

	invoke-virtual {v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
	.locals 4
	.param p1, "holder"	# Landroid/view/SurfaceHolder;

	.prologue
	.line 1807
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	# getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;
	invoke-static {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$0(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera;

	move-result-object v2

	# invokes: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->stopCameraPreview(Landroid/hardware/Camera;)V
	invoke-static {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$3(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;Landroid/hardware/Camera;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1813
	:goto_0
	return-void

	.line 1808
	:catch_0
	move-exception v0

	.line 1809
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "SurfaceHolder::surfaceDestroyed() Failed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1810
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1811
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSurfaceDestroyedFailed:Ljava/lang/String;

	const/4 v3, 0x0

	invoke-virtual {v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method
