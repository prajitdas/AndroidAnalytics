.class public Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;
.super Landroid/widget/RelativeLayout;
.source "MainSettingsUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainSettingsUI"


# instance fields
.field animListenerHide:Landroid/view/animation/Animation$AnimationListener;

.field animListenerInvisibleToTransparent:Landroid/view/animation/Animation$AnimationListener;

.field animListenerSolidToTransparent:Landroid/view/animation/Animation$AnimationListener;

.field animListenerTransparentToSolid:Landroid/view/animation/Animation$AnimationListener;

.field mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

.field protected mHandlerTransitionTimer:Landroid/os/Handler;

.field mRunnable:Ljava/lang/Runnable;

.field private mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

.field mViewSettingsIcon:Landroid/widget/ImageView;

.field mViewSettingsSolidIcon:Landroid/widget/ImageView;

.field mViewSettingsTransparentIcon:Landroid/widget/ImageView;

.field private mWhiteCalcTitlebarIcon:Landroid/widget/ImageView;

.field private mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

.field private mWhiteTextTitlebar:Landroid/widget/TextView;

.field public mbIsBackgroundWhite:Z

.field private final miBuffer:I

.field private final miViewSettingsIconID:I

.field private final miViewSettingsTransparentIconID:I

.field private final miWhiteCalcTitlebarIconID:I

.field private final miWhiteTextCalcControlID:I

.field private final miWhiteTextTitlebarID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 32
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsTransparentIcon:Landroid/widget/ImageView;

    .line 33
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsSolidIcon:Landroid/widget/ImageView;

    .line 35
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    .line 37
    const/16 v0, 0x1e

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->miBuffer:I

    .line 40
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteCalcTitlebarIcon:Landroid/widget/ImageView;

    .line 41
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    .line 44
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 47
    const/16 v0, 0x321

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->miViewSettingsIconID:I

    .line 48
    const/16 v0, 0x322

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->miViewSettingsTransparentIconID:I

    .line 49
    const/16 v0, 0x326

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->miWhiteCalcTitlebarIconID:I

    .line 50
    const/16 v0, 0x327

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->miWhiteTextTitlebarID:I

    .line 51
    const/16 v0, 0x328

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->miWhiteTextCalcControlID:I

    .line 56
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mbIsBackgroundWhite:Z

    .line 419
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$1;

    invoke-direct {v0, p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$1;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->animListenerInvisibleToTransparent:Landroid/view/animation/Animation$AnimationListener;

    .line 439
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$2;

    invoke-direct {v0, p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$2;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->animListenerTransparentToSolid:Landroid/view/animation/Animation$AnimationListener;

    .line 462
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$3;

    invoke-direct {v0, p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$3;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->animListenerSolidToTransparent:Landroid/view/animation/Animation$AnimationListener;

    .line 482
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$4;

    invoke-direct {v0, p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$4;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->animListenerHide:Landroid/view/animation/Animation$AnimationListener;

    .line 504
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mHandlerTransitionTimer:Landroid/os/Handler;

    .line 505
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mRunnable:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    return-void
.end method

.method static synthetic access$1(Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;)Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    return-object v0
.end method

.method static synthetic access$2(Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->disableDialog()V

    return-void
.end method

.method private disableDialog()V
    .locals 3

    .prologue
    .line 312
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainSettingsUI"

    const-string v2, "Exception in disableDialog()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private killTimer()V
    .locals 3

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mHandlerTransitionTimer:Landroid/os/Handler;

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainSettingsUI"

    const-string v2, "killTimer() Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSolidButtonResID()V
    .locals 3

    .prologue
    .line 278
    :try_start_0
    iget-boolean v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mbIsBackgroundWhite:Z

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainSettingsUI"

    const-string v2, "Exception in setSolidButtonResID()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSolidButtonSelectedResID()V
    .locals 3

    .prologue
    .line 292
    :try_start_0
    iget-boolean v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mbIsBackgroundWhite:Z

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    const v2, 0x7f02000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainSettingsUI"

    const-string v2, "Exception in setSolidButtonResID()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setTransparentIconResID()V
    .locals 3

    .prologue
    .line 265
    :try_start_0
    iget-boolean v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mbIsBackgroundWhite:Z

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsTransparentIcon:Landroid/widget/ImageView;

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsTransparentIcon:Landroid/widget/ImageView;

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainSettingsUI"

    const-string v2, "Exception in setTransparentIconResID()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public CalcMaxControlFontSize()F
    .locals 15

    .prologue
    .line 620
    const/16 v13, 0xa

    :try_start_0
    new-array v7, v13, [I

    fill-array-data v7, :array_0

    .line 629
    .local v7, "iArrayControlResID":[I
    sget v13, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fDialogTitleTextSize:F

    const v14, 0x3f4ccccd    # 0.8f

    mul-float v3, v13, v14

    .line 631
    .local v3, "fLargestLegalSizeSoFar":F
    iget-object v13, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v13}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 633
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 634
    .local v0, "calcPaint":Landroid/graphics/Paint;
    iget-object v13, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v13, v13, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 636
    array-length v9, v7

    .line 638
    .local v9, "iNumStrings":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v9, :cond_0

    .line 681
    .end local v0    # "calcPaint":Landroid/graphics/Paint;
    .end local v3    # "fLargestLegalSizeSoFar":F
    .end local v6    # "i":I
    .end local v7    # "iArrayControlResID":[I
    .end local v9    # "iNumStrings":I
    .end local v11    # "res":Landroid/content/res/Resources;
    :goto_1
    return v3

    .line 639
    .restart local v0    # "calcPaint":Landroid/graphics/Paint;
    .restart local v3    # "fLargestLegalSizeSoFar":F
    .restart local v6    # "i":I
    .restart local v7    # "iArrayControlResID":[I
    .restart local v9    # "iNumStrings":I
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v13, v7, v6

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 641
    .local v12, "strTitleToCheck":Ljava/lang/String;
    iget-object v13, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v13, v13, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getWidth()I

    move-result v10

    .line 642
    .local v10, "iTextControlWidth":I
    if-lez v10, :cond_2

    .line 645
    iget-object v13, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v13, v13, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    sub-int v13, v10, v13

    .line 646
    iget-object v14, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v14, v14, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v14

    .line 645
    sub-int v8, v13, v14

    .line 647
    .local v8, "iAvailableWidth":I
    int-to-float v2, v8

    .line 649
    .local v2, "fAvailableWidth":F
    move v4, v3

    .line 651
    .local v4, "fTrialFontSize":F
    :cond_1
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 653
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 655
    .local v5, "fTrialMeasuredWidth":F
    cmpg-float v13, v5, v2

    if-gtz v13, :cond_3

    .line 657
    cmpg-float v13, v4, v3

    if-gez v13, :cond_2

    .line 658
    move v3, v4

    .line 638
    .end local v2    # "fAvailableWidth":F
    .end local v4    # "fTrialFontSize":F
    .end local v5    # "fTrialMeasuredWidth":F
    .end local v8    # "iAvailableWidth":I
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 664
    .restart local v2    # "fAvailableWidth":F
    .restart local v4    # "fTrialFontSize":F
    .restart local v5    # "fTrialMeasuredWidth":F
    .restart local v8    # "iAvailableWidth":I
    :cond_3
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v4, v13

    .line 665
    const/high16 v13, 0x41000000    # 8.0f

    cmpg-float v13, v4, v13

    if-gez v13, :cond_4

    .line 666
    const/high16 v4, 0x41000000    # 8.0f

    .line 667
    const/high16 v3, 0x41000000    # 8.0f

    .line 668
    goto :goto_2

    .line 671
    :cond_4
    const/high16 v13, 0x41000000    # 8.0f

    .line 650
    cmpl-float v13, v4, v13

    if-gtz v13, :cond_1

    goto :goto_2

    .line 678
    .end local v0    # "calcPaint":Landroid/graphics/Paint;
    .end local v2    # "fAvailableWidth":F
    .end local v3    # "fLargestLegalSizeSoFar":F
    .end local v4    # "fTrialFontSize":F
    .end local v5    # "fTrialMeasuredWidth":F
    .end local v6    # "i":I
    .end local v7    # "iArrayControlResID":[I
    .end local v8    # "iAvailableWidth":I
    .end local v9    # "iNumStrings":I
    .end local v10    # "iTextControlWidth":I
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "strTitleToCheck":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 679
    .local v1, "e":Ljava/lang/Exception;
    const-string v13, "MainSettingsUI"

    const-string v14, "CalcMaxControlFontSize() Failed"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 681
    const/high16 v3, 0x42200000    # 40.0f

    goto :goto_1

    .line 620
    nop

    :array_0
    .array-data 4
        0x7f07000a
        0x7f07000b
        0x7f07000c
        0x7f07000e
        0x7f070011
        0x7f070012
        0x7f070013
        0x7f070015
        0x7f070016
        0x7f070017
    .end array-data
.end method

.method public CalcMaxDialogFontSize()F
    .locals 15

    .prologue
    .line 552
    const/4 v13, 0x4

    :try_start_0
    new-array v7, v13, [I

    fill-array-data v7, :array_0

    .line 555
    .local v7, "iArrayDialogResID":[I
    const/high16 v3, 0x42480000    # 50.0f

    .line 557
    .local v3, "fLargestLegalSizeSoFar":F
    iget-object v13, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v13}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 559
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 560
    .local v0, "calcPaint":Landroid/graphics/Paint;
    iget-object v13, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 562
    array-length v9, v7

    .line 564
    .local v9, "iNumStrings":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v9, :cond_0

    .line 606
    .end local v0    # "calcPaint":Landroid/graphics/Paint;
    .end local v3    # "fLargestLegalSizeSoFar":F
    .end local v6    # "i":I
    .end local v7    # "iArrayDialogResID":[I
    .end local v9    # "iNumStrings":I
    .end local v11    # "res":Landroid/content/res/Resources;
    :goto_1
    return v3

    .line 565
    .restart local v0    # "calcPaint":Landroid/graphics/Paint;
    .restart local v3    # "fLargestLegalSizeSoFar":F
    .restart local v6    # "i":I
    .restart local v7    # "iArrayDialogResID":[I
    .restart local v9    # "iNumStrings":I
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v13, v7, v6

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 567
    .local v12, "strTitleToCheck":Ljava/lang/String;
    iget-object v13, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getWidth()I

    move-result v10

    .line 568
    .local v10, "iTextControlWidth":I
    if-lez v10, :cond_2

    .line 571
    iget-object v13, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    sub-int v13, v10, v13

    iget-object v14, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v14

    sub-int v8, v13, v14

    .line 572
    .local v8, "iAvailableWidth":I
    int-to-float v2, v8

    .line 574
    .local v2, "fAvailableWidth":F
    move v4, v3

    .line 576
    .local v4, "fTrialFontSize":F
    :cond_1
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 578
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 580
    .local v5, "fTrialMeasuredWidth":F
    cmpg-float v13, v5, v2

    if-gtz v13, :cond_3

    .line 582
    cmpg-float v13, v4, v3

    if-gez v13, :cond_2

    .line 583
    move v3, v4

    .line 564
    .end local v2    # "fAvailableWidth":F
    .end local v4    # "fTrialFontSize":F
    .end local v5    # "fTrialMeasuredWidth":F
    .end local v8    # "iAvailableWidth":I
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 589
    .restart local v2    # "fAvailableWidth":F
    .restart local v4    # "fTrialFontSize":F
    .restart local v5    # "fTrialMeasuredWidth":F
    .restart local v8    # "iAvailableWidth":I
    :cond_3
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v4, v13

    .line 590
    const/high16 v13, 0x41000000    # 8.0f

    cmpg-float v13, v4, v13

    if-gez v13, :cond_4

    .line 591
    const/high16 v4, 0x41000000    # 8.0f

    .line 592
    const/high16 v3, 0x41000000    # 8.0f

    .line 593
    goto :goto_2

    .line 596
    :cond_4
    const/high16 v13, 0x41000000    # 8.0f

    .line 575
    cmpl-float v13, v4, v13

    if-gtz v13, :cond_1

    goto :goto_2

    .line 603
    .end local v0    # "calcPaint":Landroid/graphics/Paint;
    .end local v2    # "fAvailableWidth":F
    .end local v3    # "fLargestLegalSizeSoFar":F
    .end local v4    # "fTrialFontSize":F
    .end local v5    # "fTrialMeasuredWidth":F
    .end local v6    # "i":I
    .end local v7    # "iArrayDialogResID":[I
    .end local v8    # "iAvailableWidth":I
    .end local v9    # "iNumStrings":I
    .end local v10    # "iTextControlWidth":I
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "strTitleToCheck":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/Exception;
    const-string v13, "MainSettingsUI"

    const-string v14, "CalcMaxDialogFontSize() Failed"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 606
    const/high16 v3, 0x42480000    # 50.0f

    goto :goto_1

    .line 552
    nop

    :array_0
    .array-data 4
        0x7f070009
        0x7f07000d
        0x7f070010
        0x7f070014
    .end array-data
.end method

.method public attachToLayout(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;Landroid/widget/RelativeLayout;)V
    .locals 10
    .param p1, "activity"    # Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;
    .param p2, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 69
    :try_start_0
    const-string v0, "MainSettingsUI"

    const-string v1, "attachToLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v9, 0x0

    .line 73
    .local v9, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 76
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsTransparentIcon:Landroid/widget/ImageView;

    .line 77
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setTransparentIconResID()V

    .line 78
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsTransparentIcon:Landroid/widget/ImageView;

    const/16 v1, 0x321

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 79
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .restart local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    const/16 v0, 0xe

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 83
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsTransparentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v9}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    .line 87
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setSolidButtonResID()V

    .line 88
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 89
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 92
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    .restart local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    const/16 v0, 0xe

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v9}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    .line 100
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const v1, 0x7f020017

    const v2, 0x7f020017

    .line 101
    const v3, 0x7f020017

    const v4, 0x7f020017

    .line 102
    const v5, 0x7f07000f

    sget v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

    iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 100
    invoke-virtual/range {v0 .. v7}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

    .line 103
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    .restart local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x2

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/16 v1, 0x328

    invoke-virtual {v0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setId(I)V

    .line 108
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {p0, v0, v9}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteCalcTitlebarIcon:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteCalcTitlebarIcon:Landroid/widget/ImageView;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    .restart local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x2

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getId()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 115
    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 117
    const/4 v2, 0x0

    const/16 v3, 0xa

    .line 116
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 118
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteCalcTitlebarIcon:Landroid/widget/ImageView;

    const/16 v1, 0x326

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 119
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteCalcTitlebarIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v9}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    sget v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fDialogTitleTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    .restart local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x8

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteCalcTitlebarIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 127
    const/4 v0, 0x1

    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteCalcTitlebarIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 128
    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 129
    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 128
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 130
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    const/16 v1, 0x327

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 131
    iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v9}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    .restart local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    const/16 v0, 0xe

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    invoke-virtual {p2, p0, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v9    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v8

    .line 139
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "MainSettingsUI"

    const-string v1, "Exception in attachToLayout()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fadeSolidToTransparent()V
    .locals 4

    .prologue
    .line 208
    :try_start_0
    const-string v2, "MainSettingsUI"

    const-string v3, "fadeSolidToTransparent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setSolidButtonResID()V

    .line 213
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    if-ne v2, v3, :cond_1

    .line 215
    :cond_0
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->killTimer()V

    .line 218
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const v3, 0x7f040003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 219
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->animListenerSolidToTransparent:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 220
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 221
    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_SOLID_TO_TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 222
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 227
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsTransparentIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MainSettingsUI"

    const-string v3, "Exception in fadeSolidToTransparent()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fadeToInvisible()V
    .locals 4

    .prologue
    .line 238
    :try_start_0
    const-string v2, "MainSettingsUI"

    const-string v3, "fadeToInvisible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->killTimer()V

    .line 244
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const v3, 0x7f040003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 245
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->animListenerHide:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 246
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 247
    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_SOLID_TO_INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 248
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 250
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const v3, 0x7f040003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 251
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 252
    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_SOLID_TO_INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 253
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsTransparentIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MainSettingsUI"

    const-string v3, "Exception in fadeToInvisible()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fadeTransparentToSolid()V
    .locals 4

    .prologue
    .line 183
    :try_start_0
    const-string v2, "MainSettingsUI"

    const-string v3, "fadeTransparentToSolid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setSolidButtonResID()V

    .line 188
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->killTimer()V

    .line 189
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setDialogTimer()V

    .line 192
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    if-ne v2, v3, :cond_0

    .line 193
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const v3, 0x7f040005

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 194
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->animListenerTransparentToSolid:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 195
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 196
    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_TRANSPARENT_TO_SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 197
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MainSettingsUI"

    const-string v3, "Exception in fadeTransparentToSolid()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hideMeasurementControls()V
    .locals 3

    .prologue
    .line 690
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteCalcTitlebarIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 691
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextTitlebar:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mWhiteTextCalcControl:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainSettingsUI"

    const-string v2, "Exception in hideMeasurementControls()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 324
    :try_start_0
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v12, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v12, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_SOLID_TO_INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    if-ne v11, v12, :cond_1

    .line 325
    :cond_0
    const/4 v11, 0x0

    .line 415
    :goto_0
    return v11

    .line 329
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 330
    .local v1, "fX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 331
    .local v2, "fY":F
    float-to-int v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 332
    .local v9, "iX":Ljava/lang/Integer;
    float-to-int v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 335
    .local v10, "iY":Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_2

    .line 336
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v11}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

    .line 338
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->killTimer()V

    .line 339
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setDialogTimer()V

    .line 341
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v12, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    if-ne v11, v12, :cond_2

    .line 342
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->fadeTransparentToSolid()V

    .line 343
    const/4 v11, 0x1

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 349
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v12, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    if-ne v11, v12, :cond_3

    .line 350
    const-string v11, "MainSettingsUI"

    const-string v12, "Received Touch-CANCEL"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v11, "MainSettingsUI"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "CANCEL x="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  CANCEL y="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setSolidButtonResID()V

    .line 353
    sget-object v11, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    iput-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 359
    :cond_3
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    .line 360
    .local v5, "iIconLeft":I
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    .line 361
    .local v6, "iIconRight":I
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    .line 362
    .local v7, "iIconTop":I
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    .line 363
    .local v4, "iIconBottom":I
    add-int/lit8 v11, v5, -0x1e

    int-to-float v11, v11

    cmpg-float v11, v1, v11

    if-ltz v11, :cond_4

    add-int/lit8 v11, v6, 0x1e

    int-to-float v11, v11

    cmpl-float v11, v1, v11

    if-gtz v11, :cond_4

    add-int/lit8 v11, v7, -0x1e

    int-to-float v11, v11

    cmpg-float v11, v2, v11

    if-ltz v11, :cond_4

    add-int/lit8 v11, v4, 0x1e

    int-to-float v11, v11

    cmpl-float v11, v2, v11

    if-lez v11, :cond_6

    .line 367
    :cond_4
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v12, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    if-ne v11, v12, :cond_5

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 369
    .local v3, "iAction":Ljava/lang/Integer;
    const-string v11, "MainSettingsUI"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Received ACTION="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  Terminating Selection"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v11, "MainSettingsUI"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ACTION x="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  ACTION y="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v3    # "iAction":Ljava/lang/Integer;
    :cond_5
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setSolidButtonResID()V

    .line 373
    sget-object v11, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    iput-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 375
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 378
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_7

    .line 379
    const-string v11, "MainSettingsUI"

    const-string v12, "Received Touch-DOWN"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v11, "MainSettingsUI"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "DOWN x="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  DOWN y="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    int-to-float v11, v5

    cmpl-float v11, v1, v11

    if-lez v11, :cond_7

    int-to-float v11, v6

    cmpg-float v11, v1, v11

    if-gez v11, :cond_7

    int-to-float v11, v7

    cmpl-float v11, v2, v11

    if-lez v11, :cond_7

    int-to-float v11, v4

    cmpg-float v11, v2, v11

    if-gez v11, :cond_7

    .line 384
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setSolidButtonSelectedResID()V

    .line 385
    sget-object v11, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    iput-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 389
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 390
    const-string v11, "MainSettingsUI"

    const-string v12, "Received Touch-UP"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v11, "MainSettingsUI"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "UP x="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  UP y="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    invoke-virtual {v11}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->ordinal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 393
    .local v8, "iState":Ljava/lang/Integer;
    const-string v11, "MainSettingsUI"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mState="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setSolidButtonResID()V

    .line 396
    add-int/lit8 v11, v5, -0x1e

    int-to-float v11, v11

    cmpl-float v11, v1, v11

    if-lez v11, :cond_9

    add-int/lit8 v11, v6, 0x1e

    int-to-float v11, v11

    cmpg-float v11, v1, v11

    if-gez v11, :cond_9

    add-int/lit8 v11, v7, -0x1e

    int-to-float v11, v11

    cmpl-float v11, v2, v11

    if-lez v11, :cond_9

    add-int/lit8 v11, v4, 0x1e

    int-to-float v11, v11

    cmpg-float v11, v2, v11

    if-gez v11, :cond_9

    .line 397
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v12, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    if-ne v11, v12, :cond_8

    .line 398
    const-string v11, "MainSettingsUI"

    const-string v12, "Tap Generated"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v11, "MainSettingsUI"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "UP x="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  UP y="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->fadeToInvisible()V

    .line 403
    iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-virtual {v11}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showSettingsCategoriesDialog()V

    .line 415
    .end local v1    # "fX":F
    .end local v2    # "fY":F
    .end local v4    # "iIconBottom":I
    .end local v5    # "iIconLeft":I
    .end local v6    # "iIconRight":I
    .end local v7    # "iIconTop":I
    .end local v8    # "iState":Ljava/lang/Integer;
    .end local v9    # "iX":Ljava/lang/Integer;
    .end local v10    # "iY":Ljava/lang/Integer;
    :cond_8
    :goto_1
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 407
    .restart local v1    # "fX":F
    .restart local v2    # "fY":F
    .restart local v4    # "iIconBottom":I
    .restart local v5    # "iIconLeft":I
    .restart local v6    # "iIconRight":I
    .restart local v7    # "iIconTop":I
    .restart local v8    # "iState":Ljava/lang/Integer;
    .restart local v9    # "iX":Ljava/lang/Integer;
    .restart local v10    # "iY":Ljava/lang/Integer;
    :cond_9
    sget-object v11, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    iput-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 411
    .end local v1    # "fX":F
    .end local v2    # "fY":F
    .end local v4    # "iIconBottom":I
    .end local v5    # "iIconLeft":I
    .end local v6    # "iIconRight":I
    .end local v7    # "iIconTop":I
    .end local v8    # "iState":Ljava/lang/Integer;
    .end local v9    # "iX":Ljava/lang/Integer;
    .end local v10    # "iY":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "MainSettingsUI"

    const-string v12, "onTouchEvent() Failed"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected setDialogTimer()V
    .locals 5

    .prologue
    .line 508
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 509
    new-instance v1, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$5;

    invoke-direct {v1, p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$5;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;)V

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mRunnable:Ljava/lang/Runnable;

    .line 522
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mHandlerTransitionTimer:Landroid/os/Handler;

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainSettingsUI"

    const-string v2, "setTimer() Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showTransparent()V
    .locals 7

    .prologue
    .line 147
    :try_start_0
    const-string v3, "MainSettingsUI"

    const-string v4, "showTransparent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 153
    const-string v4, "Settings_Display"

    const-string v5, "Screen_Enabled"

    const/4 v6, 0x1

    .line 152
    invoke-static {v3, v4, v5, v6}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 154
    .local v1, "bScreen":Z
    if-eqz v1, :cond_1

    .line 155
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setBackgroundColor(I)V

    .line 156
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mbIsBackgroundWhite:Z

    .line 162
    :goto_0
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setTransparentIconResID()V

    .line 163
    invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setSolidButtonResID()V

    .line 164
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 166
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    if-ne v3, v4, :cond_0

    .line 168
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const v4, 0x7f040002

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 169
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->animListenerInvisibleToTransparent:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 170
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 171
    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_INVISIBLE_TO_TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 172
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mViewSettingsTransparentIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v1    # "bScreen":Z
    :cond_0
    :goto_1
    return-void

    .line 159
    .restart local v1    # "bScreen":Z
    :cond_1
    const/high16 v3, -0x1000000

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->setBackgroundColor(I)V

    .line 160
    const/4 v3, 0x0

    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->mbIsBackgroundWhite:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v1    # "bScreen":Z
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MainSettingsUI"

    const-string v4, "Exception in showTransparent()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
