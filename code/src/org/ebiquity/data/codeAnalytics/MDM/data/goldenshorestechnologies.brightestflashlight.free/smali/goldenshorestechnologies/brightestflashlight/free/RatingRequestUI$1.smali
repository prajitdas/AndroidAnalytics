.class Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$1;
.super Ljava/lang/Object;
.source "RatingRequestUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->DisplayRatingRequestDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;


# direct methods
.method constructor <init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 160
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const-string v2, "RatingRequestData"

    const-string v3, "DidUserClickYes"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDUserClickedRateRequestYesButton:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mActivityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    .local v0, "marketIntent":Landroid/content/Intent;
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mActivityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v1, v0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->startActivity(Landroid/content/Intent;)V

    .line 166
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mActivityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->finish()V

    .line 167
    return-void
.end method
