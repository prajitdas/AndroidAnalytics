.class public abstract Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;
.super Landroid/widget/RelativeLayout;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomDialog"


# instance fields
.field animListenerHiddenToSolid:Landroid/view/animation/Animation$AnimationListener;

.field animListenerHide:Landroid/view/animation/Animation$AnimationListener;

.field protected bInFocusedMode:Z

.field protected final colorSelected:I

.field protected final colorUnselected:I

.field protected iIconMargins:I

.field protected iReturnIconTopMargin:I

.field public mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

.field protected mHandlerTransitionTimer:Landroid/os/Handler;

.field mRunnable:Ljava/lang/Runnable;

.field public mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

.field protected mTitlebarIcon:Landroid/widget/ImageView;

.field private mTitlebarSeparator:Landroid/widget/ImageView;

.field protected mViewReturnIcon:Landroid/widget/ImageView;

.field protected m_TextTitlebar:Landroid/widget/TextView;

.field private mbReturnIconHasFocus:Z

.field protected final mcolorTitleText:I

.field protected miDialogInactiveTimeout:I

.field protected final miIconReturnID:I

.field protected final miIconTitlebarID:I

.field protected final miTextTitlebarIconID:I

.field protected miTitleBarLineSeparatorMarginsBottom:I

.field protected miTitleBarLineSeparatorMarginsLeftRight:I

.field protected miTitleBarLineSeparatorMarginsTop:I

.field protected final miTitleBarSeparatorID:I

.field private final miTitlebarHeight:I

.field protected final selDx:I

.field protected final selDy:I

.field protected final selTextRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 34
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 35
    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mbReturnIconHasFocus:Z

    .line 41
    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->bInFocusedMode:Z

    .line 44
    iput-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarIcon:Landroid/widget/ImageView;

    .line 47
    iput-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mViewReturnIcon:Landroid/widget/ImageView;

    .line 50
    iput-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->m_TextTitlebar:Landroid/widget/TextView;

    .line 51
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mcolorTitleText:I

    .line 54
    iput-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarSeparator:Landroid/widget/ImageView;

    .line 55
    iput v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miTitlebarHeight:I

    .line 56
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miTitleBarLineSeparatorMarginsTop:I

    .line 57
    iput v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miTitleBarLineSeparatorMarginsBottom:I

    .line 58
    iput v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miTitleBarLineSeparatorMarginsLeftRight:I

    .line 61
    const/16 v0, 0x64

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miTextTitlebarIconID:I

    .line 62
    const/16 v0, 0x65

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miIconTitlebarID:I

    .line 63
    const/16 v0, 0x66

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miIconReturnID:I

    .line 64
    const/16 v0, 0x67

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miTitleBarSeparatorID:I

    .line 67
    const/16 v0, 0x3a98

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miDialogInactiveTimeout:I

    .line 70
    iput v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->iIconMargins:I

    .line 71
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->iReturnIconTopMargin:I

    .line 74
    const/16 v0, 0x42

    const/16 v1, 0xe8

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->colorSelected:I

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->selTextRadius:I

    .line 76
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->selDx:I

    .line 77
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->selDy:I

    .line 80
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->colorUnselected:I

    .line 296
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$1;

    invoke-direct {v0, p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$1;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->animListenerHiddenToSolid:Landroid/view/animation/Animation$AnimationListener;

    .line 319
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$2;

    invoke-direct {v0, p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$2;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;)V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->animListenerHide:Landroid/view/animation/Animation$AnimationListener;

    .line 340
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mHandlerTransitionTimer:Landroid/os/Handler;

    .line 341
    iput-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mRunnable:Ljava/lang/Runnable;

    .line 86
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->setBackgroundColor(I)V

    .line 87
    return-void
.end method


# virtual methods
.method protected afterLayoutChildControls()V
    .locals 8

    .prologue
    .line 175
    const/4 v2, 0x0

    .line 178
    .local v2, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :try_start_0
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->getTopLeftChildControl()Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;

    move-result-object v1

    .line 181
    .local v1, "pcTopLeftMost":Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v2    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v3, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 183
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 184
    iget v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miTitleBarLineSeparatorMarginsLeftRight:I

    iget v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miTitleBarLineSeparatorMarginsTop:I

    .line 185
    iget v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miTitleBarLineSeparatorMarginsLeftRight:I

    iget v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miTitleBarLineSeparatorMarginsBottom:I

    .line 184
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 186
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarSeparator:Landroid/widget/ImageView;

    const/16 v5, 0x67

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 187
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarSeparator:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    .end local v3    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x2

    :try_start_2
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarSeparator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 192
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 193
    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 194
    const/4 v6, 0x0

    const/16 v7, 0xa

    .line 193
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 195
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarIcon:Landroid/widget/ImageView;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 196
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    .end local v2    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x8

    :try_start_3
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 201
    const/4 v4, 0x1

    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 202
    const/16 v4, 0xf

    const/4 v5, 0x0

    .line 203
    const/4 v6, 0x0

    const/4 v7, 0x5

    .line 202
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 204
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->m_TextTitlebar:Landroid/widget/TextView;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 205
    iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->m_TextTitlebar:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v3}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 210
    .end local v1    # "pcTopLeftMost":Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
    .end local v3    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 206
    .restart local v2    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "CustomDialog"

    const-string v5, "Exception in afterLayoutChildControls()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "pcTopLeftMost":Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
    .restart local v3    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1
.end method

.method public attachToLayout(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;Landroid/widget/RelativeLayout;)V
    .locals 6
    .param p1, "activity"    # Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;
    .param p2, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :try_start_0
    iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 99
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->instantiateChildControls()V

    .line 102
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->layoutChildControls()V

    .line 105
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->setVisibility(I)V

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->setEnabled(Z)V

    .line 109
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v2, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    invoke-virtual {p2, p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .end local v2    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 113
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "CustomDialog"

    const-string v4, "Exception in attachToLayout()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1
.end method

.method protected deselectAll()V
    .locals 3

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mViewReturnIcon:Landroid/widget/ImageView;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDialog"

    const-string v2, "Exception in deselectAll()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fadeToInvisible()V
    .locals 4

    .prologue
    .line 276
    :try_start_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_SOLID_TO_HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-eq v2, v3, :cond_0

    .line 277
    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_SOLID_TO_HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 280
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->killDialogTimer()V

    .line 283
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const v3, 0x7f040003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 284
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->animListenerHide:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 285
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 287
    invoke-virtual {p0, v0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CustomDialog"

    const-string v3, "Exception in fadeToInvisible()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fadeToSolid()V
    .locals 4

    .prologue
    .line 249
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->setEnabled(Z)V

    .line 250
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->bringToFront()V

    .line 253
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->killDialogTimer()V

    .line 254
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->setDialogTimer()V

    .line 257
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    if-ne v2, v3, :cond_0

    .line 258
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 259
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->animListenerHiddenToSolid:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 260
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 261
    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_HIDDEN_TO_SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

    .line 262
    invoke-virtual {p0, v0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CustomDialog"

    const-string v3, "Exception in fadeToSolid()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getReturnFocusState()Z
    .locals 3

    .prologue
    .line 404
    :try_start_0
    iget-boolean v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mbReturnIconHasFocus:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDialog"

    const-string v2, "Exception in getReturnFocusState()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getTitlebarIconResID()I
.end method

.method protected abstract getTitlebarTextResID()I
.end method

.method protected abstract getTopLeftChildControl()Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
.end method

.method protected instantiateChildControls()V
    .locals 4

    .prologue
    .line 127
    :try_start_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarIcon:Landroid/widget/ImageView;

    .line 128
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->getTitlebarIconResID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->m_TextTitlebar:Landroid/widget/TextView;

    .line 132
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->m_TextTitlebar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->getTitlebarTextResID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->m_TextTitlebar:Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fDialogTitleTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->m_TextTitlebar:Landroid/widget/TextView;

    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mcolorTitleText:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarSeparator:Landroid/widget/ImageView;

    .line 138
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mTitlebarSeparator:Landroid/widget/ImageView;

    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mcolorTitleText:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 141
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mViewReturnIcon:Landroid/widget/ImageView;

    .line 142
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mViewReturnIcon:Landroid/widget/ImageView;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDialog"

    const-string v2, "Exception in instantiateChildControls()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected killDialogTimer()V
    .locals 3

    .prologue
    .line 371
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mHandlerTransitionTimer:Landroid/os/Handler;

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDialog"

    const-string v2, "killDialogTimer() Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected layoutChildControls()V
    .locals 6

    .prologue
    .line 157
    :try_start_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v1, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->iIconMargins:I

    iget v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->iReturnIconTopMargin:I

    iget v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->iIconMargins:I

    iget v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->iIconMargins:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mViewReturnIcon:Landroid/widget/ImageView;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 162
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mViewReturnIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1    # "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomDialog"

    const-string v3, "Exception in instantiateChildControls()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract setControlsTextSize(F)V
.end method

.method protected setDialogTimer()V
    .locals 5

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 345
    new-instance v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$3;

    invoke-direct {v1, p0}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$3;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;)V

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mRunnable:Ljava/lang/Runnable;

    .line 360
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mHandlerTransitionTimer:Landroid/os/Handler;

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->miDialogInactiveTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDialog"

    const-string v2, "setDialogTimer() Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDialogTitleTextSize(F)V
    .locals 3
    .param p1, "fNewSize"    # F

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->m_TextTitlebar:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDialog"

    const-string v2, "Exception in setDialogTitleTextSize()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected setReturnFocused(Z)V
    .locals 3
    .param p1, "bIsFocused"    # Z

    .prologue
    .line 384
    :try_start_0
    iput-boolean p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mbReturnIconHasFocus:Z

    .line 386
    if-eqz p1, :cond_0

    .line 388
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mViewReturnIcon:Landroid/widget/ImageView;

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;->mViewReturnIcon:Landroid/widget/ImageView;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDialog"

    const-string v2, "Exception in setReturnFocused()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
