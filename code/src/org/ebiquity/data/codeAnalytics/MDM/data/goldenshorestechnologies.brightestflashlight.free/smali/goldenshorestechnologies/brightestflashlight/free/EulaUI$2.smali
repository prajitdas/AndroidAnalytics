.class Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$2;
.super Ljava/lang/Object;
.source "EULAUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->DisplayEulaDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;ILcom/millennialmedia/location/LocationValet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    # invokes: Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->WritePreferences(Z)V
    invoke-static {v0}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->access$0(Z)V

    .line 103
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mActivityMainApp:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 104
    return-void
.end method
