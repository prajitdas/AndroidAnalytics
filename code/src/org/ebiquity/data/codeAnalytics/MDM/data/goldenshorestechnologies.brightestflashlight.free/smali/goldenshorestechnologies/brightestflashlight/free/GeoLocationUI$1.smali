.class Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI$1;
.super Ljava/lang/Object;
.source "GeoLocationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI;->DisplayGeoLocationDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;ILcom/millennialmedia/location/LocationValet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

.field private final synthetic val$locationValet:Lcom/millennialmedia/location/LocationValet;


# direct methods
.method constructor <init>(Lcom/millennialmedia/location/LocationValet;Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI$1;->val$locationValet:Lcom/millennialmedia/location/LocationValet;

    iput-object p2, p0, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 74
    sput-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI;->mbUserAcceptedTerms:Z

    .line 75
    # invokes: Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI;->WritePreferences(Z)V
    invoke-static {v1}, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI;->access$0(Z)V

    .line 76
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI$1;->val$locationValet:Lcom/millennialmedia/location/LocationValet;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI$1;->val$locationValet:Lcom/millennialmedia/location/LocationValet;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/location/LocationValet;->startAquire(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 81
    :cond_0
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setUpAndShowAds()V

    .line 83
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    iget-object v0, v0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    iget-object v0, v0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

    invoke-virtual {v0}, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;->onResume()V

    .line 85
    :cond_1
    return-void
.end method
