.class public final Lcom/millennialmedia/android/MMAdView;
.super Lcom/millennialmedia/android/MMLayout;
.source "MMAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdView$1;,
        Lcom/millennialmedia/android/MMAdView$BannerBounds;,
        Lcom/millennialmedia/android/MMAdView$ResizeView;,
        Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;
    }
.end annotation


# static fields
.field static final DEFAULT_RESIZE_PARAM_VALUES:I = -0x32

.field public static final TRANSITION_DOWN:I = 0x3

.field public static final TRANSITION_FADE:I = 0x1

.field public static final TRANSITION_NONE:I = 0x0

.field public static final TRANSITION_RANDOM:I = 0x4

.field public static final TRANSITION_UP:I = 0x2


# instance fields
.field height:I

.field oldHeight:I

.field oldWidth:I

.field refreshAnimationimageView:Landroid/widget/ImageView;

.field transitionType:I

.field view:Lcom/millennialmedia/android/MMAdView$ResizeView;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/16 v1, -0x32

    .line 51
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 42
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    .line 43
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    .line 449
    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    .line 450
    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    .line 52
    new-instance v0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    .line 53
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, -0x32

    const/4 v5, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v3, 0x4

    iput v3, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 42
    iput v5, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    .line 43
    iput v5, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    .line 449
    iput v4, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    .line 450
    iput v4, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    .line 76
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 78
    const-string v3, "Creating MMAdView from XML layout."

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 79
    new-instance v3, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {v3, p0, p1}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    .line 80
    if-eqz p2, :cond_3

    .line 82
    const-string v1, "http://millennialmedia.com/android/schema"

    .line 83
    .local v1, "namespace":Ljava/lang/String;
    const-string v3, "apid"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v4, "ignoreDensityScaling"

    invoke-interface {p2, v1, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    .line 85
    const-string v3, "height"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "heightIn":Ljava/lang/String;
    const-string v3, "width"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "widthIn":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    .line 91
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/MMAdView;->width:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "age"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

    .line 101
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "children"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "education"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

    .line 103
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "ethnicity"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

    .line 104
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "gender"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "income"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "keywords"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "orientation"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

    .line 108
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "marital"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "politics"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

    .line 110
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "vendor"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

    .line 111
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v4, "zip"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

    .line 113
    :cond_2
    const-string v3, "goalId"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/MMAdView;->goalId:Ljava/lang/String;

    .line 115
    .end local v0    # "heightIn":Ljava/lang/String;
    .end local v1    # "namespace":Ljava/lang/String;
    .end local v2    # "widthIn":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/millennialmedia/android/MMAdImpl;->xmlLayout:Z

    .line 116
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    .line 122
    :goto_1
    return-void

    .line 120
    :cond_4
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->initEclipseAd(Landroid/content/Context;)V

    goto :goto_1

    .line 94
    .restart local v0    # "heightIn":Ljava/lang/String;
    .restart local v1    # "namespace":Ljava/lang/String;
    .restart local v2    # "widthIn":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->attachToWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->detachFromParent(Landroid/view/View;)V

    return-void
.end method

.method private declared-synchronized attachToWindow(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->detachFromParent(Landroid/view/View;)V

    .line 505
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 506
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_0

    instance-of v6, v2, Landroid/app/Activity;

    if-eqz v6, :cond_0

    .line 508
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 509
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 510
    .local v5, "win":Landroid/view/Window;
    if-eqz v5, :cond_0

    .line 512
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 513
    .local v3, "decorView":Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 515
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 516
    .local v4, "group":Landroid/view/ViewGroup;
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v3    # "decorView":Landroid/view/View;
    .end local v4    # "group":Landroid/view/ViewGroup;
    .end local v5    # "win":Landroid/view/Window;
    :cond_0
    monitor-exit p0

    return-void

    .line 504
    .end local v2    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private callSetTranslationX(I)V
    .locals 6
    .param p1, "translationX"    # I

    .prologue
    .line 604
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setTranslationX"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 605
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private callSetTranslationY(I)V
    .locals 6
    .param p1, "translationY"    # I

    .prologue
    .line 616
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setTranslationY"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 617
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized detachFromParent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 490
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 493
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 495
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 496
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 497
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_0
    monitor-exit p0

    return-void

    .line 490
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAdInternal()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->requestAd()V

    .line 428
    :cond_0
    return-void
.end method

.method private hasDefaultResizeParams()Z
    .locals 2

    .prologue
    const/16 v1, -0x32

    .line 644
    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V

    .line 128
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v1, "b"

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    .line 129
    invoke-virtual {p0, p0}, Lcom/millennialmedia/android/MMAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setFocusable(Z)V

    .line 133
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    return-void
.end method

.method private initEclipseAd(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 144
    .local v8, "logoForXML":Landroid/widget/ImageView;
    const-string v6, "http://images.millennialmedia.com/9513/192134.gif"

    .line 145
    .local v6, "imageUrl":Ljava/lang/String;
    const/4 v7, 0x0

    .line 146
    .local v7, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 149
    .local v9, "out":Ljava/io/OutputStream;
    :try_start_0
    const-string v11, "java.io.tmpdir"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "dir":Ljava/lang/String;
    if-eqz v4, :cond_0

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 151
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "millenial355jns6u3l1nmedia.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 156
    new-instance v11, Ljava/net/URL;

    const-string v12, "http://images.millennialmedia.com/9513/192134.gif"

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 157
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 158
    const/16 v11, 0xbb8

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 159
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 161
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 162
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v9    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    const/16 v11, 0x400

    :try_start_1
    new-array v1, v11, [B

    .line 164
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 165
    .local v2, "bytesRead":I
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    .line 167
    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 175
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v11

    move-object v9, v10

    .line 183
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :goto_1
    if-eqz v7, :cond_1

    .line 184
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 185
    :cond_1
    if-eqz v9, :cond_2

    .line 186
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 192
    :cond_2
    :goto_2
    invoke-virtual {p0, v8}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V

    .line 193
    return-void

    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v10    # "out":Ljava/io/OutputStream;
    :cond_3
    move-object v9, v10

    .line 170
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :cond_4
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    :cond_5
    if-eqz v7, :cond_6

    .line 184
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 185
    :cond_6
    if-eqz v9, :cond_2

    .line 186
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 188
    :catch_1
    move-exception v11

    goto :goto_2

    .line 181
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :catchall_0
    move-exception v11

    .line 183
    :goto_3
    if-eqz v7, :cond_7

    .line 184
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 185
    :cond_7
    if-eqz v9, :cond_8

    .line 186
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 190
    :cond_8
    :goto_4
    throw v11

    .line 188
    :catch_2
    move-exception v12

    goto :goto_4

    .line 181
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v10    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 188
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :catch_3
    move-exception v11

    goto :goto_2

    .line 175
    :catch_4
    move-exception v11

    goto :goto_1
.end method

.method private setUnresizeParameters()V
    .locals 2

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->hasDefaultResizeParams()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 629
    .local v0, "oldParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    .line 630
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    .line 631
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    if-gtz v1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    .line 635
    :cond_0
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    if-gtz v1, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    .line 640
    .end local v0    # "oldParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic addBlackView()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->addBlackView()V

    return-void
.end method

.method closeAreaTouched()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->unresizeToDefault()V

    .line 249
    return-void
.end method

.method public getAd()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->getAd(Lcom/millennialmedia/android/RequestListener;)V

    .line 409
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAdInternal()V

    goto :goto_0
.end method

.method public getAd(Lcom/millennialmedia/android/RequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/millennialmedia/android/RequestListener;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAdInternal()V

    .line 420
    return-void
.end method

.method public bridge synthetic getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getListener()Lcom/millennialmedia/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getMMRequest()Lcom/millennialmedia/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 12
    .param p1, "resizeParams"    # Lcom/millennialmedia/android/DTOResizeParameters;

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 525
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 527
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    if-nez v8, :cond_0

    .line 529
    new-instance v8, Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/millennialmedia/android/MMAdView$ResizeView;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    .line 530
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    const v9, 0x121f0dbe

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setId(I)V

    .line 531
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setBackgroundColor(I)V

    .line 534
    :cond_0
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v8}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 535
    .local v5, "parent":Landroid/view/ViewParent;
    if-nez v5, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 538
    .local v0, "adViewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v8, v0, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    .line 539
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "adViewParent":Landroid/view/ViewParent;
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 541
    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMAdView$BannerBounds;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

    .line 543
    .local v1, "bounds":Lcom/millennialmedia/android/MMAdView$BannerBounds;
    iget-boolean v8, p1, Lcom/millennialmedia/android/DTOResizeParameters;->allowOffScreen:Z

    if-nez v8, :cond_2

    .line 545
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateOnScreenBounds()V

    .line 548
    :cond_2
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 549
    .local v4, "location":[I
    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    .line 551
    invoke-direct {p0, p0}, Lcom/millennialmedia/android/MMAdView;->attachToWindow(Landroid/view/View;)V

    .line 552
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 553
    .local v3, "locAfterAttach":[I
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    .line 555
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->setUnresizeParameters()V

    .line 557
    const/4 v8, 0x0

    aget v8, v4, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    sub-int v6, v8, v9

    .line 558
    .local v6, "xOld":I
    const/4 v8, 0x1

    aget v8, v4, v8

    const/4 v9, 0x1

    aget v9, v3, v9

    sub-int v7, v8, v9

    .line 560
    .local v7, "yOld":I
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 561
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 562
    iget v8, v1, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationX:I

    add-int/2addr v8, v6

    invoke-direct {p0, v8}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationX(I)V

    .line 563
    iget v8, v1, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationY:I

    add-int/2addr v8, v7

    invoke-direct {p0, v8}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationY(I)V

    .line 564
    iget-object v8, p1, Lcom/millennialmedia/android/DTOResizeParameters;->customClosePosition:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/millennialmedia/android/MMAdView;->setCloseArea(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    .end local v1    # "bounds":Lcom/millennialmedia/android/MMAdView$BannerBounds;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "locAfterAttach":[I
    .end local v4    # "location":[I
    .end local v5    # "parent":Landroid/view/ViewParent;
    .end local v6    # "xOld":I
    .end local v7    # "yOld":I
    :cond_3
    monitor-exit p0

    return-void

    .line 524
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method declared-synchronized handleUnresize()V
    .locals 5

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 572
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->removeCloseTouchDelegate()V

    .line 573
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->hasDefaultResizeParams()Z

    move-result v4

    if-nez v4, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 576
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 577
    iget v4, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 578
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationX(I)V

    .line 579
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationY(I)V

    .line 580
    const/16 v4, -0x32

    iput v4, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    .line 581
    const/16 v4, -0x32

    iput v4, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    .line 583
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    if-eqz v4, :cond_2

    .line 585
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/millennialmedia/android/MMAdView;->isResizing:Z

    .line 586
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v4, p0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->attachToContext(Landroid/view/View;)V

    .line 587
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 588
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 590
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 591
    .local v1, "group":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 592
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 594
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/millennialmedia/android/MMAdView;->isResizing:Z

    .line 596
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_2
    const v4, -0xffff01

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    :cond_3
    monitor-exit p0

    return-void

    .line 570
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On click for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " view, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adimpl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 203
    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 204
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 209
    invoke-super/range {p0 .. p5}, Lcom/millennialmedia/android/MMLayout;->onLayout(ZIIII)V

    .line 210
    const-string v1, "AdView onLayout changed%b int left %d int top %d int right %d int bottom %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 213
    .local v0, "density":F
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    if-gtz v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    .line 215
    :cond_0
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    if-gtz v1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    .line 217
    :cond_1
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "windowInFocus"    # Z

    .prologue
    .line 433
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->onWindowFocusChanged(Z)V

    .line 434
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdImplController;->getWebViewFromExistingAdImpl(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v1, v1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/MMWebView;->isCurrentParent(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->removeFromParent()V

    .line 444
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V

    .line 447
    :cond_1
    return-void
.end method

.method public bridge synthetic removeBlackView()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->removeBlackView()V

    return-void
.end method

.method public bridge synthetic setApid(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setApid(Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    .line 227
    return-void
.end method

.method public bridge synthetic setIgnoresDensityScaling(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setIgnoresDensityScaling(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/android/RequestListener;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    return-void
.end method

.method public bridge synthetic setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/android/MMRequest;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    return-void
.end method

.method public setTransitionType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 243
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    .line 237
    return-void
.end method
