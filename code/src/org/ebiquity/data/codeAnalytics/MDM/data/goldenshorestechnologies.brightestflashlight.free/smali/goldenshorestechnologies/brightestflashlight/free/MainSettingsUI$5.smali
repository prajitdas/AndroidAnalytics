.class Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$5;
.super Ljava/lang/Object;
.source "MainSettingsUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setDialogTimer()V
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
    iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$5;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 513
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$5;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->fadeSolidToTransparent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainSettingsUI"

    const-string v2, "run() Runnable Timer ObjectFailed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
