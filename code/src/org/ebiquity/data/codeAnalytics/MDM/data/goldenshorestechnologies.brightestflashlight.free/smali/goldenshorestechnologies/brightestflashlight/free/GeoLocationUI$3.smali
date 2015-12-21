.class Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI$3;
.super Ljava/lang/Object;
.source "GeoLocationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI;->DisplayGeoLocationDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;ILcom/millennialmedia/location/LocationValet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 100
    const/4 v0, 0x0

    # invokes: Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI;->WritePreferences(Z)V
    invoke-static {v0}, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI;->access$0(Z)V

    .line 101
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI;->mActivityMainApp:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 102
    return-void
.end method
