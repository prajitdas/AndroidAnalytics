.class Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$4;
.super Ljava/lang/Object;
.source "BrightestFlashlightMain.java"

# interfaces
.implements Lcom/millennialmedia/location/LocationValet$ILocationValetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$4;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBetterLocationFound(Landroid/app/Activity;Landroid/location/Location;)V
    .locals 4
    .param p1, "mainActivity"    # Landroid/app/Activity;
    .param p2, "userLocation"    # Landroid/location/Location;

    .prologue
    .line 179
    const/4 v2, 0x6

    :try_start_0
    invoke-static {p1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->isEULAAlreadyAccepted(Landroid/app/Activity;I)Z

    move-result v0

    .line 180
    .local v0, "bEulaAccepted":Z
    if-eqz v0, :cond_0

    .line 181
    invoke-static {p2}, Lcom/millennialmedia/android/MMRequest;->setUserLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "bEulaAccepted":Z
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BrightestFlashlightMain"

    const-string v3, "onBetterLocationFound Failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
