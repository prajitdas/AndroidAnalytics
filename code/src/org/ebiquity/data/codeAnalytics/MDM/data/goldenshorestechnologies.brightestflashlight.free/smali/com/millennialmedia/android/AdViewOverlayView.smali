.class Lcom/millennialmedia/android/AdViewOverlayView;
.super Lcom/millennialmedia/android/MMLayout;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;,
        Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;,
        Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;,
        Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;,
        Lcom/millennialmedia/android/AdViewOverlayView$ActivityContainer;,
        Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;,
        Lcom/millennialmedia/android/AdViewOverlayView$SavedState;,
        Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;
    }
.end annotation


# instance fields
.field private mraidCloseButton:Landroid/widget/Button;

.field mraidCloseDrawable:Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;

.field overlayActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/AdViewOverlayActivity;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressDone:Z

.field settings:Lcom/millennialmedia/android/OverlaySettings;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayActivity;Lcom/millennialmedia/android/OverlaySettings;)V
    .locals 10
    .param p1, "overlayActivity"    # Lcom/millennialmedia/android/AdViewOverlayActivity;
    .param p2, "settingsIn"    # Lcom/millennialmedia/android/OverlaySettings;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 49
    iget-object v4, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {p0, v4}, Lcom/millennialmedia/android/MMLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

    .line 51
    new-instance v4, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

    iget-object v5, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v4, p0, v5}, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    .line 52
    const/16 v4, 0x3ad6

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/AdViewOverlayView;->setId(I)V

    .line 53
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v5, "i"

    iput-object v5, v4, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "nonConfigurationInstance":Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;
    iget-object v4, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 58
    iget-object v4, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nonConfigurationInstance":Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;
    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;

    .line 59
    .restart local v0    # "nonConfigurationInstance":Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;
    if-eqz v0, :cond_7

    .line 61
    iget-boolean v4, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->progressDone:Z

    iput-boolean v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    .line 62
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v5, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v5, v4, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    .line 63
    iget-object v4, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    .line 64
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;)V

    .line 66
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring configurationinstance w/ controller= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 72
    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .local v2, "scale":F
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v4, v4, Lcom/millennialmedia/android/OverlaySettings;->height:I

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v4, v4, Lcom/millennialmedia/android/OverlaySettings;->width:I

    if-eqz v4, :cond_8

    .line 76
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v4, v4, Lcom/millennialmedia/android/OverlaySettings;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v5, v5, Lcom/millennialmedia/android/OverlaySettings;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/high16 v4, 0x3d800000    # 0.0625f

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v5, v5, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 86
    .local v3, "scaledPadding":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/millennialmedia/android/AdViewOverlayView;->setPadding(IIII)V

    .line 88
    iget-object v4, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {p0, v4, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->initMRaidCloseButton(Landroid/content/Context;F)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    .line 90
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->hasExpandUrl()Z

    move-result v4

    if-nez v4, :cond_2

    .line 92
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-wide v5, v5, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    iput-wide v5, v4, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    .line 95
    :cond_2
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v4}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 96
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 97
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;)V

    .line 98
    :cond_3
    iget-boolean v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->isFromInterstitial()Z

    move-result v4

    if-nez v4, :cond_4

    .line 100
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->initProgressBar()V

    .line 102
    :cond_4
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->getIsTransparent()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 104
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v4, v9}, Lcom/millennialmedia/android/MMWebView;->setBackgroundColor(I)V

    .line 105
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v4, v9}, Lcom/millennialmedia/android/MMAdImpl;->setBackgroundColor(I)V

    .line 112
    :goto_2
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->enableHardwareAccel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 113
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMWebView;->enableHardwareAcceleration()V

    .line 114
    :cond_5
    if-nez v0, :cond_6

    .line 115
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->animateView()V

    .line 116
    :cond_6
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->getUseCustomClose()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/AdViewOverlayView;->setUseCustomClose(Z)V

    .line 117
    return-void

    .line 69
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "scale":F
    .end local v3    # "scaledPadding":Ljava/lang/Integer;
    :cond_7
    const-string v4, "Null configurationinstance "

    invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    .restart local v2    # "scale":F
    :cond_8
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_1

    .line 109
    .restart local v3    # "scaledPadding":Ljava/lang/Integer;
    :cond_9
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v4, v8}, Lcom/millennialmedia/android/MMWebView;->setBackgroundColor(I)V

    .line 110
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v4, v8}, Lcom/millennialmedia/android/MMAdImpl;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/AdViewOverlayView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeProgressBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/AdViewOverlayView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/AdViewOverlayView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/AdViewOverlayView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->initProgressBar()V

    return-void
.end method

.method private animateView()V
    .locals 11

    .prologue
    const v4, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 173
    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v3}, Lcom/millennialmedia/android/OverlaySettings;->getTransition()Ljava/lang/String;

    move-result-object v3

    const-string v5, "slideup"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 176
    .local v0, "animation":Landroid/view/animation/Animation;
    const-string v1, "Translate up"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->getTransitionDurationInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v3}, Lcom/millennialmedia/android/OverlaySettings;->getTransition()Ljava/lang/String;

    move-result-object v3

    const-string v5, "slidedown"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 181
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    const-string v1, "Translate down"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v2}, Lcom/millennialmedia/android/OverlaySettings;->getTransition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "explode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f8ccccd    # 1.1f

    const v5, 0x3dcccccd    # 0.1f

    move-object v2, v0

    move v6, v4

    move v7, v1

    move v9, v1

    move v10, v8

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 186
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    const-string v1, "Explode"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCloseAreaParams(F)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 157
    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 158
    .local v1, "closeHeight":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v0, "closeButParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    return-object v0
.end method

.method private initMRaidCloseButton(Landroid/content/Context;F)Landroid/widget/Button;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scale"    # F

    .prologue
    .line 137
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, "mraidCloseButton":Landroid/widget/Button;
    const/16 v0, 0x12d

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setId(I)V

    .line 139
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2}, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;-><init>(ZF)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseDrawable:Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;

    .line 140
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdViewOverlayView$1;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/AdViewOverlayView;->getCloseAreaParams(F)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    .line 150
    .local v6, "closeButParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;

    iget v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;-><init>(Landroid/widget/Button;IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-object v1
.end method

.method private initProgressBar()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 121
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayActivity;

    .line 122
    .local v0, "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
    if-eqz v0, :cond_0

    .line 124
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, v0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    .line 125
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 126
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v1, "progParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .end local v1    # "progParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private removeProgressBar()V
    .locals 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    .line 266
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeView(Landroid/view/View;)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method addInlineVideo()V
    .locals 0

    .prologue
    .line 502
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->addInlineVideo()V

    .line 503
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->bringMraidCloseToFront()V

    .line 504
    return-void
.end method

.method attachWebViewToLink()V
    .locals 4

    .prologue
    .line 369
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v0, v0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->attachWebViewFromOverlay(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 371
    :cond_0
    return-void
.end method

.method bringMraidCloseToFront()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    .line 510
    :cond_0
    return-void
.end method

.method closeAreaTouched()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdViewOverlayView$2;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method

.method finishOverlayWithAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 325
    const-string v2, "Ad overlay closed"

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 327
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 330
    :cond_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 331
    .local v1, "animation":Landroid/view/animation/AlphaAnimation;
    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$3;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/AdViewOverlayView$3;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 360
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 361
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 362
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 363
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 364
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method fullScreenVideoLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 523
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeView(Landroid/view/View;)V

    .line 524
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->bringMraidCloseToFront()V

    .line 526
    return-void
.end method

.method getNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving getNonConfigurationInstance for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 250
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;-><init>(Lcom/millennialmedia/android/AdViewOverlayView$1;)V

    .line 251
    .local v0, "nonConfigurationInstance":Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->removeFromParent()V

    .line 253
    :cond_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    iput-boolean v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->progressDone:Z

    .line 254
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->controller:Lcom/millennialmedia/android/MMAdImplController;

    .line 255
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->settings:Lcom/millennialmedia/android/OverlaySettings;

    .line 257
    return-object v0
.end method

.method getWebContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "urlToLoad"    # Ljava/lang/String;

    .prologue
    .line 539
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Ljava/lang/String;)V

    .line 540
    .local v0, "task":Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 541
    return-void
.end method

.method injectJS(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsString"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImplController;->loadUrl(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method inlineConfigChange()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->bringMraidCloseToFront()V

    .line 535
    :cond_0
    return-void
.end method

.method repositionVideoLayout()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeView(Landroid/view/View;)V

    .line 516
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->bringMraidCloseToFront()V

    .line 518
    return-void
.end method

.method setUseCustomClose(Z)V
    .locals 2
    .param p1, "isHideDrawable"    # Z

    .prologue
    .line 495
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/OverlaySettings;->setUseCustomClose(Z)V

    .line 496
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseDrawable:Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;

    goto :goto_0
.end method
