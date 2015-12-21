.class Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;
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


# instance fields
.field private final synthetic val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

.field private final synthetic val$iVersion:I

.field private final synthetic val$locationValet:Lcom/millennialmedia/location/LocationValet;


# direct methods
.method constructor <init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;ILcom/millennialmedia/location/LocationValet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    iput p2, p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;->val$iVersion:I

    iput-object p3, p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;->val$locationValet:Lcom/millennialmedia/location/LocationValet;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 76
    sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mbUserAcceptedTerms:Z

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 80
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "strLanguageCode":Ljava/lang/String;
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 82
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "countryCode":Ljava/lang/String;
    const-string v4, "en"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "us"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    :cond_0
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    iget v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;->val$iVersion:I

    iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;->val$locationValet:Lcom/millennialmedia/location/LocationValet;

    invoke-static {v4, v5, v6}, Lgoldenshorestechnologies/brightestflashlight/free/GeoLocationUI;->DisplayGeoLocationDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;ILcom/millennialmedia/location/LocationValet;)Z

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    # invokes: Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->WritePreferences(Z)V
    invoke-static {v6}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->access$0(Z)V

    .line 89
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v4}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setUpAndShowAds()V

    .line 91
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    iget-object v4, v4, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

    if-eqz v4, :cond_1

    .line 92
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    iget-object v4, v4, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

    invoke-virtual {v4}, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;->onResume()V

    goto :goto_0
.end method
