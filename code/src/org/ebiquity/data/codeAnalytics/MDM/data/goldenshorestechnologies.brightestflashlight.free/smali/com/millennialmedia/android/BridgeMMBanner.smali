.class Lcom/millennialmedia/android/BridgeMMBanner;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMBanner.java"


# direct methods
.method constructor <init>()V
	.locals 0

	.prologue
	.line 15
	invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

	.line 16
	return-void
.end method


# virtual methods
.method getScreenHeight(Landroid/content/Context;)I
	.locals 1
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 66
	invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->getDpiHeight(Landroid/content/Context;)Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

	move-result v0

	return v0
.end method

.method getScreenWidth(Landroid/content/Context;)I
	.locals 1
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 71
	invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->getDpiWidth(Landroid/content/Context;)Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

	move-result v0

	return v0
.end method

.method public resize(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
	.locals 18
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
	move-object/from16 v0, p0

	iget-object v2, v0, Lcom/millennialmedia/android/BridgeMMBanner;->mmWebViewRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v14

	check-cast v14, Lcom/millennialmedia/android/MMWebView;

	.line 27
	.local v14, "mmWebView":Lcom/millennialmedia/android/MMWebView;
	if-eqz v14, :cond_5

	.line 29
	invoke-virtual {v14}, Lcom/millennialmedia/android/MMWebView;->isMraidResized()Z

	move-result v2

	if-eqz v2, :cond_0

	.line 30
	const-string v2, "State is currently resized"

	invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

	move-result-object v2

	.line 61
	:goto_0
	return-object v2

	.line 31
	:cond_0
	const-string v2, "width"

	move-object/from16 v0, p1

	invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v17

	check-cast v17, Ljava/lang/String;

	.line 32
	.local v17, "widthArg":Ljava/lang/String;
	const-string v2, "height"

	move-object/from16 v0, p1

	invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v12

	check-cast v12, Ljava/lang/String;

	.line 34
	.local v12, "heightArg":Ljava/lang/String;
	const/4 v3, 0x0

	.line 35
	.local v3, "width":I
	const/4 v4, 0x0

	.line 36
	.local v4, "height":I
	invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

	move-result v2

	if-nez v2, :cond_1

	.line 37
	invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

	move-result v2

	float-to-int v3, v2

	.line 38
	:cond_1
	invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

	move-result v2

	if-nez v2, :cond_2

	.line 39
	invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

	move-result v2

	float-to-int v4, v2

	.line 41
	:cond_2
	const-string v2, "customClosePosition"

	move-object/from16 v0, p1

	invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v5

	check-cast v5, Ljava/lang/String;

	.line 42
	.local v5, "customClosePosition":Ljava/lang/String;
	const-string v2, "offsetX"

	move-object/from16 v0, p1

	invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v15

	check-cast v15, Ljava/lang/String;

	.line 43
	.local v15, "offsetXArg":Ljava/lang/String;
	const-string v2, "offsetY"

	move-object/from16 v0, p1

	invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v16

	check-cast v16, Ljava/lang/String;

	.line 44
	.local v16, "offsetYArg":Ljava/lang/String;
	const/4 v7, 0x0

	.line 45
	.local v7, "offsetY":I
	const/4 v6, 0x0

	.line 46
	.local v6, "offsetX":I
	invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

	move-result v2

	if-nez v2, :cond_3

	.line 47
	invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

	move-result v2

	float-to-int v7, v2

	.line 48
	:cond_3
	invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

	move-result v2

	if-nez v2, :cond_4

	.line 49
	invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

	move-result v2

	float-to-int v6, v2

	.line 51
	:cond_4
	const-string v2, "allowOffscreen"

	move-object/from16 v0, p1

	invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v2

	check-cast v2, Ljava/lang/String;

	invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

	move-result v8

	.line 52
	.local v8, "allowOffScreen":Z
	invoke-virtual {v14}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

	move-result-object v11

	.line 53
	.local v11, "context":Landroid/content/Context;
	invoke-static {v11}, Lcom/millennialmedia/android/MMSDK;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

	move-result-object v13

	.line 55
	.local v13, "metrics":Landroid/util/DisplayMetrics;
	move-object/from16 v0, p0

	invoke-virtual {v0, v11}, Lcom/millennialmedia/android/BridgeMMBanner;->getScreenWidth(Landroid/content/Context;)I

	move-result v9

	.line 56
	.local v9, "xMax":I
	move-object/from16 v0, p0

	invoke-virtual {v0, v11}, Lcom/millennialmedia/android/BridgeMMBanner;->getScreenHeight(Landroid/content/Context;)I

	move-result v10

	.line 57
	.local v10, "yMax":I
	new-instance v1, Lcom/millennialmedia/android/DTOResizeParameters;

	iget v2, v13, Landroid/util/DisplayMetrics;->density:F

	invoke-direct/range {v1 .. v10}, Lcom/millennialmedia/android/DTOResizeParameters;-><init>(FIILjava/lang/String;IIZII)V

	.line 58
	.local v1, "resizeParams":Lcom/millennialmedia/android/DTOResizeParameters;
	invoke-virtual {v14, v1}, Lcom/millennialmedia/android/MMWebView;->setMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V

	.line 59
	invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

	move-result-object v2

	goto/16 :goto_0

	.line 61
	.end local v1	# "resizeParams":Lcom/millennialmedia/android/DTOResizeParameters;
	.end local v3	# "width":I
	.end local v4	# "height":I
	.end local v5	# "customClosePosition":Ljava/lang/String;
	.end local v6	# "offsetX":I
	.end local v7	# "offsetY":I
	.end local v8	# "allowOffScreen":Z
	.end local v9	# "xMax":I
	.end local v10	# "yMax":I
	.end local v11	# "context":Landroid/content/Context;
	.end local v12	# "heightArg":Ljava/lang/String;
	.end local v13	# "metrics":Landroid/util/DisplayMetrics;
	.end local v15	# "offsetXArg":Ljava/lang/String;
	.end local v16	# "offsetYArg":Ljava/lang/String;
	.end local v17	# "widthArg":Ljava/lang/String;
	:cond_5
	const/4 v2, 0x0

	goto/16 :goto_0
.end method
