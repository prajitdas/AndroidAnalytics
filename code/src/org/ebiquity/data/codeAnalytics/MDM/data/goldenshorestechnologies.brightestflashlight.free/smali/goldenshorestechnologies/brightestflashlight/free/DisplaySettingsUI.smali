.class public Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;
.super Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;
.source "DisplaySettingsUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	}
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$DisplaySettingsUI$HitTest:[I = null

.field private static final TAG:Ljava/lang/String; = "DisplaySettingsUI"


# instance fields
.field private mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

.field private mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private final miIconCameraLEDID:I

.field private final miIconOtherLightsID:I

.field private final miIconScreenID:I


# direct methods
.method static synthetic $SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$DisplaySettingsUI$HitTest()[I
	.locals 3

	.prologue
	.line 19
	sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$DisplaySettingsUI$HitTest:[I

	if-eqz v0, :cond_0

	:goto_0
	return-object v0

	:cond_0
	invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->values()[Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	move-result-object v0

	array-length v0, v0

	new-array v0, v0, [I

	:try_start_0
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->CAMERA_LED:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->ordinal()I

	move-result v1

	const/4 v2, 0x2

	aput v2, v0, v1
	:try_end_0
	.catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

	:goto_1
	:try_start_1
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->ordinal()I

	move-result v1

	const/4 v2, 0x1

	aput v2, v0, v1
	:try_end_1
	.catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

	:goto_2
	:try_start_2
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->OTHER_LIGHTS:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->ordinal()I

	move-result v1

	const/4 v2, 0x4

	aput v2, v0, v1
	:try_end_2
	.catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

	:goto_3
	:try_start_3
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->ordinal()I

	move-result v1

	const/4 v2, 0x5

	aput v2, v0, v1
	:try_end_3
	.catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

	:goto_4
	:try_start_4
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->SCREEN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->ordinal()I

	move-result v1

	const/4 v2, 0x3

	aput v2, v0, v1
	:try_end_4
	.catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

	:goto_5
	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$DisplaySettingsUI$HitTest:[I

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
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	const/4 v0, 0x0

	.line 41
	invoke-direct {p0, p1}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;-><init>(Landroid/content/Context;)V

	.line 23
	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	.line 24
	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	.line 25
	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	.line 28
	const/4 v0, 0x5

	iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->miIconCameraLEDID:I

	.line 29
	const/4 v0, 0x6

	iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->miIconScreenID:I

	.line 30
	const/4 v0, 0x7

	iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->miIconOtherLightsID:I

	.line 33
	sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	.line 42
	return-void
.end method

.method private cameraLEDCheckboxTapped()V
	.locals 6

	.prologue
	.line 484
	:try_start_0
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->toggleChecked()Z

	move-result v0

	.line 486
	.local v0, "bChecked":Z
	if-eqz v0, :cond_0

	.line 487
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOnCameraFlashLED()V

	.line 488
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setZOrderDisplayDialogInFront()V

	.line 489
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	const-string v3, "Settings_Display"

	const-string v4, "CameraLED_Enabled"

	const/4 v5, 0x1

	invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

	.line 499
	.end local v0	# "bChecked":Z
	:goto_0
	return-void

	.line 492
	.restart local v0	# "bChecked":Z
	:cond_0
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOffCameraFlashLED()V

	.line 493
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	const-string v3, "Settings_Display"

	const-string v4, "CameraLED_Enabled"

	const/4 v5, 0x0

	invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 495
	.end local v0	# "bChecked":Z
	:catch_0
	move-exception v1

	.line 496
	.local v1, "e":Ljava/lang/Exception;
	const-string v2, "DisplaySettingsUI"

	const-string v3, "Exception in cameraLEDCheckboxTapped()"

	invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 497
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method private otherLightsCheckboxTapped()V
	.locals 6

	.prologue
	.line 529
	:try_start_0
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->toggleChecked()Z

	move-result v0

	.line 531
	.local v0, "bChecked":Z
	if-eqz v0, :cond_0

	.line 532
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOnNotificationLED()V

	.line 533
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOnSoftKeysBacklight()V

	.line 534
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	const-string v3, "Settings_Display"

	const-string v4, "OtherLights_Enabled"

	const/4 v5, 0x1

	invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

	.line 545
	.end local v0	# "bChecked":Z
	:goto_0
	return-void

	.line 537
	.restart local v0	# "bChecked":Z
	:cond_0
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOffNotificationLED()V

	.line 538
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOffSoftKeysBacklight()V

	.line 539
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	const-string v3, "Settings_Display"

	const-string v4, "OtherLights_Enabled"

	const/4 v5, 0x0

	invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 541
	.end local v0	# "bChecked":Z
	:catch_0
	move-exception v1

	.line 542
	.local v1, "e":Ljava/lang/Exception;
	const-string v2, "DisplaySettingsUI"

	const-string v3, "Exception in otherLightsCheckboxTapped()"

	invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 543
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method private receivedUpWhileSelected(Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;)V
	.locals 5
	.param p1, "item"	# Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	.prologue
	.line 398
	:try_start_0
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	.line 399
	.local v2, "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	.line 401
	.local v1, "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->deselectAll()V

	.line 403
	invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$DisplaySettingsUI$HitTest()[I

	move-result-object v3

	invoke-virtual {p1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->ordinal()I

	move-result v4

	aget v3, v3, v4

	packed-switch v3, :pswitch_data_0

	.line 436
	.end local v1	# "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	.end local v2	# "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
	:cond_0
	:goto_0
	return-void

	.line 405
	.restart local v1	# "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	.restart local v2	# "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
	:pswitch_0
	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	if-ne v2, v3, :cond_0

	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->CAMERA_LED:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	if-ne v1, v3, :cond_0

	.line 406
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->cameraLEDCheckboxTapped()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 432
	.end local v1	# "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	.end local v2	# "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
	:catch_0
	move-exception v0

	.line 433
	.local v0, "e":Ljava/lang/Exception;
	const-string v3, "DisplaySettingsUI"

	const-string v4, "Exception in receivedUpWhileSelected()"

	invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 434
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0

	.line 411
	.end local v0	# "e":Ljava/lang/Exception;
	.restart local v1	# "itemSelected":Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	.restart local v2	# "stateWhenEntered":Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
	:pswitch_1
	:try_start_1
	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	if-ne v2, v3, :cond_0

	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->SCREEN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	if-ne v1, v3, :cond_0

	.line 412
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->screenCheckboxTapped()V

	goto :goto_0

	.line 417
	:pswitch_2
	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	if-ne v2, v3, :cond_0

	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->OTHER_LIGHTS:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	if-ne v1, v3, :cond_0

	.line 418
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->otherLightsCheckboxTapped()V

	goto :goto_0

	.line 423
	:pswitch_3
	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	if-ne v2, v3, :cond_0

	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	if-ne v1, v3, :cond_0

	.line 424
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->returnKeyTapped()V
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

	goto :goto_0

	.line 403
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
	.line 552
	:try_start_0
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->fadeToInvisible()V

	.line 553
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showSettingsCategoriesDialog()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 558
	:goto_0
	return-void

	.line 554
	:catch_0
	move-exception v0

	.line 555
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "DisplaySettingsUI"

	const-string v2, "Exception in returnKeyTapped()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 556
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method private screenCheckboxTapped()V
	.locals 6

	.prologue
	.line 506
	:try_start_0
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->toggleChecked()Z

	move-result v0

	.line 508
	.local v0, "bChecked":Z
	if-eqz v0, :cond_0

	.line 509
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	const/4 v3, 0x1

	invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->acquireWakeLock(Z)V

	.line 510
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setMaxScreenBrightness()V

	.line 511
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	const-string v3, "Settings_Display"

	const-string v4, "Screen_Enabled"

	const/4 v5, 0x1

	invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

	.line 522
	.end local v0	# "bChecked":Z
	:goto_0
	return-void

	.line 514
	.restart local v0	# "bChecked":Z
	:cond_0
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	const/4 v3, 0x0

	invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->acquireWakeLock(Z)V

	.line 515
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->restoreScreenBrightness()V

	.line 516
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	const-string v3, "Settings_Display"

	const-string v4, "Screen_Enabled"

	const/4 v5, 0x0

	invoke-static {v2, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 518
	.end local v0	# "bChecked":Z
	:catch_0
	move-exception v1

	.line 519
	.local v1, "e":Ljava/lang/Exception;
	const-string v2, "DisplaySettingsUI"

	const-string v3, "Exception in screenCheckboxTapped()"

	invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 520
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method private whichControlHit(II)Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	.locals 3
	.param p1, "x"	# I
	.param p2, "y"	# I

	.prologue
	.line 444
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getLeft()I

	move-result v1

	if-lt p1, v1, :cond_0

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getRight()I

	move-result v1

	iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->iIconMargins:I

	add-int/2addr v1, v2

	if-gt p1, v1, :cond_0

	.line 445
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getTop()I

	move-result v1

	if-lt p2, v1, :cond_0

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getBottom()I

	move-result v1

	if-gt p2, v1, :cond_0

	.line 446
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->CAMERA_LED:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	.line 476
	:goto_0
	return-object v1

	.line 451
	:cond_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getLeft()I

	move-result v1

	if-lt p1, v1, :cond_1

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getRight()I

	move-result v1

	iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->iIconMargins:I

	add-int/2addr v1, v2

	if-gt p1, v1, :cond_1

	.line 452
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getTop()I

	move-result v1

	if-lt p2, v1, :cond_1

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getBottom()I

	move-result v1

	if-gt p2, v1, :cond_1

	.line 453
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->SCREEN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	goto :goto_0

	.line 458
	:cond_1
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getLeft()I

	move-result v1

	if-lt p1, v1, :cond_2

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getRight()I

	move-result v1

	iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->iIconMargins:I

	add-int/2addr v1, v2

	if-gt p1, v1, :cond_2

	.line 459
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getTop()I

	move-result v1

	if-lt p2, v1, :cond_2

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getBottom()I

	move-result v1

	if-gt p2, v1, :cond_2

	.line 460
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->OTHER_LIGHTS:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	goto :goto_0

	.line 465
	:cond_2
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

	invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

	move-result v1

	if-lt p1, v1, :cond_3

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

	invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

	move-result v1

	if-gt p1, v1, :cond_3

	.line 466
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

	invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

	move-result v1

	if-lt p2, v1, :cond_3

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

	invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

	move-result v1

	if-gt p2, v1, :cond_3

	.line 467
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 471
	:catch_0
	move-exception v0

	.line 472
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "DisplaySettingsUI"

	const-string v2, "Exception in whichControlHit()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 473
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 476
	.end local v0	# "e":Ljava/lang/Exception;
	:cond_3
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	goto :goto_0
.end method


# virtual methods
.method protected deselectAll()V
	.locals 3

	.prologue
	.line 194
	:try_start_0
	invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->deselectAll()V

	.line 196
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->deselect()V

	.line 197
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->deselect()V

	.line 198
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->deselect()V

	.line 200
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

	const v2, 0x7f020010

	invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

	.line 202
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	.line 203
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 208
	:goto_0
	return-void

	.line 204
	:catch_0
	move-exception v0

	.line 205
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "DisplaySettingsUI"

	const-string v2, "Exception in deselectAll()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 206
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method protected getTitlebarIconResID()I
	.locals 1

	.prologue
	.line 151
	const v0, 0x7f020007

	return v0
.end method

.method protected getTitlebarTextResID()I
	.locals 1

	.prologue
	.line 163
	const v0, 0x7f070014

	return v0
.end method

.method protected getTopLeftChildControl()Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
	.locals 3

	.prologue
	.line 139
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 143
	:goto_0
	return-object v1

	.line 140
	:catch_0
	move-exception v0

	.line 141
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "DisplaySettingsUI"

	const-string v2, "Exception in getTopLeftChildControl()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 142
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 143
	const/4 v1, 0x0

	goto :goto_0
.end method

.method protected instantiateChildControls()V
	.locals 12

	.prologue
	.line 51
	:try_start_0
	invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->instantiateChildControls()V

	.line 54
	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	.line 55
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const v1, 0x7f020001

	const/high16 v2, 0x7f020000

	.line 56
	const v3, 0x7f020001

	const/high16 v4, 0x7f020000

	.line 57
	const v5, 0x7f070015

	sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

	iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 55
	invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	.line 58
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 59
	const-string v1, "Settings_Display"

	const-string v2, "CameraLED_Enabled"

	const/4 v3, 0x1

	.line 58
	invoke-static {v0, v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

	move-result v8

	.line 60
	.local v8, "bCameraLED":Z
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v0, v8}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V

	.line 63
	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	.line 64
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const v1, 0x7f020001

	const/high16 v2, 0x7f020000

	.line 65
	const v3, 0x7f020001

	const/high16 v4, 0x7f020000

	.line 66
	const v5, 0x7f070016

	sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

	iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 64
	invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	.line 67
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 68
	const-string v1, "Settings_Display"

	const-string v2, "Screen_Enabled"

	const/4 v3, 0x1

	.line 67
	invoke-static {v0, v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

	move-result v10

	.line 69
	.local v10, "bScreen":Z
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v0, v10}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V

	.line 72
	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	.line 77
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const v1, 0x7f020017

	const v2, 0x7f020017

	.line 78
	const v3, 0x7f020017

	const v4, 0x7f020017

	.line 79
	const v5, 0x7f07000f

	sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

	iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 77
	invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	.line 80
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 81
	const-string v1, "Settings_Display"

	const-string v2, "OtherLights_Enabled"

	const/4 v3, 0x1

	.line 80
	invoke-static {v0, v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

	move-result v9

	.line 82
	.local v9, "bOtherLights":Z
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v0, v9}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 88
	.end local v8	# "bCameraLED":Z
	.end local v9	# "bOtherLights":Z
	.end local v10	# "bScreen":Z
	:goto_0
	return-void

	.line 84
	:catch_0
	move-exception v11

	.line 85
	.local v11, "e":Ljava/lang/Exception;
	const-string v0, "DisplaySettingsUI"

	const-string v1, "Exception in instantiateChildControls()"

	invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 86
	invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method protected layoutChildControls()V
	.locals 6

	.prologue
	.line 97
	:try_start_0
	invoke-super {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->layoutChildControls()V

	.line 99
	const/4 v1, 0x0

	.line 102
	.local v1, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

	.end local v1	# "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/4 v2, -0x2

	const/4 v3, -0x2

	invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 103
	.restart local v1	# "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/4 v2, 0x2

	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

	invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

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
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v3, 0x7

	invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

	.line 107
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 109
	new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

	.end local v1	# "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/4 v2, -0x2

	const/4 v3, -0x2

	invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 110
	.restart local v1	# "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/4 v2, 0x2

	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getId()I

	move-result v3

	invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

	.line 111
	const/16 v2, 0x9

	invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 112
	const/16 v2, 0x14

	const/4 v3, 0x0

	const/4 v4, 0x0

	const/16 v5, 0xa

	invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

	.line 113
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v3, 0x6

	invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

	.line 114
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 116
	new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

	.end local v1	# "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/4 v2, -0x2

	const/4 v3, -0x2

	invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 117
	.restart local v1	# "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/4 v2, 0x2

	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getId()I

	move-result v3

	invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

	.line 118
	const/16 v2, 0x9

	invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 119
	const/16 v2, 0x14

	const/4 v3, 0x0

	const/4 v4, 0x0

	const/16 v5, 0xa

	invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

	.line 120
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v3, 0x5

	invoke-virtual {v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

	.line 121
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 124
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->afterLayoutChildControls()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 130
	.end local v1	# "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	:goto_0
	return-void

	.line 126
	:catch_0
	move-exception v0

	.line 127
	.local v0, "e":Ljava/lang/Exception;
	const-string v2, "DisplaySettingsUI"

	const-string v3, "Exception in layoutChildControls()"

	invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 128
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
	.locals 7
	.param p1, "event"	# Landroid/view/MotionEvent;

	.prologue
	const/4 v4, 0x1

	.line 327
	:try_start_0
	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	if-eq v5, v6, :cond_0

	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_SOLID_TO_HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	if-ne v5, v6, :cond_2

	.line 328
	:cond_0
	const/4 v4, 0x0

	.line 390
	:cond_1
	:goto_0
	return v4

	.line 332
	:cond_2
	invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

	move-result v1

	.line 333
	.local v1, "fX":F
	invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

	move-result v2

	.line 334
	.local v2, "fY":F
	float-to-int v5, v1

	float-to-int v6, v2

	invoke-direct {p0, v5, v6}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->whichControlHit(II)Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	move-result-object v3

	.line 342
	.local v3, "item":Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->killDialogTimer()V

	.line 343
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->setDialogTimer()V

	.line 344
	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

	.line 346
	invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

	move-result v5

	if-nez v5, :cond_3

	.line 347
	const-string v5, "DisplaySettingsUI"

	const-string v6, "Received onTouchEvent() ACTION_DOWN"

	invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 348
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->deselectAll()V

	.line 349
	invoke-static {}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->$SWITCH_TABLE$goldenshorestechnologies$brightestflashlight$free$DisplaySettingsUI$HitTest()[I

	move-result-object v5

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->ordinal()I

	move-result v6

	aget v5, v5, v6

	packed-switch v5, :pswitch_data_0

	.line 380
	:cond_3
	:goto_1
	:pswitch_0
	invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

	move-result v5

	if-ne v5, v4, :cond_1

	.line 381
	const-string v5, "DisplaySettingsUI"

	const-string v6, "Received onTouchEvent() ACTION_UP"

	invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 382
	invoke-direct {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->receivedUpWhileSelected(Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 385
	.end local v1	# "fX":F
	.end local v2	# "fY":F
	.end local v3	# "item":Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	:catch_0
	move-exception v0

	.line 386
	.local v0, "e":Ljava/lang/Exception;
	const-string v5, "DisplaySettingsUI"

	const-string v6, "onTouchEvent() Failed"

	invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 387
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0

	.line 351
	.end local v0	# "e":Ljava/lang/Exception;
	.restart local v1	# "fX":F
	.restart local v2	# "fY":F
	.restart local v3	# "item":Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	:pswitch_1
	:try_start_1
	sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	.line 352
	sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->CAMERA_LED:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	.line 353
	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->select()V

	goto :goto_1

	.line 357
	:pswitch_2
	sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	.line 358
	sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->SCREEN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	.line 359
	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v5}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->select()V

	goto :goto_1

	.line 370
	:pswitch_3
	sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	.line 371
	sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mItemSelected:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	.line 372
	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mViewReturnIcon:Landroid/widget/ImageView;

	const v6, 0x7f020012

	invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

	goto :goto_1

	.line 349
	nop

	:pswitch_data_0
	.packed-switch 0x2
		:pswitch_1
		:pswitch_2
		:pswitch_0
		:pswitch_3
	.end packed-switch
.end method

.method public pumpOnKeyDown(ILandroid/view/KeyEvent;)Z
	.locals 5
	.param p1, "keyCode"	# I
	.param p2, "event"	# Landroid/view/KeyEvent;

	.prologue
	const/4 v2, 0x0

	const/4 v1, 0x1

	.line 218
	:try_start_0
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->deselectAll()V

	.line 221
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->killDialogTimer()V

	.line 222
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->setDialogTimer()V

	.line 223
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

	.line 225
	invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

	move-result v3

	if-nez v3, :cond_3

	.line 227
	const/4 v3, 0x4

	if-ne p1, v3, :cond_1

	.line 229
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->returnKeyTapped()V

	.line 318
	:cond_0
	:goto_0
	return v1

	.line 234
	:cond_1
	const/16 v3, 0x17

	if-eq p1, v3, :cond_2

	const/16 v3, 0x16

	if-ne p1, v3, :cond_7

	.line 236
	:cond_2
	iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->bInFocusedMode:Z

	if-eqz v3, :cond_7

	.line 237
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

	move-result v3

	if-eqz v3, :cond_4

	.line 238
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->cameraLEDCheckboxTapped()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 313
	:catch_0
	move-exception v0

	.line 314
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "DisplaySettingsUI"

	const-string v3, "Exception in pumpOnKeyDown()"

	invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 315
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.end local v0	# "e":Ljava/lang/Exception;
	:cond_3
	move v1, v2

	.line 318
	goto :goto_0

	.line 240
	:cond_4
	:try_start_1
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

	move-result v3

	if-eqz v3, :cond_5

	.line 241
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->screenCheckboxTapped()V

	goto :goto_0

	.line 243
	:cond_5
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

	move-result v3

	if-eqz v3, :cond_6

	.line 244
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->otherLightsCheckboxTapped()V

	goto :goto_0

	.line 246
	:cond_6
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->getReturnFocusState()Z

	move-result v3

	if-eqz v3, :cond_0

	.line 247
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->returnKeyTapped()V

	goto :goto_0

	.line 255
	:cond_7
	const/16 v3, 0x14

	if-ne p1, v3, :cond_c

	.line 257
	iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->bInFocusedMode:Z

	if-nez v3, :cond_8

	.line 258
	const/4 v3, 0x1

	iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->bInFocusedMode:Z

	.line 259
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x1

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	goto :goto_0

	.line 263
	:cond_8
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

	move-result v3

	if-eqz v3, :cond_9

	.line 264
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x0

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	.line 265
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x1

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	goto :goto_0

	.line 267
	:cond_9
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

	move-result v3

	if-eqz v3, :cond_a

	.line 268
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x0

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	.line 269
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x1

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	goto/16 :goto_0

	.line 271
	:cond_a
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

	move-result v3

	if-eqz v3, :cond_b

	.line 272
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x0

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	.line 273
	const/4 v3, 0x1

	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->setReturnFocused(Z)V

	goto/16 :goto_0

	.line 275
	:cond_b
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->getReturnFocusState()Z

	move-result v3

	if-eqz v3, :cond_0

	.line 276
	const/4 v3, 0x0

	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->setReturnFocused(Z)V

	.line 277
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x1

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	goto/16 :goto_0

	.line 284
	:cond_c
	const/16 v3, 0x13

	if-ne p1, v3, :cond_3

	.line 286
	iget-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->bInFocusedMode:Z

	if-nez v3, :cond_d

	.line 287
	const/4 v3, 0x1

	iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->bInFocusedMode:Z

	.line 288
	const/4 v3, 0x1

	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->setReturnFocused(Z)V

	goto/16 :goto_0

	.line 292
	:cond_d
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

	move-result v3

	if-eqz v3, :cond_e

	.line 293
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x0

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	.line 294
	const/4 v3, 0x1

	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->setReturnFocused(Z)V

	goto/16 :goto_0

	.line 296
	:cond_e
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

	move-result v3

	if-eqz v3, :cond_f

	.line 297
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x0

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	.line 298
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x1

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	goto/16 :goto_0

	.line 300
	:cond_f
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getFocusState()Z

	move-result v3

	if-eqz v3, :cond_10

	.line 301
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x0

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	.line 302
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x1

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V

	goto/16 :goto_0

	.line 304
	:cond_10
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->getReturnFocusState()Z

	move-result v3

	if-eqz v3, :cond_0

	.line 305
	const/4 v3, 0x0

	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->setReturnFocused(Z)V

	.line 306
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	const/4 v4, 0x1

	invoke-virtual {v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setFocused(Z)V
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

	goto/16 :goto_0
.end method

.method public setControlsTextSize(F)V
	.locals 3
	.param p1, "fNewSize"	# F

	.prologue
	.line 177
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mCameraLEDControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V

	.line 178
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mScreenControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V

	.line 179
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mOtherLightsControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

	invoke-virtual {v1, p1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setLabelTextSize(F)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 184
	:goto_0
	return-void

	.line 180
	:catch_0
	move-exception v0

	.line 181
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "DisplaySettingsUI"

	const-string v2, "Exception in setControlTextSize()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 182
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method
