.class Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$1;
.super Ljava/lang/Object;
.source "BrightestFlashlightMain.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


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
    iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$1;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 1710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1713
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$1;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    # getter for: Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->access$0(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1718
    :cond_0
    return-void
.end method
