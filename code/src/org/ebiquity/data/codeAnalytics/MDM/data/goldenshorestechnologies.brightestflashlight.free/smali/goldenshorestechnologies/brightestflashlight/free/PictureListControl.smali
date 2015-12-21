.class public Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;
.super Landroid/widget/LinearLayout;
.source "PictureListControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PictureListControl"


# instance fields
.field protected final colorSelected:I

.field protected final colorTextUnselected:I

.field protected final iStandardTextSize:I

.field mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

.field protected mBackgroundImage:Landroid/widget/ImageView;

.field protected mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

.field protected mIcon:Landroid/widget/ImageView;

.field private mRoundRectShape:Landroid/graphics/drawable/shapes/RoundRectShape;

.field private mRoundRectShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field public mTextLabel:Landroid/widget/TextView;

.field private mbIsFocused:Z

.field public miIconCheckedResID:I

.field public miIconCheckedSelectedResID:I

.field protected final miIconID:I

.field protected miIconLeftMargins:I

.field protected miIconMargins:I

.field public miIconUncheckedResID:I

.field public miIconUncheckedSelectedResID:I

.field protected miTextBottomMargin:I

.field protected final miTextLabelID:I

.field protected miTextMargins:I

.field protected final selDx:I

.field protected final selDy:I

.field protected final selTextRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mActivityParent:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .line 38
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    .line 41
    iput-boolean v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mbIsFocused:Z

    .line 45
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mBackgroundImage:Landroid/widget/ImageView;

    .line 48
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mRoundRectShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 49
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mRoundRectShape:Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 52
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mIcon:Landroid/widget/ImageView;

    .line 55
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconUncheckedResID:I

    .line 56
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconCheckedResID:I

    .line 57
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconUncheckedSelectedResID:I

    .line 58
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconCheckedSelectedResID:I

    .line 61
    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    .line 64
    const/16 v0, 0xc8

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miTextLabelID:I

    .line 65
    const/16 v0, 0xc9

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconID:I

    .line 68
    iput v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconMargins:I

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconLeftMargins:I

    .line 70
    iput v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miTextMargins:I

    .line 71
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miTextBottomMargin:I

    .line 74
    const/16 v0, 0x42

    const/16 v1, 0xe8

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->colorSelected:I

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->selTextRadius:I

    .line 76
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->selDx:I

    .line 77
    iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->selDy:I

    .line 80
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->colorTextUnselected:I

    .line 81
    const/16 v0, 0x28

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->iStandardTextSize:I

    .line 89
    const v0, 0x7f020009

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconCheckedSelectedResID:I

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconUncheckedSelectedResID:I

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconCheckedResID:I

    iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconUncheckedResID:I

    .line 93
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setGravity(I)V

    .line 94
    return-void
.end method


# virtual methods
.method public deselect()V
    .locals 3

    .prologue
    .line 170
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setBackgroundResource(I)V

    .line 172
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    if-ne v1, v2, :cond_0

    .line 173
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    .line 176
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->UNCHECKED_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    if-ne v1, v2, :cond_1

    .line 177
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->UNCHECKED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PictureListControl"

    const-string v2, "Exception in deselect()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getChecked()Z
    .locals 4

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "bAreWeChecked":Z
    :try_start_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_1

    .line 275
    :cond_0
    const/4 v0, 0x1

    .line 281
    .end local v0    # "bAreWeChecked":Z
    :cond_1
    :goto_0
    return v0

    .line 278
    .restart local v0    # "bAreWeChecked":Z
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PictureListControl"

    const-string v3, "Exception in getChecked()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusState()Z
    .locals 3

    .prologue
    .line 307
    :try_start_0
    iget-boolean v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mbIsFocused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PictureListControl"

    const-string v2, "Exception in getFocusState()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initialize(IIIIIFLgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
    .locals 8
    .param p1, "iIconUncheckedResID"    # I
    .param p2, "iIconCheckedResID"    # I
    .param p3, "iIconUncheckedSelectedResID"    # I
    .param p4, "iIconCheckedSelectedResID"    # I
    .param p5, "iLabelResID"    # I
    .param p6, "fTextSize"    # F
    .param p7, "activity"    # Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

    .prologue
    .line 104
    :try_start_0
    iput p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconUncheckedResID:I

    .line 105
    iput p2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconCheckedResID:I

    .line 106
    iput p3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconUncheckedSelectedResID:I

    .line 107
    iput p4, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconCheckedSelectedResID:I

    .line 110
    const/high16 v4, 0x41400000    # 12.0f

    .line 111
    .local v4, "fRoundRectCornerRadius":F
    const/16 v5, 0x8

    new-array v2, v5, [F

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v5, 0x2

    .line 112
    aput v4, v2, v5

    const/4 v5, 0x3

    aput v4, v2, v5

    const/4 v5, 0x4

    aput v4, v2, v5

    const/4 v5, 0x5

    aput v4, v2, v5

    const/4 v5, 0x6

    .line 113
    aput v4, v2, v5

    const/4 v5, 0x7

    aput v4, v2, v5

    .line 114
    .local v2, "fArrayRoundRectCornerRadius":[F
    const/4 v5, 0x2

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    .line 115
    .local v3, "fDashPathOn1Off3":[F
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 116
    .local v0, "dashPathEffect":Landroid/graphics/DashPathEffect;
    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v2, v6, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mRoundRectShape:Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 117
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mRoundRectShape:Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mRoundRectShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 118
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mRoundRectShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mRoundRectShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mRoundRectShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 123
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mIcon:Landroid/widget/ImageView;

    .line 124
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mIcon:Landroid/widget/ImageView;

    iget v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconUncheckedResID:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->UNCHECKED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    .line 128
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    .line 129
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    invoke-virtual {v5, p5}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    invoke-virtual {v5, p6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    iget v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->colorTextUnselected:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->layoutChildControls()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "dashPathEffect":Landroid/graphics/DashPathEffect;
    .end local v2    # "fArrayRoundRectCornerRadius":[F
    .end local v3    # "fDashPathOn1Off3":[F
    .end local v4    # "fRoundRectCornerRadius":F
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PictureListControl"

    const-string v6, "initialize() Failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 114
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method protected layoutChildControls()V
    .locals 6

    .prologue
    .line 147
    :try_start_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    .line 148
    const/4 v3, -0x2

    .line 147
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v1, "linLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconLeftMargins:I

    iget v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconMargins:I

    iget v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconMargins:I

    iget v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconMargins:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 150
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mIcon:Landroid/widget/ImageView;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 151
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "linLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    .restart local v1    # "linLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miTextMargins:I

    iget v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miTextMargins:I

    iget v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miTextMargins:I

    iget v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miTextBottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 156
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 157
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "linLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PictureListControl"

    const-string v3, "Exception in layoutChildControls()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public select()V
    .locals 3

    .prologue
    .line 194
    const v1, 0x7f020006

    :try_start_0
    invoke-virtual {p0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setBackgroundResource(I)V

    .line 196
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    if-ne v1, v2, :cond_0

    .line 197
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    .line 200
    :cond_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->UNCHECKED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    if-ne v1, v2, :cond_1

    .line 201
    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->UNCHECKED_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PictureListControl"

    const-string v2, "Exception in select()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "bIsChecked"    # Z

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "bAreWeSelected":Z
    :try_start_0
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->UNCHECKED_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    if-ne v2, v3, :cond_1

    .line 240
    :cond_0
    const/4 v0, 0x1

    .line 243
    :cond_1
    if-eqz p1, :cond_3

    .line 244
    if-eqz v0, :cond_2

    .line 245
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mIcon:Landroid/widget/ImageView;

    iget v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconCheckedSelectedResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    .line 268
    :goto_0
    return-void

    .line 249
    :cond_2
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mIcon:Landroid/widget/ImageView;

    iget v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconCheckedResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PictureListControl"

    const-string v3, "Exception in setChecked()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v0, :cond_4

    .line 256
    :try_start_1
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mIcon:Landroid/widget/ImageView;

    iget v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconUncheckedSelectedResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->UNCHECKED_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    goto :goto_0

    .line 260
    :cond_4
    iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mIcon:Landroid/widget/ImageView;

    iget v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->miIconUncheckedResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->UNCHECKED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setFocused(Z)V
    .locals 3
    .param p1, "bIsFocused"    # Z

    .prologue
    .line 288
    :try_start_0
    iput-boolean p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mbIsFocused:Z

    .line 290
    if-eqz p1, :cond_0

    .line 292
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mRoundRectShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PictureListControl"

    const-string v2, "Exception in setFocused()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLabelTextSize(F)V
    .locals 3
    .param p1, "fNewSize"    # F

    .prologue
    .line 318
    :try_start_0
    iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mTextLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PictureListControl"

    const-string v2, "Exception in setLabelTextSize()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public toggleChecked()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "bAreWeChecked":Z
    :try_start_0
    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->mControlState:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;->CHECKED_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl$ControlState;

    if-ne v3, v4, :cond_1

    .line 219
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V

    .line 220
    const/4 v0, 0x0

    .line 231
    .end local v0    # "bAreWeChecked":Z
    :goto_0
    return v0

    .line 223
    .restart local v0    # "bAreWeChecked":Z
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/PictureListControl;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PictureListControl"

    const-string v4, "Exception in toggleChecked()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 231
    goto :goto_0
.end method
