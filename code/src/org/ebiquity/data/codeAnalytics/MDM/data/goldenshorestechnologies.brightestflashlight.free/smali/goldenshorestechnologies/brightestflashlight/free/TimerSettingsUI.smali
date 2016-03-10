.class public Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;
.super Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;
.source "TimerSettingsUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$TimerSettingsUI$HitTest:[I = null

.field private static final TAG:Ljava/lang/String; = "TimerSettingsUI"


# instance fields
.field private mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

.field private mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private final miIconCameraLEDID:I

.field private final miIconOtherLightsID:I

.field private final miIconScreenID:I

.field private final miNeverTimeout:I

.field private final miTenMinuteTimeout:I

.field private final miTwoMinuteTimeout:I


# direct methods
.method static synthetic $SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$TimerSettingsUI$HitTest()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$TimerSettingsUI$HitTest:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->values()[Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->NEVER:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->TENMINUTES:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->TWOMINUTES:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$TimerSettingsUI$HitTest:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 23
    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 24
    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->miIconCameraLEDID:I

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->miIconScreenID:I

    .line 29
    const/4 v0, 0x7

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->miIconOtherLightsID:I

    .line 32
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    .line 39
    const v0, 0x1c138

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->miTwoMinuteTimeout:I

    .line 40
    const v0, 0x91438

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->miTenMinuteTimeout:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->miNeverTimeout:I

    .line 48
    return-void
.end method

.method private neverRadioButtonTapped()V
    .locals 6

    .prologue
    .line 546
    :try_start_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getChecked()Z

    move-result v0

    .line 547
    .local v0, "bChecked":Z
    if-nez v0, :cond_0

    .line 548
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->uncheckAllRadioButtons()V

    .line 549
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V

    .line 550
    const-wide/16 v2, -0x1

    sput-wide v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iAutoShutdownTimeout:J

    .line 551
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

    .line 552
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const-string v3, "Settings_Timer"

    const-string v4, "Shutdown_Timeout"

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceInt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v0    # "bChecked":Z
    :cond_0
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TimerSettingsUI"

    const-string v3, "Exception in otherLightsCheckboxTapped()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private receivedUpWhileSelected(Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;)V
    .locals 5
    .param p1, "item"    # Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    .prologue
    .line 409
    :try_start_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 410
    .local v2, "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    .line 412
    .local v1, "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->deselectAll()V

    .line 414
    invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$TimerSettingsUI$HitTest()[I

    move-result-object v3

    invoke-virtual {p1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 447
    .end local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    .end local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :cond_0
    :goto_0
    return-void

    .line 416
    .restart local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    .restart local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :pswitch_0
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->TWOMINUTES:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    if-ne v1, v3, :cond_0

    .line 417
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->twoMinuteRadioButtonTapped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    .end local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    .end local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TimerSettingsUI"

    const-string v4, "Exception in receivedUpWhileSelected()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    .restart local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :pswitch_1
    :try_start_1
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->TENMINUTES:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    if-ne v1, v3, :cond_0

    .line 423
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->tenMinuteRadioButtonTapped()V

    goto :goto_0

    .line 428
    :pswitch_2
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->NEVER:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    if-ne v1, v3, :cond_0

    .line 429
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->neverRadioButtonTapped()V

    goto :goto_0

    .line 434
    :pswitch_3
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    if-ne v1, v3, :cond_0

    .line 435
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->returnKeyTapped()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private returnKeyTapped()V
    .locals 3

    .prologue
    .line 565
    :try_start_0
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->fadeToInvisible()V

    .line 566
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showSettingsCategoriesDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TimerSettingsUI"

    const-string v2, "Exception in returnKeyTapped()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private tenMinuteRadioButtonTapped()V
    .locals 6

    .prologue
    .line 527
    :try_start_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getChecked()Z

    move-result v0

    .line 528
    .local v0, "bChecked":Z
    if-nez v0, :cond_0

    .line 529
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->uncheckAllRadioButtons()V

    .line 530
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V

    .line 531
    const-wide/32 v2, 0x91438

    sput-wide v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iAutoShutdownTimeout:J

    .line 532
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

    .line 533
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const-string v3, "Settings_Timer"

    const-string v4, "Shutdown_Timeout"

    const v5, 0x91438

    invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceInt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v0    # "bChecked":Z
    :cond_0
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TimerSettingsUI"

    const-string v3, "Exception in screenCheckboxTapped()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private twoMinuteRadioButtonTapped()V
    .locals 6

    .prologue
    .line 507
    :try_start_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getChecked()Z

    move-result v0

    .line 508
    .local v0, "bChecked":Z
    if-nez v0, :cond_0

    .line 509
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->uncheckAllRadioButtons()V

    .line 510
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V

    .line 511
    const-wide/32 v2, 0x1c138

    sput-wide v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iAutoShutdownTimeout:J

    .line 512
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

    .line 513
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const-string v3, "Settings_Timer"

    const-string v4, "Shutdown_Timeout"

    const v5, 0x1c138

    invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceInt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v0    # "bChecked":Z
    :cond_0
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TimerSettingsUI"

    const-string v3, "Exception in cameraLEDCheckboxTapped()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private uncheckAllRadioButtons()V
    .locals 3

    .prologue
    .line 493
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V

    .line 494
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V

    .line 495
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TimerSettingsUI"

    const-string v2, "Exception in uncheckAllRadioButtons()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private whichControlHit(II)Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 455
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getRight()I

    move-result v1

    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->iIconMargins:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    .line 456
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getBottom()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 457
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->TWOMINUTES:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    .line 487
    :goto_0
    return-object v1

    .line 462
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getRight()I

    move-result v1

    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->iIconMargins:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_1

    .line 463
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getBottom()I

    move-result v1

    if-gt p2, v1, :cond_1

    .line 464
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->TENMINUTES:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    goto :goto_0

    .line 469
    :cond_1
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getRight()I

    move-result v1

    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->iIconMargins:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    .line 470
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_2

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getBottom()I

    move-result v1

    if-gt p2, v1, :cond_2

    .line 471
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->NEVER:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    goto :goto_0

    .line 476
    :cond_2
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_3

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    if-gt p1, v1, :cond_3

    .line 477
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_3

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    if-gt p2, v1, :cond_3

    .line 478
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TimerSettingsUI"

    const-string v2, "Exception in whichControlHit()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    goto :goto_0
.end method


# virtual methods
.method protected deselectAll()V
    .locals 3

    .prologue
    .line 204
    :try_start_0
    invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->deselectAll()V

    .line 206
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->deselect()V

    .line 207
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->deselect()V

    .line 208
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->deselect()V

    .line 210
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    .line 213
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TimerSettingsUI"

    const-string v2, "Exception in deselectAll()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getTitlebarIconResID()I
    .locals 1

    .prologue
    .line 160
    const v0, 0x7f020015

    return v0
.end method

.method protected getTitlebarTextResID()I
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f070010

    return v0
.end method

.method protected getTopLeftChildControl()Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
    .locals 3

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TimerSettingsUI"

    const-string v2, "Exception in getTopLeftChildControl()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected instantiateChildControls()V
    .locals 10

    .prologue
    .line 57
    :try_start_0
    invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->instantiateChildControls()V

    .line 60
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 61
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const v1, 0x7f020005

    const v2, 0x7f020004

    .line 62
    const v3, 0x7f020005

    const v4, 0x7f020004

    .line 63
    const v5, 0x7f070011

    sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

    iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 61
    invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    .line 66
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 67
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const v1, 0x7f020005

    const v2, 0x7f020004

    .line 68
    const v3, 0x7f020005

    const v4, 0x7f020004

    .line 69
    const v5, 0x7f070012

    sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

    iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 67
    invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    .line 72
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 73
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const v1, 0x7f020005

    const v2, 0x7f020004

    .line 74
    const v3, 0x7f020005

    const v4, 0x7f020004

    .line 75
    const v5, 0x7f070013

    sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

    iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 73
    invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    .line 78
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 79
    const-string v1, "Settings_Timer"

    const-string v2, "Shutdown_Timeout"

    const v3, 0x1c138

    .line 78
    invoke-static {v0, v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceIntWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 81
    .local v9, "iDuration":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_0

    .line 82
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V

    .line 97
    .end local v9    # "iDuration":I
    :goto_0
    return-void

    .line 85
    .restart local v9    # "iDuration":I
    :cond_0
    const v0, 0x91438

    if-ne v9, v0, :cond_1

    .line 86
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v9    # "iDuration":I
    :catch_0
    move-exception v8

    .line 94
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "TimerSettingsUI"

    const-string v1, "Exception in instantiateChildControls()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "iDuration":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected layoutChildControls()V
    .locals 6

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->layoutChildControls()V

    .line 108
    const/4 v1, 0x0

    .line 111
    .local v1, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

    .line 116
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 120
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 122
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

    .line 123
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 127
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 129
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

    .line 130
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->afterLayoutChildControls()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TimerSettingsUI"

    const-string v3, "Exception in layoutChildControls()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 337
    :try_start_0
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_SOLID_TO_HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v5, v6, :cond_2

    .line 338
    :cond_0
    const/4 v4, 0x0

    .line 401
    :cond_1
    :goto_0
    return v4

    .line 342
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 343
    .local v1, "fX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 344
    .local v2, "fY":F
    float-to-int v5, v1

    float-to-int v6, v2

    invoke-direct {p0, v5, v6}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->whichControlHit(II)Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    move-result-object v3

    .line 352
    .local v3, "item":Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->killDialogTimer()V

    .line 353
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->setDialogTimer()V

    .line 354
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 357
    const-string v5, "TimerSettingsUI"

    const-string v6, "Received onTouchEvent() ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->deselectAll()V

    .line 361
    invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$TimerSettingsUI$HitTest()[I

    move-result-object v5

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 391
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 392
    const-string v5, "TimerSettingsUI"

    const-string v6, "Received onTouchEvent() ACTION_UP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->receivedUpWhileSelected(Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    .end local v1    # "fX":F
    .end local v2    # "fY":F
    .end local v3    # "item":Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "TimerSettingsUI"

    const-string v6, "onTouchEvent() Failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fX":F
    .restart local v2    # "fY":F
    .restart local v3    # "item":Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;
    :pswitch_0
    :try_start_1
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 364
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->TWOMINUTES:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    .line 365
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->select()V

    goto :goto_1

    .line 369
    :pswitch_1
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 370
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->TENMINUTES:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    .line 371
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->select()V

    goto :goto_1

    .line 375
    :pswitch_2
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 376
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->NEVER:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    .line 377
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->select()V

    goto :goto_1

    .line 381
    :pswitch_3
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 382
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI$HitTest;

    .line 383
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    const v6, 0x7f020012

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public pumpOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->deselectAll()V

    .line 231
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->killDialogTimer()V

    .line 232
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->setDialogTimer()V

    .line 233
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

    .line 235
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 237
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 239
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->returnKeyTapped()V

    .line 328
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-ne p1, v3, :cond_7

    .line 246
    :cond_2
    iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->bInFocusedMode:Z

    if-eqz v3, :cond_7

    .line 247
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->twoMinuteRadioButtonTapped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TimerSettingsUI"

    const-string v3, "Exception in pumpOnKeyDown()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move v1, v2

    .line 328
    goto :goto_0

    .line 250
    :cond_4
    :try_start_1
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 251
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->tenMinuteRadioButtonTapped()V

    goto :goto_0

    .line 253
    :cond_5
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 254
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->neverRadioButtonTapped()V

    goto :goto_0

    .line 256
    :cond_6
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->getReturnFocusState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->returnKeyTapped()V

    goto :goto_0

    .line 265
    :cond_7
    const/16 v3, 0x14

    if-ne p1, v3, :cond_c

    .line 267
    iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->bInFocusedMode:Z

    if-nez v3, :cond_8

    .line 268
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->bInFocusedMode:Z

    .line 269
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto :goto_0

    .line 273
    :cond_8
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 274
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 275
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto :goto_0

    .line 277
    :cond_9
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 278
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 279
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto/16 :goto_0

    .line 281
    :cond_a
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 282
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 283
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->setReturnFocused(Z)V

    goto/16 :goto_0

    .line 285
    :cond_b
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->getReturnFocusState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->setReturnFocused(Z)V

    .line 287
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto/16 :goto_0

    .line 294
    :cond_c
    const/16 v3, 0x13

    if-ne p1, v3, :cond_3

    .line 296
    iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->bInFocusedMode:Z

    if-nez v3, :cond_d

    .line 297
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->bInFocusedMode:Z

    .line 298
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->setReturnFocused(Z)V

    goto/16 :goto_0

    .line 302
    :cond_d
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 303
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 304
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->setReturnFocused(Z)V

    goto/16 :goto_0

    .line 306
    :cond_e
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 307
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 308
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto/16 :goto_0

    .line 310
    :cond_f
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 311
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 312
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto/16 :goto_0

    .line 314
    :cond_10
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->getReturnFocusState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->setReturnFocused(Z)V

    .line 316
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setControlsTextSize(F)V
    .locals 3
    .param p1, "fNewSize"    # F

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTwoMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V

    .line 188
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mTenMinuteRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V

    .line 189
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mNeverRadioButton:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TimerSettingsUI"

    const-string v2, "Exception in setControlTextSize()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
