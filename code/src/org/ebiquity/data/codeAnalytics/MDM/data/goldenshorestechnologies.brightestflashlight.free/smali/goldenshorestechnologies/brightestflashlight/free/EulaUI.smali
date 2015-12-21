.class Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;
.super Ljava/lang/Object;
.source "EULAUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EulaUI"

.field static mActivityMainApp:Landroid/app/Activity;

.field static mDialog:Landroid/app/AlertDialog;

.field static mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field static mbUserAcceptedTerms:Z

.field static miVersion:I

.field static strEULATextFilename:Ljava/lang/String;

.field static strKeyName:Ljava/lang/String;

.field static strValueName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mbUserAcceptedTerms:Z

    .line 33
    const-string v0, "EulaAcceptanceVersion"

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->strKeyName:Ljava/lang/String;

    .line 34
    const-string v0, "EulaAccepted"

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->strValueName:Ljava/lang/String;

    .line 35
    const-string v0, "EULAText"

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->strEULATextFilename:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DisplayEulaDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;ILcom/millennialmedia/location/LocationValet;)Z
    .locals 11
    .param p0, "activityMainApp"    # Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;
    .param p1, "iVersion"    # I
    .param p2, "locationValet"    # Lcom/millennialmedia/location/LocationValet;

    .prologue
    const/4 v7, 0x0

    .line 43
    sput p1, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->miVersion:I

    .line 44
    sput-object p0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mActivityMainApp:Landroid/app/Activity;

    .line 48
    sget-boolean v8, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->DEBUGFORCESHOWEULA:Z

    if-eqz v8, :cond_0

    .line 49
    invoke-static {v7}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->WritePreferences(Z)V

    .line 58
    :cond_0
    invoke-static {p0, p1}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->isEULAAlreadyAccepted(Landroid/app/Activity;I)Z

    move-result v0

    .line 59
    .local v0, "bAlreadyAccepted":Z
    sput-boolean v0, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mbUserAcceptedTerms:Z

    .line 62
    if-nez v0, :cond_1

    .line 63
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v8, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 67
    .local v3, "res":Landroid/content/res/Resources;
    const v8, 0x7f070006

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "strDialogTitle":Ljava/lang/String;
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 73
    const v8, 0x7f070007

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "strAcceptButton":Ljava/lang/String;
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;

    invoke-direct {v9, p0, p1, p2}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$1;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;ILcom/millennialmedia/location/LocationValet;)V

    invoke-virtual {v8, v4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    const v8, 0x7f070008

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "strRefuseButton":Ljava/lang/String;
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$2;

    invoke-direct {v9}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$2;-><init>()V

    invoke-virtual {v8, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$3;

    invoke-direct {v9}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI$3;-><init>()V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->strEULATextFilename:Ljava/lang/String;

    sget-object v9, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mActivityMainApp:Landroid/app/Activity;

    invoke-static {v8, v9}, Lgoldenshorestechnologies/brightestflashlight/free/LocalizedFileReader;->LoadLocalizedFile(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 117
    .local v1, "charSeq":Ljava/lang/CharSequence;
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 122
    :try_start_0
    sget-object v8, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    sput-object v8, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "charSeq":Ljava/lang/CharSequence;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "strAcceptButton":Ljava/lang/String;
    .end local v5    # "strDialogTitle":Ljava/lang/String;
    .end local v6    # "strRefuseButton":Ljava/lang/String;
    :goto_0
    return v7

    .line 124
    .restart local v1    # "charSeq":Ljava/lang/CharSequence;
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "strAcceptButton":Ljava/lang/String;
    .restart local v5    # "strDialogTitle":Ljava/lang/String;
    .restart local v6    # "strRefuseButton":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "EulaUI"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Dialog create/show failed.  Exception data: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v1    # "charSeq":Ljava/lang/CharSequence;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "strAcceptButton":Ljava/lang/String;
    .end local v5    # "strDialogTitle":Ljava/lang/String;
    .end local v6    # "strRefuseButton":Ljava/lang/String;
    :cond_1
    sget-boolean v7, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mbUserAcceptedTerms:Z

    goto :goto_0
.end method

.method private static WritePreferences(Z)V
    .locals 5
    .param p0, "bAccepted"    # Z

    .prologue
    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->strKeyName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->miVersion:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "strEulaVerKey":Ljava/lang/String;
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->mActivityMainApp:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->strValueName:Ljava/lang/String;

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 149
    invoke-static {p0}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->WritePreferences(Z)V

    return-void
.end method

.method static isEULAAlreadyAccepted(Landroid/app/Activity;I)Z
    .locals 6
    .param p0, "activityMainApp"    # Landroid/app/Activity;
    .param p1, "iVersion"    # I

    .prologue
    const/4 v5, 0x0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->strKeyName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "strEulaVerKey":Ljava/lang/String;
    invoke-virtual {p0, v2, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    .local v1, "preferences":Landroid/content/SharedPreferences;
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->strValueName:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    .local v0, "bAlreadyAccepted":Z
    return v0
.end method
