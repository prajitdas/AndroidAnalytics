.class Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$1;
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
    iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$1;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$1;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;

    iget-object v1, v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_HIDDEN_TO_SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v1, v2, :cond_0

    .line 304
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$1;->this$0:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;

    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v2, v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDialog"

    const-string v2, "animListenerHiddenToSolid.onAnimationEnd() Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 313
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 316
    return-void
.end method
