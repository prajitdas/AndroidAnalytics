.class Lcom/millennialmedia/android/BridgeMMInterstitial;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMInterstitial.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 18
    return-void
.end method

.method private getExpandExtrasIntent(Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/millennialmedia/android/OverlaySettings;

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 176
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    :cond_0
    const-string v1, "settings"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    const-string v1, "internalId"

    iget-wide v2, p2, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    return-object v0
.end method

.method private isForcingOrientation(Lcom/millennialmedia/android/MMJSResponse;)Z
    .locals 4
    .param p1, "response"    # Lcom/millennialmedia/android/MMJSResponse;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    iget v3, p1, Lcom/millennialmedia/android/MMJSResponse;->result:I

    if-ne v3, v2, :cond_1

    iget-object v3, p1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 215
    iget-object v0, p1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, "result":Ljava/lang/String;
    const-string v3, "portrait"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "landscape"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 218
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private setAllowOrientationChange(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "allowOrientationChange"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    .local v0, "allowOrientationChange":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->getBaseActivity()Lcom/millennialmedia/android/AdViewOverlayActivity;

    move-result-object v2

    .line 228
    .local v2, "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
    if-eqz v2, :cond_0

    .line 230
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 231
    .local v1, "canOrientationChange":Z
    invoke-virtual {v2, v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setAllowOrientationChange(Z)V

    .line 232
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 235
    .end local v1    # "canOrientationChange":Z
    .end local v2    # "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setForceOrientation(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "forceOrientation"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    .local v0, "forceOrientation":Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->getBaseActivity()Lcom/millennialmedia/android/AdViewOverlayActivity;

    move-result-object v1

    .line 245
    .local v1, "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
    if-eqz v1, :cond_1

    .line 247
    const-string v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientationPortrait()V

    .line 250
    const-string v2, "portrait"

    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 260
    .end local v1    # "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
    :goto_0
    return-object v2

    .line 252
    .restart local v1    # "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
    :cond_0
    const-string v2, "landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientationLandscape()V

    .line 255
    const-string v2, "landscape"

    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    goto :goto_0

    .line 260
    .end local v1    # "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMWebView;

    .line 44
    .local v1, "mmWebView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getMMLayout()Lcom/millennialmedia/android/MMLayout;

    move-result-object v0

    .line 47
    .local v0, "layout":Lcom/millennialmedia/android/MMLayout;
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->closeAreaTouched()V

    .line 48
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 50
    .end local v0    # "layout":Lcom/millennialmedia/android/MMLayout;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public expandToExternalBrowser(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->open(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public expandWithProperties(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "PROPERTY_BANNER_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 85
    .local v9, "isBanner":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 86
    const-string v21, "Cannot expand a non banner ad"

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v21

    .line 169
    :goto_0
    return-object v21

    .line 88
    :cond_0
    const-string v21, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 89
    .local v18, "url":Ljava/lang/String;
    const-string v21, "enableNativeAccelerometer"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 90
    .local v7, "enableNativeAccelerometer":Ljava/lang/String;
    const-string v21, "transparent"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 91
    .local v17, "transparent":Ljava/lang/String;
    const-string v21, "useCustomClose"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 92
    .local v19, "useCustomClose":Ljava/lang/String;
    const-string v21, "transition"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 93
    .local v15, "transition":Ljava/lang/String;
    const-string v21, "orientation"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 94
    .local v11, "orientation":Ljava/lang/String;
    const-string v21, "transitionDuration"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 95
    .local v16, "transitionDuration":Ljava/lang/String;
    const-string v21, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 96
    .local v8, "height":Ljava/lang/String;
    const-string v21, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 97
    .local v20, "width":Ljava/lang/String;
    const-string v21, "modal"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 98
    .local v10, "modal":Ljava/lang/String;
    const-string v21, "PROPERTY_EXPANDING"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 99
    .local v6, "creatorAdImplId":Ljava/lang/String;
    const-string v21, "allowOrientationChange"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    .local v4, "allowOrientationChange":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/BridgeMMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 101
    .local v5, "context":Landroid/content/Context;
    if-eqz v5, :cond_e

    .line 103
    new-instance v12, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v12}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    .line 104
    .local v12, "settings":Lcom/millennialmedia/android/OverlaySettings;
    if-eqz v18, :cond_1

    .line 106
    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    .line 108
    :cond_1
    if-eqz v6, :cond_2

    .line 110
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    iput-wide v0, v12, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    .line 112
    :cond_2
    if-eqz v7, :cond_3

    .line 114
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v12, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    .line 116
    :cond_3
    if-eqz v17, :cond_4

    .line 118
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/millennialmedia/android/OverlaySettings;->setIsTransparent(Z)V

    .line 120
    :cond_4
    if-eqz v19, :cond_5

    .line 122
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/millennialmedia/android/OverlaySettings;->setUseCustomClose(Z)V

    .line 124
    :cond_5
    if-eqz v15, :cond_6

    .line 126
    invoke-virtual {v12, v15}, Lcom/millennialmedia/android/OverlaySettings;->setTransition(Ljava/lang/String;)V

    .line 128
    :cond_6
    if-eqz v4, :cond_7

    .line 130
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v12, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

    .line 132
    :cond_7
    if-nez v11, :cond_8

    .line 134
    const-string v21, "forceOrientation"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "orientation":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 136
    .restart local v11    # "orientation":Ljava/lang/String;
    :cond_8
    if-eqz v11, :cond_9

    .line 138
    iput-object v11, v12, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 140
    :cond_9
    if-eqz v8, :cond_a

    .line 142
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Lcom/millennialmedia/android/OverlaySettings;->height:I

    .line 144
    :cond_a
    if-eqz v20, :cond_b

    .line 146
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Lcom/millennialmedia/android/OverlaySettings;->width:I

    .line 148
    :cond_b
    if-eqz v10, :cond_c

    .line 150
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v12, Lcom/millennialmedia/android/OverlaySettings;->modal:Z

    .line 152
    :cond_c
    if-eqz v16, :cond_d

    .line 156
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v13, v21, v23

    .line 157
    .local v13, "transTimeMillis":J
    invoke-virtual {v12, v13, v14}, Lcom/millennialmedia/android/OverlaySettings;->setTransitionDurationInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v13    # "transTimeMillis":J
    :cond_d
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/millennialmedia/android/BridgeMMInterstitial;->getExpandExtrasIntent(Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startAdViewOverlayActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 165
    const-string v21, "PROPERTY_EXPANDING"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v2

    .line 166
    .local v2, "adImplId":J
    invoke-static {v5, v2, v3}, Lcom/millennialmedia/android/MMSDK$Event;->overlayOpenedBroadCast(Landroid/content/Context;J)V

    .line 167
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v21

    goto/16 :goto_0

    .line 169
    .end local v2    # "adImplId":J
    .end local v12    # "settings":Lcom/millennialmedia/android/OverlaySettings;
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 159
    .restart local v12    # "settings":Lcom/millennialmedia/android/OverlaySettings;
    :catch_0
    move-exception v21

    goto :goto_1
.end method

.method public open(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "url"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 61
    .local v2, "context":Landroid/content/Context;
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 63
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "PROPERTY_EXPANDING"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/BridgeMMInterstitial;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v0

    .line 66
    .local v0, "adImplId":J
    const-string v5, "browser"

    invoke-static {v2, v5, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 67
    invoke-static {v2, v3}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 68
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 70
    .end local v0    # "adImplId":J
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setOrientation(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->setForceOrientation(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 206
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->isForcingOrientation(Lcom/millennialmedia/android/MMJSResponse;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    :cond_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->setAllowOrientationChange(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 208
    :cond_1
    return-object v0
.end method

.method public show(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "url"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 28
    .local v0, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {v0, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startAdViewOverlayActivityWithData(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 34
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public useCustomClose(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 187
    .local v0, "mmWebView":Lcom/millennialmedia/android/MMWebView;
    const-string v3, "useCustomClose"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "useCustomClose":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 190
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getAdViewOverlayView()Lcom/millennialmedia/android/AdViewOverlayView;

    move-result-object v1

    .line 193
    .local v1, "overlayView":Lcom/millennialmedia/android/AdViewOverlayView;
    if-eqz v1, :cond_0

    .line 195
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/millennialmedia/android/AdViewOverlayView;->setUseCustomClose(Z)V

    .line 196
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 200
    .end local v1    # "overlayView":Lcom/millennialmedia/android/AdViewOverlayView;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
