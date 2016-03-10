.class Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;
.super Ljava/lang/Object;
.source "RatingRequestUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RatingRequestUI"

.field static mActivityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain; = null

.field static mDialog:Landroid/app/AlertDialog; = null

.field static mDialogBuilder:Landroid/app/AlertDialog$Builder; = null

.field static final mStrClickedLaterValueName:Ljava/lang/String; = "DidUserClickLater"

.field static final mStrClickedNeverValueName:Ljava/lang/String; = "DidUserClickNever"

.field static final mStrClickedYesValueName:Ljava/lang/String; = "DidUserClickYes"

.field static final mStrKeyName:Ljava/lang/String; = "RatingRequestData"

.field static final mStrLaterCountValueName:Ljava/lang/String; = "SessionCountSinceClickedLater"

.field static final mStrSessionCountValueName:Ljava/lang/String; = "SessionCount"

.field static final mStrSkippedManufacturer:Ljava/lang/String; = "Commtiva"

.field static final miInitialNumberSessionsBeforeShow:I = 0xa


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DisplayRatingRequestDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
    .locals 11
    .param p0, "activityMainApp"    # Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .prologue
    .line 134
    :try_start_0
    sput-object p0, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mActivityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 137
    invoke-static {p0}, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->bIsTimeToDisplay(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Z

    move-result v0

    .line 141
    .local v0, "bDisplayNow":Z
    sget-boolean v8, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->DEBUGFORCESHOWRATINGREQUEST:Z

    if-eqz v8, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 145
    :cond_0
    if-eqz v0, :cond_1

    .line 146
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 150
    .local v2, "res":Landroid/content/res/Resources;
    const v8, 0x7f070001

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "strDialogTitle":Ljava/lang/String;
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 153
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f020002

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 156
    const v8, 0x7f070003

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "strYesButton":Ljava/lang/String;
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$1;

    invoke-direct {v9, p0}, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$1;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    invoke-virtual {v8, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    const v8, 0x7f070004

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "strNoButton":Ljava/lang/String;
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$2;

    invoke-direct {v9, p0}, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$2;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    invoke-virtual {v8, v6, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    const v8, 0x7f070005

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "strNeverShowAgainButton":Ljava/lang/String;
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$3;

    invoke-direct {v9, p0}, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$3;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    invoke-virtual {v8, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$4;

    invoke-direct {v9}, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$4;-><init>()V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    const v8, 0x7f070002

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "strDialogText":Ljava/lang/String;
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :try_start_1
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    sput-object v8, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialog:Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    :goto_0
    :try_start_2
    const-string v8, "RatingRequestUI"

    const-string v9, "Displayed Rating Request Dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0    # "bDisplayNow":Z
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "strDialogText":Ljava/lang/String;
    .end local v4    # "strDialogTitle":Ljava/lang/String;
    .end local v5    # "strNeverShowAgainButton":Ljava/lang/String;
    .end local v6    # "strNoButton":Ljava/lang/String;
    .end local v7    # "strYesButton":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 211
    .restart local v0    # "bDisplayNow":Z
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "strDialogText":Ljava/lang/String;
    .restart local v4    # "strDialogTitle":Ljava/lang/String;
    .restart local v5    # "strNeverShowAgainButton":Ljava/lang/String;
    .restart local v6    # "strNoButton":Ljava/lang/String;
    .restart local v7    # "strYesButton":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "RatingRequestUI"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Dialog create/show failed.  Exception data: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 218
    .end local v0    # "bDisplayNow":Z
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "strDialogText":Ljava/lang/String;
    .end local v4    # "strDialogTitle":Ljava/lang/String;
    .end local v5    # "strNeverShowAgainButton":Ljava/lang/String;
    .end local v6    # "strNoButton":Ljava/lang/String;
    .end local v7    # "strYesButton":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 219
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "RatingRequestUI"

    const-string v9, "DisplayRatingRequestDialog() Failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static ReadPreferenceSessionCount(Landroid/app/Activity;)I
    .locals 6
    .param p0, "activityMain"    # Landroid/app/Activity;

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 232
    .local v1, "iSessionCount":I
    :try_start_0
    const-string v3, "RatingRequestData"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 233
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "SessionCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 234
    const-string v3, "RatingRequestUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Read Session Count = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "RatingRequestUI"

    const-string v4, "ReadPreferenceSessionCount() Failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static WritePreferenceSessionCount(Landroid/app/Activity;I)V
    .locals 6
    .param p0, "activityMain"    # Landroid/app/Activity;
    .param p1, "iNewCount"    # I

    .prologue
    .line 247
    :try_start_0
    const-string v3, "RatingRequestData"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 248
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 249
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SessionCount"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    const-string v3, "RatingRequestUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wrote Session Count = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "RatingRequestUI"

    const-string v4, "WritePreferenceSessionCount() Failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static bIsTimeToDisplay(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Z
    .locals 15
    .param p0, "activityMainApp"    # Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0xa

    const/4 v11, 0x0

    .line 43
    const/4 v3, 0x0

    .line 46
    .local v3, "bIsTime":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 47
    .local v6, "locale":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "strLanguageCode":Ljava/lang/String;
    const-string v12, "en"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "es"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 49
    const-string v12, "ko"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "ja"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v11

    .line 54
    :cond_1
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 55
    .local v9, "strManufacturer":Ljava/lang/String;
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 56
    .local v10, "strModel":Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 57
    .local v7, "strCarrier":Ljava/lang/String;
    const-string v12, "HUAWEI"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 58
    const-string v12, "U8180"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 62
    :cond_2
    const-string v12, "KYOCERA"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 64
    const-string v12, "M9300"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 68
    :cond_3
    const-string v12, "Samsung"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 69
    const-string v12, "SCH-I500"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 71
    const-string v12, "cs"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 76
    :cond_4
    const-string v12, "Sony Ericsson"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 77
    const-string v12, "X8"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 86
    :cond_5
    invoke-static {p0}, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->ReadPreferenceSessionCount(Landroid/app/Activity;)I

    move-result v4

    .line 87
    .local v4, "iNumSessionsToDate":I
    add-int/lit8 v4, v4, 0x1

    .line 88
    invoke-static {p0, v4}, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->WritePreferenceSessionCount(Landroid/app/Activity;I)V

    .line 91
    if-lt v4, v13, :cond_6

    .line 92
    const-string v11, "Commtiva"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_6

    .line 93
    const-string v11, "RatingRequestData"

    const-string v12, "DidUserClickNever"

    invoke-static {p0, v11, v12}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 94
    .local v1, "bAlreadyClickedNever":Z
    const-string v11, "RatingRequestData"

    const-string v12, "DidUserClickYes"

    invoke-static {p0, v11, v12}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 99
    .local v2, "bAlreadyClickedYes":Z
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    .line 100
    const-string v11, "RatingRequestData"

    const-string v12, "DidUserClickLater"

    invoke-static {p0, v11, v12}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 101
    .local v0, "bAlreadyClickedLater":Z
    const-string v11, "RatingRequestData"

    const-string v12, "SessionCountSinceClickedLater"

    invoke-static {p0, v11, v12}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceInt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 107
    .local v5, "iSessionCountAfterClickedLater":I
    if-eqz v0, :cond_8

    .line 108
    if-lt v5, v13, :cond_7

    .line 109
    const/4 v3, 0x1

    .line 110
    sget-object v11, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDShowingRateRequestDialogAfterPostpone:Ljava/lang/String;

    invoke-virtual {p0, v11, v14}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

    .end local v0    # "bAlreadyClickedLater":Z
    .end local v1    # "bAlreadyClickedNever":Z
    .end local v2    # "bAlreadyClickedYes":Z
    .end local v5    # "iSessionCountAfterClickedLater":I
    :cond_6
    :goto_1
    move v11, v3

    .line 125
    goto/16 :goto_0

    .line 113
    .restart local v0    # "bAlreadyClickedLater":Z
    .restart local v1    # "bAlreadyClickedNever":Z
    .restart local v2    # "bAlreadyClickedYes":Z
    .restart local v5    # "iSessionCountAfterClickedLater":I
    :cond_7
    const-string v11, "RatingRequestData"

    const-string v12, "SessionCountSinceClickedLater"

    add-int/lit8 v13, v5, 0x1

    invoke-static {p0, v11, v12, v13}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceInt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 118
    :cond_8
    const/4 v3, 0x1

    .line 119
    sget-object v11, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDShowingRateRequestDialogForFirstTime:Ljava/lang/String;

    invoke-virtual {p0, v11, v14}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method
