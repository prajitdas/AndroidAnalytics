.class public Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;
.super Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;
.source "SettingsCategoriesUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SettingsCategoriesUI$HitTest:[I = null

.field private static final TAG:Ljava/lang/String; = "SettingsCategoriesUI"


# instance fields
.field private mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

.field private mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private final miDisplayID:I

.field private final miSoundControlID:I

.field private final miTimerID:I


# direct methods
.method static synthetic $SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SettingsCategoriesUI$HitTest()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SettingsCategoriesUI$HitTest:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->values()[Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->DISPLAY:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->SOUND:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->TIMER:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SettingsCategoriesUI$HitTest:[I

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

    .line 40
    invoke-direct {p0, p1}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 23
    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 24
    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 27
    const/16 v0, 0x195

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->miSoundControlID:I

    .line 28
    const/16 v0, 0x196

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->miTimerID:I

    .line 29
    const/16 v0, 0x197

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->miDisplayID:I

    .line 32
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    .line 41
    return-void
.end method

.method private displayControlTapped()V
    .locals 3

    .prologue
    .line 500
    :try_start_0
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->fadeToInvisible()V

    .line 501
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showDisplaySettingsDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsCategoriesUI"

    const-string v2, "Exception in otherLightsCheckboxTapped()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private receivedUpWhileSelected(Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;)V
    .locals 5
    .param p1, "item"    # Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    .prologue
    .line 385
    :try_start_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 386
    .local v2, "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    .line 388
    .local v1, "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->deselectAll()V

    .line 390
    invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SettingsCategoriesUI$HitTest()[I

    move-result-object v3

    invoke-virtual {p1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 423
    .end local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    .end local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :cond_0
    :goto_0
    return-void

    .line 392
    .restart local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    .restart local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :pswitch_0
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->SOUND:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    if-ne v1, v3, :cond_0

    .line 393
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->soundControlTapped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    .end local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SettingsCategoriesUI"

    const-string v4, "Exception in receivedUpWhileSelected()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    .restart local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :pswitch_1
    :try_start_1
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->TIMER:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    if-ne v1, v3, :cond_0

    .line 399
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->timerControlTapped()V

    goto :goto_0

    .line 404
    :pswitch_2
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->DISPLAY:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    if-ne v1, v3, :cond_0

    .line 405
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->displayControlTapped()V

    goto :goto_0

    .line 410
    :pswitch_3
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    if-ne v1, v3, :cond_0

    .line 411
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->returnKeyTapped()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 390
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
    .line 513
    :try_start_0
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->fadeToInvisible()V

    .line 514
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showMainSettingsDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsCategoriesUI"

    const-string v2, "Exception in returnKeyTapped()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private soundControlTapped()V
    .locals 3

    .prologue
    .line 472
    :try_start_0
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->fadeToInvisible()V

    .line 473
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showSoundSettingsDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsCategoriesUI"

    const-string v2, "Exception in cameraLEDCheckboxTapped()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private timerControlTapped()V
    .locals 3

    .prologue
    .line 486
    :try_start_0
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->fadeToInvisible()V

    .line 487
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showTimerSettingsDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsCategoriesUI"

    const-string v2, "Exception in screenCheckboxTapped()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private whichControlHit(II)Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 431
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getRight()I

    move-result v1

    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->iIconMargins:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    .line 432
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getBottom()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 433
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->SOUND:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    .line 463
    :goto_0
    return-object v1

    .line 438
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getRight()I

    move-result v1

    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->iIconMargins:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_1

    .line 439
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getBottom()I

    move-result v1

    if-gt p2, v1, :cond_1

    .line 440
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->TIMER:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    goto :goto_0

    .line 445
    :cond_1
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getRight()I

    move-result v1

    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->iIconMargins:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    .line 446
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_2

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getBottom()I

    move-result v1

    if-gt p2, v1, :cond_2

    .line 447
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->DISPLAY:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    goto :goto_0

    .line 452
    :cond_2
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_3

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    if-gt p1, v1, :cond_3

    .line 453
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_3

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    if-gt p2, v1, :cond_3

    .line 454
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsCategoriesUI"

    const-string v2, "Exception in whichControlHit()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    goto :goto_0
.end method


# virtual methods
.method protected deselectAll()V
    .locals 3

    .prologue
    .line 181
    :try_start_0
    invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->deselectAll()V

    .line 183
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->deselect()V

    .line 184
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->deselect()V

    .line 185
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->deselect()V

    .line 187
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mViewReturnIcon:Landroid/widget/ImageView;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    .line 190
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsCategoriesUI"

    const-string v2, "Exception in deselectAll()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getTitlebarIconResID()I
    .locals 1

    .prologue
    .line 137
    const v0, 0x7f020009

    return v0
.end method

.method protected getTitlebarTextResID()I
    .locals 1

    .prologue
    .line 149
    const v0, 0x7f070009

    return v0
.end method

.method protected getTopLeftChildControl()Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
    .locals 3

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsCategoriesUI"

    const-string v2, "Exception in getTopLeftChildControl()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected instantiateChildControls()V
    .locals 9

    .prologue
    .line 50
    :try_start_0
    invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->instantiateChildControls()V

    .line 53
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 54
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const v1, 0x7f020014

    const v2, 0x7f020014

    .line 55
    const v3, 0x7f020014

    const v4, 0x7f020014

    .line 56
    const v5, 0x7f07000a

    sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

    iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 54
    invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    .line 59
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 60
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const v1, 0x7f020016

    const v2, 0x7f020016

    .line 61
    const v3, 0x7f020016

    const v4, 0x7f020016

    .line 62
    const v5, 0x7f07000b

    sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

    iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 60
    invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    .line 65
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 66
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const v1, 0x7f020008

    const v2, 0x7f020008

    .line 67
    const v3, 0x7f020008

    const v4, 0x7f020008

    .line 68
    const v5, 0x7f07000c

    sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

    iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 66
    invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v8

    .line 71
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "SettingsCategoriesUI"

    const-string v1, "Exception in instantiateChildControls()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected layoutChildControls()V
    .locals 6

    .prologue
    .line 83
    :try_start_0
    invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->layoutChildControls()V

    .line 85
    const/4 v1, 0x0

    .line 88
    .local v1, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 90
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/16 v3, 0x197

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

    .line 93
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/16 v3, 0x196

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

    .line 100
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 104
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/16 v3, 0x195

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

    .line 107
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->afterLayoutChildControls()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingsCategoriesUI"

    const-string v3, "Exception in layoutChildControls()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 314
    :try_start_0
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_SOLID_TO_HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v5, v6, :cond_2

    .line 315
    :cond_0
    const/4 v4, 0x0

    .line 377
    :cond_1
    :goto_0
    return v4

    .line 319
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 320
    .local v1, "fX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 321
    .local v2, "fY":F
    float-to-int v5, v1

    float-to-int v6, v2

    invoke-direct {p0, v5, v6}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->whichControlHit(II)Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    move-result-object v3

    .line 329
    .local v3, "item":Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->killDialogTimer()V

    .line 330
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->setDialogTimer()V

    .line 331
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 334
    const-string v5, "SettingsCategoriesUI"

    const-string v6, "Received onTouchEvent() ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->deselectAll()V

    .line 338
    invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SettingsCategoriesUI$HitTest()[I

    move-result-object v5

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 368
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 369
    const-string v5, "SettingsCategoriesUI"

    const-string v6, "Received onTouchEvent() ACTION_UP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->receivedUpWhileSelected(Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    .end local v1    # "fX":F
    .end local v2    # "fY":F
    .end local v3    # "item":Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SettingsCategoriesUI"

    const-string v6, "onTouchEvent() Failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fX":F
    .restart local v2    # "fY":F
    .restart local v3    # "item":Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;
    :pswitch_0
    :try_start_1
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 341
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->SOUND:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    .line 342
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->select()V

    goto :goto_1

    .line 346
    :pswitch_1
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 347
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->TIMER:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    .line 348
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->select()V

    goto :goto_1

    .line 352
    :pswitch_2
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 353
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->DISPLAY:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    .line 354
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->select()V

    goto :goto_1

    .line 358
    :pswitch_3
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 359
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI$HitTest;

    .line 360
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mViewReturnIcon:Landroid/widget/ImageView;

    const v6, 0x7f020012

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 338
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

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->deselectAll()V

    .line 208
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->killDialogTimer()V

    .line 209
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->setDialogTimer()V

    .line 210
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

    .line 212
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 214
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 216
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->returnKeyTapped()V

    .line 305
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-ne p1, v3, :cond_7

    .line 223
    :cond_2
    iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->bInFocusedMode:Z

    if-eqz v3, :cond_7

    .line 224
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 225
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->soundControlTapped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsCategoriesUI"

    const-string v3, "Exception in pumpOnKeyDown()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move v1, v2

    .line 305
    goto :goto_0

    .line 227
    :cond_4
    :try_start_1
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 228
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->timerControlTapped()V

    goto :goto_0

    .line 230
    :cond_5
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 231
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->displayControlTapped()V

    goto :goto_0

    .line 233
    :cond_6
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->getReturnFocusState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->returnKeyTapped()V

    goto :goto_0

    .line 242
    :cond_7
    const/16 v3, 0x14

    if-ne p1, v3, :cond_c

    .line 244
    iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->bInFocusedMode:Z

    if-nez v3, :cond_8

    .line 245
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->bInFocusedMode:Z

    .line 246
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto :goto_0

    .line 250
    :cond_8
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 251
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 252
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto :goto_0

    .line 254
    :cond_9
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 255
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 256
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto/16 :goto_0

    .line 258
    :cond_a
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 259
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 260
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->setReturnFocused(Z)V

    goto/16 :goto_0

    .line 262
    :cond_b
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->getReturnFocusState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->setReturnFocused(Z)V

    .line 264
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto/16 :goto_0

    .line 271
    :cond_c
    const/16 v3, 0x13

    if-ne p1, v3, :cond_3

    .line 273
    iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->bInFocusedMode:Z

    if-nez v3, :cond_d

    .line 274
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->bInFocusedMode:Z

    .line 275
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->setReturnFocused(Z)V

    goto/16 :goto_0

    .line 279
    :cond_d
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 280
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 281
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->setReturnFocused(Z)V

    goto/16 :goto_0

    .line 283
    :cond_e
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 284
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 285
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto/16 :goto_0

    .line 287
    :cond_f
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 288
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 289
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto/16 :goto_0

    .line 291
    :cond_10
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->getReturnFocusState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->setReturnFocused(Z)V

    .line 293
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

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
    .line 164
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mSoundControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V

    .line 165
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mTimerControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V

    .line 166
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mDisplayControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsCategoriesUI"

    const-string v2, "Exception in setControlTextSize()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
