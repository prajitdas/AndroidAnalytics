.class public Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;
.super Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;
.source "SoundSettingsUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SoundSettingsUI$HitTest:[I = null

.field private static final TAG:Ljava/lang/String; = "SoundSettingsUI"


# instance fields
.field private mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

.field private mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private mSpacerControl1:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private mSpacerControl2:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private final miMuteControlID:I

.field private final miSpacer1ControlID:I

.field private final miSpacer2ControlID:I


# direct methods
.method static synthetic $SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SoundSettingsUI$HitTest()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SoundSettingsUI$HitTest:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->values()[Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->MUTE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SoundSettingsUI$HitTest:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
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
    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 23
    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl1:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 24
    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl2:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 27
    const/16 v0, 0x2c1

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->miMuteControlID:I

    .line 28
    const/16 v0, 0x2c2

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->miSpacer1ControlID:I

    .line 29
    const/16 v0, 0x2c3

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->miSpacer2ControlID:I

    .line 32
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    .line 41
    return-void
.end method

.method private muteCheckboxTapped()V
    .locals 6

    .prologue
    .line 410
    :try_start_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->toggleChecked()Z

    move-result v0

    .line 412
    .local v0, "bChecked":Z
    if-eqz v0, :cond_0

    .line 413
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const-string v3, "Settings_Sound"

    const-string v4, "Muted"

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 422
    .end local v0    # "bChecked":Z
    :goto_0
    return-void

    .line 416
    .restart local v0    # "bChecked":Z
    :cond_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const-string v3, "Settings_Sound"

    const-string v4, "Muted"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    .end local v0    # "bChecked":Z
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SoundSettingsUI"

    const-string v3, "Exception in muteCheckboxTapped()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private receivedUpWhileSelected(Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;)V
    .locals 5
    .param p1, "item"    # Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    .prologue
    .line 350
    :try_start_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 351
    .local v2, "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    .line 353
    .local v1, "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->deselectAll()V

    .line 355
    invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SoundSettingsUI$HitTest()[I

    move-result-object v3

    invoke-virtual {p1}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 376
    .end local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    .end local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :cond_0
    :goto_0
    return-void

    .line 357
    .restart local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    .restart local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :pswitch_0
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->MUTE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    if-ne v1, v3, :cond_0

    .line 358
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->muteCheckboxTapped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    .end local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    .end local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SoundSettingsUI"

    const-string v4, "Exception in receivedUpWhileSelected()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    .restart local v2    # "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :pswitch_1
    :try_start_1
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    if-ne v1, v3, :cond_0

    .line 364
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->returnKeyTapped()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private returnKeyTapped()V
    .locals 3

    .prologue
    .line 429
    :try_start_0
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->fadeToInvisible()V

    .line 430
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showSettingsCategoriesDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundSettingsUI"

    const-string v2, "Exception in returnKeyTapped()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private whichControlHit(II)Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getRight()I

    move-result v1

    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->iIconMargins:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    .line 385
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getBottom()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 386
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->MUTE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    .line 402
    :goto_0
    return-object v1

    .line 391
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 392
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    if-gt p2, v1, :cond_1

    .line 393
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundSettingsUI"

    const-string v2, "Exception in whichControlHit()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    goto :goto_0
.end method


# virtual methods
.method protected deselectAll()V
    .locals 3

    .prologue
    .line 183
    :try_start_0
    invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->deselectAll()V

    .line 185
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->deselect()V

    .line 186
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    .line 188
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundSettingsUI"

    const-string v2, "Exception in deselectAll()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getTitlebarIconResID()I
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f020013

    return v0
.end method

.method protected getTitlebarTextResID()I
    .locals 1

    .prologue
    .line 151
    const v0, 0x7f07000d

    return v0
.end method

.method protected getTopLeftChildControl()Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
    .locals 3

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundSettingsUI"

    const-string v2, "Exception in getTopLeftChildControl()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected instantiateChildControls()V
    .locals 10

    .prologue
    .line 50
    :try_start_0
    invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->instantiateChildControls()V

    .line 53
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 54
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const v1, 0x7f020001

    const/high16 v2, 0x7f020000

    .line 55
    const v3, 0x7f020001

    const/high16 v4, 0x7f020000

    .line 56
    const v5, 0x7f07000e

    sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

    iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 54
    invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    .line 57
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 58
    const-string v1, "Settings_Sound"

    const-string v2, "Muted"

    const/4 v3, 0x0

    .line 57
    invoke-static {v0, v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 59
    .local v8, "bMuted":Z
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v0, v8}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V

    .line 62
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl1:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 63
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl1:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const v1, 0x7f020017

    const v2, 0x7f020017

    .line 64
    const v3, 0x7f020017

    const v4, 0x7f020017

    .line 65
    const v5, 0x7f07000f

    sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

    iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 63
    invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    .line 66
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl2:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 67
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl2:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const v1, 0x7f020017

    const v2, 0x7f020017

    .line 68
    const v3, 0x7f020017

    const v4, 0x7f020017

    .line 69
    const v5, 0x7f07000f

    sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

    iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 67
    invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v8    # "bMuted":Z
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v9

    .line 72
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SoundSettingsUI"

    const-string v1, "Exception in instantiateChildControls()"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected layoutChildControls()V
    .locals 6

    .prologue
    .line 84
    :try_start_0
    invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->layoutChildControls()V

    .line 86
    const/4 v1, 0x0

    .line 89
    .local v1, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 91
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl2:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/16 v3, 0x2c3

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

    .line 94
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl2:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl2:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 98
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 100
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl1:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/16 v3, 0x2c2

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

    .line 101
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl1:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl1:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 106
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 108
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/16 v3, 0x2c1

    invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

    .line 109
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->afterLayoutChildControls()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SoundSettingsUI"

    const-string v3, "Exception in layoutChildControls()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 290
    :try_start_0
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_SOLID_TO_HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v5, v6, :cond_2

    .line 291
    :cond_0
    const/4 v4, 0x0

    .line 342
    :cond_1
    :goto_0
    return v4

    .line 295
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 296
    .local v1, "fX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 297
    .local v2, "fY":F
    float-to-int v5, v1

    float-to-int v6, v2

    invoke-direct {p0, v5, v6}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->whichControlHit(II)Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    move-result-object v3

    .line 305
    .local v3, "item":Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->killDialogTimer()V

    .line 306
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->setDialogTimer()V

    .line 307
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 310
    const-string v5, "SoundSettingsUI"

    const-string v6, "Received onTouchEvent() ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->deselectAll()V

    .line 314
    invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$SoundSettingsUI$HitTest()[I

    move-result-object v5

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 332
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 333
    const-string v5, "SoundSettingsUI"

    const-string v6, "Received onTouchEvent() ACTION_UP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->receivedUpWhileSelected(Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v1    # "fX":F
    .end local v2    # "fY":F
    .end local v3    # "item":Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SoundSettingsUI"

    const-string v6, "onTouchEvent() Failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fX":F
    .restart local v2    # "fY":F
    .restart local v3    # "item":Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    :pswitch_0
    :try_start_1
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 317
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->MUTE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    .line 318
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->select()V

    goto :goto_1

    .line 322
    :pswitch_1
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 323
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    .line 324
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

    const v6, 0x7f020012

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pumpOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->deselectAll()V

    .line 206
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->killDialogTimer()V

    .line 207
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->setDialogTimer()V

    .line 208
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

    .line 210
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 212
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 214
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->returnKeyTapped()V

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-ne p1, v3, :cond_5

    .line 221
    :cond_2
    iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->bInFocusedMode:Z

    if-eqz v3, :cond_5

    .line 222
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 223
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->muteCheckboxTapped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundSettingsUI"

    const-string v3, "Exception in pumpOnKeyDown()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move v1, v2

    .line 281
    goto :goto_0

    .line 225
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->getReturnFocusState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->returnKeyTapped()V

    goto :goto_0

    .line 234
    :cond_5
    const/16 v3, 0x14

    if-ne p1, v3, :cond_8

    .line 236
    iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->bInFocusedMode:Z

    if-nez v3, :cond_6

    .line 237
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->bInFocusedMode:Z

    .line 238
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto :goto_0

    .line 242
    :cond_6
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 243
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 244
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->setReturnFocused(Z)V

    goto :goto_0

    .line 246
    :cond_7
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->getReturnFocusState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->setReturnFocused(Z)V

    .line 248
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    goto :goto_0

    .line 255
    :cond_8
    const/16 v3, 0x13

    if-ne p1, v3, :cond_3

    .line 257
    iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->bInFocusedMode:Z

    if-nez v3, :cond_9

    .line 258
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->bInFocusedMode:Z

    .line 259
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->setReturnFocused(Z)V

    goto :goto_0

    .line 263
    :cond_9
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 264
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

    .line 265
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->setReturnFocused(Z)V

    goto/16 :goto_0

    .line 267
    :cond_a
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->getReturnFocusState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->setReturnFocused(Z)V

    .line 269
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

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
    .line 166
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mMuteControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V

    .line 167
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl1:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V

    .line 168
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mSpacerControl2:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundSettingsUI"

    const-string v2, "Exception in setControlTextSize()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
