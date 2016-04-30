.class abstract Lcom/millennialmedia/android/MMAdImpl;
.super Ljava/lang/Object;
.source "MMAdImpl.java"

# interfaces
.implements Lcom/millennialmedia/android/MMAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;,
		Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;
	}
.end annotation


# static fields
.field private static nextAdViewId:J


# instance fields
.field adProperties:Lcom/millennialmedia/android/AdProperties;

.field adType:Ljava/lang/String;

.field apid:Ljava/lang/String;

.field contextRef:Ljava/lang/ref/WeakReference;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Ljava/lang/ref/WeakReference",
			"<",
			"Landroid/content/Context;",
			">;"
		}
	.end annotation
.end field

.field controller:Lcom/millennialmedia/android/MMAdImplController;

.field ignoreDensityScaling:Z

.field internalId:J

.field isFinishing:Z

.field lastAdRequest:J

.field linkForExpansionId:J

.field protected mmRequest:Lcom/millennialmedia/android/MMRequest;

.field mmWebViewClient:Lcom/millennialmedia/android/MMWebViewClient;

.field mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

.field obj:Lorg/json/JSONObject;

.field requestListener:Lcom/millennialmedia/android/RequestListener;

.field userData:Ljava/lang/String;

.field xmlLayout:Z


# direct methods
.method static constructor <clinit>()V
	.locals 2

	.prologue
	.line 38
	const-wide/16 v0, 0x1

	sput-wide v0, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

	return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
	.locals 6
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	const/4 v1, 0x0

	.line 69
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 21
	iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

	.line 22
	const-string v0, "28911"

	iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

	.line 36
	iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->xmlLayout:Z

	.line 70
	new-instance v0, Ljava/lang/ref/WeakReference;

	invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

	iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

	.line 71
	new-instance v0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;

	invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

	iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

	.line 73
	const-class v1, Lcom/millennialmedia/android/MMAdImpl;

	monitor-enter v1

	.line 75
	:try_start_0
	sget-wide v2, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

	iput-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	.line 76
	sget-wide v2, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

	const-wide/16 v4, 0x1

	add-long/2addr v2, v4

	sput-wide v2, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

	.line 77
	const-string v0, "Assigning MMAdImpl internal id: %d"

	const/4 v2, 0x1

	new-array v2, v2, [Ljava/lang/Object;

	const/4 v3, 0x0

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	aput-object v4, v2, v3

	invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 78
	monitor-exit v1

	.line 79
	return-void

	.line 78
	:catchall_0
	move-exception v0

	monitor-exit v1
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	throw v0
.end method

.method static getAdTypes()[Ljava/lang/String;
	.locals 3

	.prologue
	.line 216
	const/4 v0, 0x2

	new-array v0, v0, [Ljava/lang/String;

	const/4 v1, 0x0

	const-string v2, "b"

	aput-object v2, v0, v1

	const/4 v1, 0x1

	const-string v2, "i"

	aput-object v2, v0, v1

	return-object v0
.end method


# virtual methods
.method addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
	.locals 0
	.param p1, "webView"	# Lcom/millennialmedia/android/MMWebView;
	.param p2, "webLayoutParams"	# Landroid/widget/RelativeLayout$LayoutParams;

	.prologue
	.line 298
	return-void
.end method

.method animateTransition()V
	.locals 0

	.prologue
	.line 200
	return-void
.end method

.method getAdProperties()Lorg/json/JSONObject;
	.locals 1

	.prologue
	.line 318
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->adProperties:Lcom/millennialmedia/android/AdProperties;

	if-eqz v0, :cond_0

	.line 319
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->adProperties:Lcom/millennialmedia/android/AdProperties;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdProperties;->getAdProperties()Lorg/json/JSONObject;

	move-result-object v0

	.line 320
	:goto_0
	return-object v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method public getApid()Ljava/lang/String;
	.locals 1

	.prologue
	.line 97
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

	return-object v0
.end method

.method getCachedName()Ljava/lang/String;
	.locals 2

	.prologue
	.line 211
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

	if-eqz v0, :cond_0

	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, "_"

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	:goto_0
	return-object v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method abstract getCallingAd()Lcom/millennialmedia/android/MMAd;
.end method

.method getContext()Landroid/content/Context;
	.locals 1

	.prologue
	.line 204
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

	if-eqz v0, :cond_0

	.line 205
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Landroid/content/Context;

	.line 206
	:goto_0
	return-object v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method getId()I
	.locals 1

	.prologue
	.line 156
	const/4 v0, -0x1

	return v0
.end method

.method public getIgnoresDensityScaling()Z
	.locals 1

	.prologue
	.line 135
	iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

	return v0
.end method

.method public getListener()Lcom/millennialmedia/android/RequestListener;
	.locals 1

	.prologue
	.line 118
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

	return-object v0
.end method

.method public getMMRequest()Lcom/millennialmedia/android/MMRequest;
	.locals 1

	.prologue
	.line 150
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

	return-object v0
.end method

.method getMMWebViewClient()Lcom/millennialmedia/android/MMWebViewClient;
	.locals 3

	.prologue
	.line 231
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	const-string v1, "Returning a client for user: DefaultWebViewClient, adimpl="

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 232
	new-instance v0, Lcom/millennialmedia/android/BannerWebViewClient;

	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

	new-instance v2, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;

	invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

	invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/BannerWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

	return-object v0
.end method

.method getReqType()Ljava/lang/String;
	.locals 1

	.prologue
	.line 238
	const-string v0, "fetch"

	return-object v0
.end method

.method getRequestCompletedAction()Ljava/lang/String;
	.locals 1

	.prologue
	.line 226
	const-string v0, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

	return-object v0
.end method

.method getRequestFailedAction()Ljava/lang/String;
	.locals 1

	.prologue
	.line 221
	const-string v0, "millennialmedia.action.ACTION_FETCH_FAILED"

	return-object v0
.end method

.method public hasCachedVideoSupport()Z
	.locals 1

	.prologue
	.line 243
	const/4 v0, 0x1

	return v0
.end method

.method insertUrlAdMetaValues(Ljava/util/Map;)V
	.locals 3
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;)V"
		}
	.end annotation

	.prologue
	.line 255
	.local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v0

	.line 257
	.local v0, "context":Landroid/content/Context;
	const-string v1, "ar"

	const-string v2, "manual"

	invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 258
	const-string v1, "sdkapid"

	iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

	invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 259
	const-string v1, "do"

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

	move-result-object v2

	invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 260
	const-string v1, "olock"

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getOrientationLocked(Landroid/content/Context;)Ljava/lang/String;

	move-result-object v2

	invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 261
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->hasCachedVideoSupport()Z

	move-result v1

	if-nez v1, :cond_0

	.line 262
	const-string v1, "cachedvideo"

	const-string v2, "false"

	invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 263
	:cond_0
	const-string v1, "reqtype"

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getReqType()Ljava/lang/String;

	move-result-object v2

	invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 265
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

	if-eqz v1, :cond_1

	.line 266
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

	invoke-virtual {v1, p1}, Lcom/millennialmedia/android/MMRequest;->getUrlParams(Ljava/util/Map;)V

	.line 268
	:cond_1
	invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

	move-result-object v1

	iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/HandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z

	move-result v1

	if-eqz v1, :cond_3

	.line 269
	const-string v1, "video"

	const-string v2, "true"

	invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 273
	:goto_0
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	if-eqz v1, :cond_5

	.line 275
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	const-string v2, "b"

	invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-nez v1, :cond_2

	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	const-string v2, "i"

	invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-eqz v1, :cond_4

	.line 277
	:cond_2
	const-string v1, "at"

	iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 289
	:goto_1
	return-void

	.line 271
	:cond_3
	const-string v1, "video"

	const-string v2, "false"

	invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	goto :goto_0

	.line 281
	:cond_4
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS ("

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, ") **********"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	goto :goto_1

	.line 286
	:cond_5
	const-string v1, "******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********"

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	.line 287
	const-string v1, "at"

	const-string v2, "b"

	invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	goto :goto_1
.end method

.method public isBanner()Z
	.locals 1

	.prologue
	.line 248
	const/4 v0, 0x0

	return v0
.end method

.method isLifecycleObservable()Z
	.locals 1

	.prologue
	.line 384
	const/4 v0, 0x0

	return v0
.end method

.method isRefreshable()Z
	.locals 9

	.prologue
	const/4 v4, 0x1

	const/4 v3, 0x0

	.line 170
	sget-boolean v5, Lcom/millennialmedia/android/MMSDK;->disableAdMinRefresh:Z

	if-eqz v5, :cond_0

	.line 172
	const-string v4, "Requesting of ads disabled by server"

	invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 184
	:goto_0
	return v3

	.line 175
	:cond_0
	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v0

	.line 176
	.local v0, "currentTime":J
	iget-wide v5, p0, Lcom/millennialmedia/android/MMAdImpl;->lastAdRequest:J

	sub-long v5, v0, v5

	const-wide/16 v7, 0x3e8

	div-long/2addr v5, v7

	long-to-int v2, v5

	.line 177
	.local v2, "lastRequestSecs":I
	int-to-long v5, v2

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v7

	invoke-static {v7}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

	move-result-object v7

	iget-wide v7, v7, Lcom/millennialmedia/android/HandShake;->adRefreshSecs:J

	cmp-long v5, v5, v7

	if-ltz v5, :cond_1

	.line 179
	iput-wide v0, p0, Lcom/millennialmedia/android/MMAdImpl;->lastAdRequest:J

	move v3, v4

	.line 180
	goto :goto_0

	.line 183
	:cond_1
	const-string v5, "Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds."

	const/4 v6, 0x2

	new-array v6, v6, [Ljava/lang/Object;

	invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v7

	aput-object v7, v6, v3

	rsub-int/lit8 v7, v2, 0xf

	invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v7

	aput-object v7, v6, v4

	invoke-static {v5, v6}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

	goto :goto_0
.end method

.method isTransitionAnimated()Z
	.locals 1

	.prologue
	.line 189
	const/4 v0, 0x0

	return v0
.end method

.method isUpdatingMraid()Z
	.locals 1

	.prologue
	.line 325
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	iget-boolean v0, v0, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

	if-nez v0, :cond_0

	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method prepareTransition(Landroid/graphics/Bitmap;)V
	.locals 0
	.param p1, "bitmap"	# Landroid/graphics/Bitmap;

	.prologue
	.line 195
	return-void
.end method

.method removeView(Lcom/millennialmedia/android/MMWebView;)V
	.locals 0
	.param p1, "mmWebView"	# Lcom/millennialmedia/android/MMWebView;

	.prologue
	.line 294
	return-void
.end method

.method requestAd()V
	.locals 1

	.prologue
	.line 161
	invoke-static {p0}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 162
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v0, :cond_0

	.line 164
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->requestAd()V

	.line 166
	:cond_0
	return-void
.end method

.method public setApid(Ljava/lang/String;)V
	.locals 2
	.param p1, "apid"	# Ljava/lang/String;

	.prologue
	.line 89
	sget-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

	if-eqz v0, :cond_0

	sget-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

	const-string v1, "28911"

	invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_1

	.line 90
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

	sput-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

	.line 91
	:cond_1
	iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

	.line 92
	return-void
.end method

.method setBackgroundColor(I)V
	.locals 0
	.param p1, "color"	# I

	.prologue
	.line 302
	return-void
.end method

.method setClickable(Z)V
	.locals 0
	.param p1, "clickable"	# Z

	.prologue
	.line 306
	return-void
.end method

.method public setIgnoresDensityScaling(Z)V
	.locals 0
	.param p1, "ignoresDensityScaling"	# Z

	.prologue
	.line 129
	iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

	.line 130
	return-void
.end method

.method public setListener(Lcom/millennialmedia/android/RequestListener;)V
	.locals 0
	.param p1, "listener"	# Lcom/millennialmedia/android/RequestListener;

	.prologue
	.line 108
	iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

	.line 109
	return-void
.end method

.method public setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
	.locals 0
	.param p1, "request"	# Lcom/millennialmedia/android/MMRequest;

	.prologue
	.line 144
	iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

	.line 145
	return-void
.end method

.method public toString()Ljava/lang/String;
	.locals 3

	.prologue
	.line 311
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	const-string v1, "AdType[("

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, ") InternalId("

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-wide v1, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, ") LinkedId("

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-wide v1, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, ") isFinishing("

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, ")]"

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method

.method unresizeToDefault()V
	.locals 1

	.prologue
	.line 376
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v0, :cond_0

	.line 378
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->unresizeToDefault()V

	.line 380
	:cond_0
	return-void
.end method
