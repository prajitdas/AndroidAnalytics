.class Lcom/millennialmedia/android/MMAdImplController;
.super Ljava/lang/Object;
.source "MMAdImplController.java"

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lcom/millennialmedia/android/MMAdImplController$1;,
		Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;
	}
.end annotation


# static fields
.field static final NO_ID_RETURNED:J = -0x4L

.field private static final saveableControllers:Ljava/util/Map;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Ljava/util/Map",
			"<",
			"Ljava/lang/Long;",
			"Lcom/millennialmedia/android/MMAdImplController;",
			">;"
		}
	.end annotation
.end field

.field private static final weakUnsaveableAdRef:Ljava/util/Map;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Ljava/util/Map",
			"<",
			"Ljava/lang/Long;",
			"Ljava/lang/ref/WeakReference",
			"<",
			"Lcom/millennialmedia/android/MMAdImplController;",
			">;>;"
		}
	.end annotation
.end field


# instance fields
.field volatile adImplRef:Ljava/lang/ref/WeakReference;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Ljava/lang/ref/WeakReference",
			"<",
			"Lcom/millennialmedia/android/MMAdImpl;",
			">;"
		}
	.end annotation
.end field

.field volatile linkedAdImplId:J

.field requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

.field volatile webView:Lcom/millennialmedia/android/MMWebView;


# direct methods
.method static constructor <clinit>()V
	.locals 1

	.prologue
	.line 28
	new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

	invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

	sput-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	.line 31
	new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

	invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

	sput-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
	.locals 4
	.param p1, "adImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	.line 60
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 61
	const-string v0, "**************** creating new controller."

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 62
	new-instance v0, Ljava/lang/ref/WeakReference;

	invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

	iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	.line 64
	iget-wide v0, p1, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	const-wide/16 v2, 0x0

	cmp-long v0, v0, v2

	if-eqz v0, :cond_0

	.line 66
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdImplController;->linkForExpansion(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 67
	invoke-static {p1}, Lcom/millennialmedia/android/MMAdImplController;->getWebViewFromExistingAdImpl(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;

	move-result-object v0

	iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	.line 82
	:goto_0
	return-void

	.line 72
	:cond_0
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

	move-result v0

	if-eqz v0, :cond_1

	.line 74
	new-instance v0, Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

	move-result-object v1

	iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

	iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	.line 75
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	const/4 v1, 0x1

	iput-boolean v1, v0, Lcom/millennialmedia/android/MMWebView;->requiresPreAdSizeFix:Z

	goto :goto_0

	.line 79
	:cond_1
	new-instance v0, Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

	iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	goto :goto_0
.end method

.method static declared-synchronized assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V
	.locals 7
	.param p0, "adImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	.line 101
	const-class v3, Lcom/millennialmedia/android/MMAdImplController;

	monitor-enter v3

	:try_start_0
	iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v2, :cond_3

	.line 103
	sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	iget-object v4, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-interface {v2, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

	move-result v2

	if-nez v2, :cond_0

	.line 105
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isLifecycleObservable()Z

	move-result v2

	if-eqz v2, :cond_2

	.line 107
	sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	iget-object v5, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 108
	sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

	move-result v2

	if-eqz v2, :cond_0

	.line 109
	sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

	.line 114
	:cond_0
	:goto_0
	new-instance v2, Ljava/lang/StringBuilder;

	invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v2

	const-string v4, " - Has a controller"

	invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 142
	:cond_1
	:goto_1
	monitor-exit v3

	return-void

	.line 111
	:cond_2
	:try_start_1
	sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

	move-result v2

	if-nez v2, :cond_0

	.line 112
	sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	new-instance v5, Ljava/lang/ref/WeakReference;

	iget-object v6, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

	invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	goto :goto_0

	.line 101
	:catchall_0
	move-exception v2

	monitor-exit v3

	throw v2

	.line 117
	:cond_3
	:try_start_2
	new-instance v2, Ljava/lang/StringBuilder;

	invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

	const-string v4, "*****************************************assignAdViewController for "

	invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 118
	sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

	.line 119
	.local v0, "controller":Lcom/millennialmedia/android/MMAdImplController;
	if-nez v0, :cond_5

	.line 121
	sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Ljava/lang/ref/WeakReference;

	.line 122
	.local v1, "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/MMAdImplController;>;"
	if-eqz v1, :cond_4

	.line 123
	invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	.end local v0	# "controller":Lcom/millennialmedia/android/MMAdImplController;
	check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

	.line 124
	.restart local v0	# "controller":Lcom/millennialmedia/android/MMAdImplController;
	:cond_4
	if-nez v0, :cond_5

	.line 126
	new-instance v0, Lcom/millennialmedia/android/MMAdImplController;

	.end local v0	# "controller":Lcom/millennialmedia/android/MMAdImplController;
	invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdImplController;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 127
	.restart local v0	# "controller":Lcom/millennialmedia/android/MMAdImplController;
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isLifecycleObservable()Z

	move-result v2

	if-eqz v2, :cond_6

	.line 128
	sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 135
	.end local v1	# "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/MMAdImplController;>;"
	:cond_5
	:goto_2
	iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	.line 136
	new-instance v2, Ljava/lang/ref/WeakReference;

	invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

	iput-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	.line 138
	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v2, :cond_1

	.line 140
	invoke-static {p0}, Lcom/millennialmedia/android/MMAdImplController;->setupWebView(Lcom/millennialmedia/android/MMAdImpl;)V

	goto/16 :goto_1

	.line 130
	.restart local v1	# "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/MMAdImplController;>;"
	:cond_6
	sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	new-instance v5, Ljava/lang/ref/WeakReference;

	invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

	invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
	:try_end_2
	.catchall {:try_start_2 .. :try_end_2} :catchall_0

	goto :goto_2
.end method

.method static declared-synchronized attachWebViewFromOverlay(Lcom/millennialmedia/android/MMAdImpl;)V
	.locals 5
	.param p0, "overlayAdImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	.line 169
	const-class v2, Lcom/millennialmedia/android/MMAdImplController;

	monitor-enter v2

	:try_start_0
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v3, "attachWebViewFromOverlay with "

	invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 170
	iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	invoke-static {v3, v4}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

	move-result-object v0

	.line 171
	.local v0, "bannerAdImpl":Lcom/millennialmedia/android/MMAdImpl;
	if-eqz v0, :cond_1

	iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v1, :cond_1

	.line 173
	iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-nez v1, :cond_0

	.line 175
	iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	iput-object v3, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	.line 176
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImpl;->removeView(Lcom/millennialmedia/android/MMWebView;)V

	.line 177
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	const/4 v3, 0x0

	iput-object v3, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	.line 180
	:cond_0
	iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->setMraidDefault()V

	.line 181
	iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getMMWebViewClient()Lcom/millennialmedia/android/MMWebViewClient;

	move-result-object v3

	invoke-virtual {v1, v3}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 183
	:cond_1
	monitor-exit v2

	return-void

	.line 169
	.end local v0	# "bannerAdImpl":Lcom/millennialmedia/android/MMAdImpl;
	:catchall_0
	move-exception v1

	monitor-exit v2

	throw v1
.end method

.method static clearControllers()V
	.locals 1

	.prologue
	.line 37
	sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	if-eqz v0, :cond_0

	.line 39
	sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	invoke-interface {v0}, Ljava/util/Map;->clear()V

	.line 41
	:cond_0
	sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	if-eqz v0, :cond_1

	.line 43
	sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	invoke-interface {v0}, Ljava/util/Map;->clear()V

	.line 45
	:cond_1
	return-void
.end method

.method static controllersToString()Ljava/lang/String;
	.locals 2

	.prologue
	.line 775
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, " SAVED:"

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method

.method static destroyOtherInlineVideo(Landroid/content/Context;)V
	.locals 7
	.param p0, "context"	# Landroid/content/Context;

	.prologue
	.line 832
	sget-object v6, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

	move-result-object v6

	invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

	move-result-object v4

	.local v4, "i$":Ljava/util/Iterator;
	:cond_0
	:goto_0
	invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

	move-result v6

	if-eqz v6, :cond_1

	invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v3

	check-cast v3, Ljava/util/Map$Entry;

	.line 834
	.local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/millennialmedia/android/MMAdImplController;>;"
	invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

	move-result-object v2

	check-cast v2, Lcom/millennialmedia/android/MMAdImplController;

	.line 835
	.local v2, "controller":Lcom/millennialmedia/android/MMAdImplController;
	if-eqz v2, :cond_0

	.line 837
	iget-object v6, v2, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Lcom/millennialmedia/android/MMAdImpl;

	.line 838
	.local v1, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	if-eqz v1, :cond_0

	.line 840
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

	move-result-object v0

	.line 841
	.local v0, "ad":Lcom/millennialmedia/android/MMAd;
	if-eqz v0, :cond_0

	instance-of v6, v0, Lcom/millennialmedia/android/MMLayout;

	if-eqz v6, :cond_0

	move-object v5, v0

	.line 843
	check-cast v5, Lcom/millennialmedia/android/MMLayout;

	.line 844
	.local v5, "layout":Lcom/millennialmedia/android/MMLayout;
	invoke-virtual {v5}, Lcom/millennialmedia/android/MMLayout;->removeVideo()V

	goto :goto_0

	.line 850
	.end local v0	# "ad":Lcom/millennialmedia/android/MMAd;
	.end local v1	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	.end local v2	# "controller":Lcom/millennialmedia/android/MMAdImplController;
	.end local v3	# "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/millennialmedia/android/MMAdImplController;>;"
	.end local v5	# "layout":Lcom/millennialmedia/android/MMLayout;
	:cond_1
	return-void
.end method

.method static declared-synchronized getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;
	.locals 6
	.param p0, "internalId"	# J

	.prologue
	const/4 v2, 0x0

	.line 200
	const-class v3, Lcom/millennialmedia/android/MMAdImplController;

	monitor-enter v3

	const-wide/16 v4, -0x4

	cmp-long v4, p0, v4

	if-nez v4, :cond_1

	.line 211
	:cond_0
	:goto_0
	monitor-exit v3

	return-object v2

	.line 202
	:cond_1
	:try_start_0
	sget-object v4, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v5

	invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

	.line 203
	.local v0, "controller":Lcom/millennialmedia/android/MMAdImplController;
	if-nez v0, :cond_2

	.line 205
	sget-object v4, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v5

	invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Ljava/lang/ref/WeakReference;

	.line 206
	.local v1, "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/MMAdImplController;>;"
	if-eqz v1, :cond_2

	.line 207
	invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	.end local v0	# "controller":Lcom/millennialmedia/android/MMAdImplController;
	check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

	.line 209
	.end local v1	# "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/MMAdImplController;>;"
	.restart local v0	# "controller":Lcom/millennialmedia/android/MMAdImplController;
	:cond_2
	if-eqz v0, :cond_0

	.line 210
	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v2

	check-cast v2, Lcom/millennialmedia/android/MMAdImpl;
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	goto :goto_0

	.line 200
	.end local v0	# "controller":Lcom/millennialmedia/android/MMAdImplController;
	:catchall_0
	move-exception v2

	monitor-exit v3

	throw v2
.end method

.method static declared-synchronized getWebViewFromExistingAdImpl(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;
	.locals 6
	.param p0, "requestorAdImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	.line 187
	const-class v3, Lcom/millennialmedia/android/MMAdImplController;

	monitor-enter v3

	:try_start_0
	new-instance v2, Ljava/lang/StringBuilder;

	invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

	const-string v4, "getWebViewFromExistingLayout("

	invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

	move-result-object v2

	const-string v4, " taking from "

	invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

	move-result-object v2

	const-string v4, ")"

	invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 188
	const/4 v1, 0x0

	.line 189
	.local v1, "mmWebView":Lcom/millennialmedia/android/MMWebView;
	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	invoke-static {v4, v5}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

	move-result-object v0

	.line 190
	.local v0, "holderAdImpl":Lcom/millennialmedia/android/MMAdImpl;
	if-eqz v0, :cond_0

	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v2, :cond_0

	.line 192
	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	.line 193
	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	const/4 v4, 0x0

	iput-object v4, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 195
	:cond_0
	monitor-exit v3

	return-object v1

	.line 187
	.end local v0	# "holderAdImpl":Lcom/millennialmedia/android/MMAdImpl;
	.end local v1	# "mmWebView":Lcom/millennialmedia/android/MMWebView;
	:catchall_0
	move-exception v2

	monitor-exit v3

	throw v2
.end method

.method private declared-synchronized isDownloadingCachedAd(Lcom/millennialmedia/android/MMAdImpl;)Z
	.locals 5
	.param p1, "adImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	const/4 v2, 0x1

	.line 330
	monitor-enter p0

	:try_start_0
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v0

	.line 332
	.local v0, "context":Landroid/content/Context;
	invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

	move-result-object v3

	iget-object v4, p1, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	invoke-virtual {v3, v4}, Lcom/millennialmedia/android/HandShake;->isAdTypeDownloading(Ljava/lang/String;)Z

	move-result v3

	if-eqz v3, :cond_0

	.line 334
	const-string v3, "There is a download in progress. Defering call for new ad"

	invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 335
	new-instance v3, Lcom/millennialmedia/android/MMException;

	const/16 v4, 0xc

	invoke-direct {v3, v4}, Lcom/millennialmedia/android/MMException;-><init>(I)V

	invoke-static {p1, v3}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 357
	:goto_0
	monitor-exit p0

	return v2

	.line 340
	:cond_0
	:try_start_1
	const-string v3, "No download in progress."

	invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 344
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

	move-result-object v3

	invoke-static {v0, v3}, Lcom/millennialmedia/android/AdCache;->loadIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

	move-result-object v1

	.line 345
	.local v1, "incompleteAd":Lcom/millennialmedia/android/CachedAd;
	if-eqz v1, :cond_1

	.line 348
	const-string v3, "Last ad wasn\'t fully downloaded. Download again."

	invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 349
	invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Event;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 350
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

	move-result-object v3

	invoke-static {v0, v3, v1, p0}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	goto :goto_0

	.line 330
	.end local v0	# "context":Landroid/content/Context;
	.end local v1	# "incompleteAd":Lcom/millennialmedia/android/CachedAd;
	:catchall_0
	move-exception v2

	monitor-exit p0

	throw v2

	.line 355
	.restart local v0	# "context":Landroid/content/Context;
	.restart local v1	# "incompleteAd":Lcom/millennialmedia/android/CachedAd;
	:cond_1
	:try_start_2
	const-string v2, "No incomplete downloads."

	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V
	:try_end_2
	.catchall {:try_start_2 .. :try_end_2} :catchall_0

	.line 357
	const/4 v2, 0x0

	goto :goto_0
.end method

.method static declared-synchronized removeAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V
	.locals 7
	.param p0, "adImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	.line 222
	const-class v2, Lcom/millennialmedia/android/MMAdImplController;

	monitor-enter v2

	:try_start_0
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	if-nez v1, :cond_1

	.line 257
	:cond_0
	:goto_0
	monitor-exit v2

	return-void

	.line 224
	:cond_1
	:try_start_1
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isLifecycleObservable()Z

	move-result v1

	if-eqz v1, :cond_4

	.line 226
	sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v3

	iget-object v4, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 227
	sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v3

	invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v1

	if-eqz v1, :cond_2

	.line 228
	sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v3

	invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

	.line 234
	:cond_2
	:goto_1
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v3, "****************RemoveAdviewcontroller - "

	invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 236
	iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

	if-eqz v1, :cond_3

	.line 238
	sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

	iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v3

	invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

	.line 239
	sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v3

	invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

	.line 242
	:cond_3
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	.line 243
	.local v0, "controller":Lcom/millennialmedia/android/MMAdImplController;
	const/4 v1, 0x0

	iput-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	.line 245
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v3, "****************RemoveAdviewcontroller - controllers "

	invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-static {}, Lcom/millennialmedia/android/MMAdImplController;->controllersToString()Ljava/lang/String;

	move-result-object v3

	invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 247
	iget-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v1, :cond_0

	.line 249
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v3, "****************RemoveAdviewcontroller - controller!=null, expanding="

	invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	iget-object v3, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	iget-boolean v3, v3, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

	invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 250
	iget-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImpl;->removeView(Lcom/millennialmedia/android/MMWebView;)V

	.line 252
	iget-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	const/4 v3, 0x0

	iput-boolean v3, v1, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

	.line 254
	iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

	if-eqz v1, :cond_0

	iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	const-wide/16 v5, 0x0

	cmp-long v1, v3, v5

	if-nez v1, :cond_0

	.line 255
	const/4 v1, 0x0

	iput-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	goto/16 :goto_0

	.line 222
	.end local v0	# "controller":Lcom/millennialmedia/android/MMAdImplController;
	:catchall_0
	move-exception v1

	monitor-exit v2

	throw v1

	.line 231
	:cond_4
	:try_start_2
	sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

	iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v3

	new-instance v4, Ljava/lang/ref/WeakReference;

	iget-object v5, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

	invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
	:try_end_2
	.catchall {:try_start_2 .. :try_end_2} :catchall_0

	goto/16 :goto_1
.end method

.method private requestAdInternal(Lcom/millennialmedia/android/MMAdImpl;)V
	.locals 3
	.param p1, "adImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	.line 304
	iget-object v1, p1, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

	if-nez v1, :cond_1

	.line 306
	new-instance v0, Lcom/millennialmedia/android/MMException;

	const-string v1, "MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned."

	const/4 v2, 0x1

	invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

	.line 307
	.local v0, "error":Lcom/millennialmedia/android/MMException;
	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

	.line 308
	invoke-static {p1, v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

	.line 326
	.end local v0	# "error":Lcom/millennialmedia/android/MMException;
	:cond_0
	:goto_0
	return-void

	.line 312
	:cond_1
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

	move-result v1

	if-nez v1, :cond_2

	invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImplController;->isDownloadingCachedAd(Lcom/millennialmedia/android/MMAdImpl;)Z

	move-result v1

	if-nez v1, :cond_0

	.line 315
	:cond_2
	monitor-enter p0

	.line 317
	:try_start_0
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	if-eqz v1, :cond_3

	.line 319
	const/16 v1, 0xc

	invoke-static {v1}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 320
	new-instance v1, Lcom/millennialmedia/android/MMException;

	const/16 v2, 0xc

	invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

	invoke-static {p1, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

	.line 321
	monitor-exit p0

	goto :goto_0

	.line 325
	:catchall_0
	move-exception v1

	monitor-exit p0
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	throw v1

	.line 323
	:cond_3
	:try_start_1
	new-instance v1, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	const/4 v2, 0x0

	invoke-direct {v1, p0, v2}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;-><init>(Lcom/millennialmedia/android/MMAdImplController;Lcom/millennialmedia/android/MMAdImplController$1;)V

	iput-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	.line 324
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	invoke-static {v1}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

	.line 325
	monitor-exit p0
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	goto :goto_0
.end method

.method private static declared-synchronized setupWebView(Lcom/millennialmedia/android/MMAdImpl;)V
	.locals 6
	.param p0, "adImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	.line 146
	const-class v3, Lcom/millennialmedia/android/MMAdImplController;

	monitor-enter v3

	:try_start_0
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	.line 147
	.local v0, "controller":Lcom/millennialmedia/android/MMAdImplController;
	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getMMWebViewClient()Lcom/millennialmedia/android/MMWebViewClient;

	move-result-object v4

	invoke-virtual {v2, v4}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

	.line 148
	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-virtual {v2, v4, v5}, Lcom/millennialmedia/android/MMWebView;->isCurrentParent(J)Z

	move-result v2

	if-nez v2, :cond_1

	.line 150
	const/4 v1, 0x0

	.line 151
	.local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

	move-result v2

	if-eqz v2, :cond_2

	.line 153
	new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

	.end local v1	# "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/4 v2, -0x2

	const/4 v4, -0x2

	invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 154
	.restart local v1	# "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->isMraidResized()Z

	move-result v2

	if-eqz v2, :cond_0

	.line 155
	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v2, p0}, Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 161
	:cond_0
	:goto_0
	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->removeFromParent()V

	.line 162
	iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {p0, v2, v1}, Lcom/millennialmedia/android/MMAdImpl;->addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 164
	.end local v1	# "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	:cond_1
	monitor-exit v3

	return-void

	.line 159
	.restart local v1	# "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	:cond_2
	:try_start_1
	new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

	.end local v1	# "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/4 v2, -0x2

	const/4 v4, -0x1

	invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	.restart local v1	# "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	goto :goto_0

	.line 146
	.end local v0	# "controller":Lcom/millennialmedia/android/MMAdImplController;
	.end local v1	# "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	:catchall_0
	move-exception v2

	monitor-exit v3

	throw v2
.end method


# virtual methods
.method checkReason(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I
	.locals 6
	.param p1, "adImpl"	# Lcom/millennialmedia/android/MMAdImpl;
	.param p2, "ad"	# Lcom/millennialmedia/android/CachedAd;

	.prologue
	const/4 v5, 0x1

	const/4 v4, 0x0

	.line 385
	invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->isExpired()Z

	move-result v0

	if-eqz v0, :cond_0

	.line 387
	const-string v0, "%s is expired."

	new-array v1, v5, [Ljava/lang/Object;

	invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

	move-result-object v2

	aput-object v2, v1, v4

	invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 388
	const/16 v0, 0x15

	.line 400
	:goto_0
	return v0

	.line 390
	:cond_0
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v0

	invoke-virtual {p2, v0}, Lcom/millennialmedia/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

	move-result v0

	if-nez v0, :cond_1

	.line 392
	const-string v0, "%s is not on disk."

	new-array v1, v5, [Ljava/lang/Object;

	invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

	move-result-object v2

	aput-object v2, v1, v4

	invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 393
	const/16 v0, 0x16

	goto :goto_0

	.line 395
	:cond_1
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

	move-result-object v0

	iget-object v1, p1, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	iget-wide v2, p2, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

	invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

	move-result v0

	if-nez v0, :cond_2

	.line 397
	const-string v0, "%s cannot be shown at this time."

	new-array v1, v5, [Ljava/lang/Object;

	invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

	move-result-object v2

	aput-object v2, v1, v4

	invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 398
	const/16 v0, 0x18

	goto :goto_0

	.line 400
	:cond_2
	const/16 v0, 0x64

	goto :goto_0
.end method

.method display(Lcom/millennialmedia/android/MMAdImpl;)I
	.locals 4
	.param p1, "adImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	.line 422
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

	move-result-object v2

	invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

	move-result-object v0

	.line 423
	.local v0, "ad":Lcom/millennialmedia/android/CachedAd;
	if-eqz v0, :cond_1

	.line 425
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	const/4 v2, 0x1

	invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/CachedAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

	move-result v1

	if-eqz v1, :cond_0

	.line 427
	invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Event;->displayStarted(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 428
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

	move-result-object v2

	const/4 v3, 0x0

	invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

	.line 429
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/CachedAd;->show(Landroid/content/Context;J)V

	.line 430
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

	move-result-object v1

	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v2

	iget-object v3, p1, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

	.line 431
	const/4 v1, 0x0

	.line 438
	:goto_0
	return v1

	.line 435
	:cond_0
	invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMAdImplController;->checkReason(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I

	move-result v1

	goto :goto_0

	.line 438
	:cond_1
	const/16 v1, 0x14

	goto :goto_0
.end method

.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
	.locals 4
	.param p1, "ad"	# Lcom/millennialmedia/android/CachedAd;
	.param p2, "success"	# Z

	.prologue
	.line 369
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	.line 370
	.local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	if-nez v0, :cond_0

	.line 372
	const/16 v1, 0x19

	invoke-static {v1}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	.line 381
	:goto_0
	return-void

	.line 375
	:cond_0
	if-eqz p2, :cond_1

	.line 376
	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

	move-result-object v2

	invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

	move-result-object v3

	invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

	.line 377
	:cond_1
	if-eqz p2, :cond_2

	.line 378
	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V

	goto :goto_0

	.line 380
	:cond_2
	new-instance v1, Lcom/millennialmedia/android/MMException;

	const/16 v2, 0xf

	invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

	invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

	goto :goto_0
.end method

.method public downloadStart(Lcom/millennialmedia/android/CachedAd;)V
	.locals 0
	.param p1, "ad"	# Lcom/millennialmedia/android/CachedAd;

	.prologue
	.line 795
	return-void
.end method

.method getUserAgent()Ljava/lang/String;
	.locals 1

	.prologue
	.line 768
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v0, :cond_0

	.line 769
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getUserAgent()Ljava/lang/String;

	move-result-object v0

	.line 770
	:goto_0
	return-object v0

	:cond_0
	sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

	goto :goto_0
.end method

.method isAdAvailable(Lcom/millennialmedia/android/MMAdImpl;)I
	.locals 3
	.param p1, "adImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	.line 405
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

	move-result-object v2

	invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

	move-result-object v0

	.line 406
	.local v0, "ad":Lcom/millennialmedia/android/CachedAd;
	if-eqz v0, :cond_1

	.line 408
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	const/4 v2, 0x1

	invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/CachedAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

	move-result v1

	if-eqz v1, :cond_0

	.line 409
	const/4 v1, 0x0

	.line 417
	:goto_0
	return v1

	.line 411
	:cond_0
	invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMAdImplController;->checkReason(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I

	move-result v1

	goto :goto_0

	.line 415
	:cond_1
	const-string v1, "No next ad."

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 417
	const/16 v1, 0x14

	goto :goto_0
.end method

.method linkForExpansion(Lcom/millennialmedia/android/MMAdImpl;)V
	.locals 4
	.param p1, "expansionAdImpl"	# Lcom/millennialmedia/android/MMAdImpl;

	.prologue
	.line 86
	iget-wide v1, p1, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

	move-result-object v0

	.line 87
	.local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	if-eqz v0, :cond_0

	.line 89
	iget-wide v1, p1, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	iput-wide v1, p0, Lcom/millennialmedia/android/MMAdImplController;->linkedAdImplId:J

	.line 90
	iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	iput-wide v2, v1, Lcom/millennialmedia/android/MMAdImplController;->linkedAdImplId:J

	.line 91
	iget-wide v1, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

	iput-wide v1, v0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

	.line 93
	:cond_0
	return-void
.end method

.method loadUrl(Ljava/lang/String;)V
	.locals 1
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 362
	invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

	move-result v0

	if-nez v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v0, :cond_0

	.line 363
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

	.line 364
	:cond_0
	return-void
.end method

.method loadWebContent(Ljava/lang/String;Ljava/lang/String;)V
	.locals 2
	.param p1, "content"	# Ljava/lang/String;
	.param p2, "adUrl"	# Ljava/lang/String;

	.prologue
	.line 807
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	.line 808
	.local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	if-eqz v0, :cond_0

	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v1, :cond_0

	.line 810
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v1, p1, p2, v0}, Lcom/millennialmedia/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V

	.line 812
	:cond_0
	return-void
.end method

.method pauseWebViewVideo()V
	.locals 1

	.prologue
	.line 824
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v0, :cond_0

	.line 826
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->onPauseWebViewVideo()V

	.line 828
	:cond_0
	return-void
.end method

.method requestAd()V
	.locals 6

	.prologue
	const/16 v5, 0x19

	const/16 v4, 0x10

	const/4 v3, 0x3

	.line 261
	iget-object v2, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	.line 263
	.local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	if-nez v0, :cond_0

	.line 265
	invoke-static {v5}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

	move-result-object v2

	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	.line 266
	new-instance v2, Lcom/millennialmedia/android/MMException;

	invoke-direct {v2, v5}, Lcom/millennialmedia/android/MMException;-><init>(I)V

	invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

	.line 299
	:goto_0
	return-void

	.line 270
	:cond_0
	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->isRefreshable()Z

	move-result v2

	if-nez v2, :cond_1

	.line 272
	new-instance v2, Lcom/millennialmedia/android/MMException;

	invoke-direct {v2, v4}, Lcom/millennialmedia/android/MMException;-><init>(I)V

	invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

	goto :goto_0

	.line 276
	:cond_1
	invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

	move-result v2

	if-nez v2, :cond_2

	.line 278
	invoke-static {v3}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

	move-result-object v2

	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	.line 279
	new-instance v2, Lcom/millennialmedia/android/MMException;

	invoke-direct {v2, v3}, Lcom/millennialmedia/android/MMException;-><init>(I)V

	invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

	goto :goto_0

	.line 283
	:cond_2
	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v2

	invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

	move-result-object v2

	iget-boolean v2, v2, Lcom/millennialmedia/android/HandShake;->kill:Z

	if-eqz v2, :cond_3

	.line 285
	const-string v2, "The server is no longer allowing ads."

	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 286
	new-instance v2, Lcom/millennialmedia/android/MMException;

	invoke-direct {v2, v4}, Lcom/millennialmedia/android/MMException;-><init>(I)V

	invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

	goto :goto_0

	.line 291
	:cond_3
	:try_start_0
	const-string v2, "adLayout - requestAd"

	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 292
	invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdImplController;->requestAdInternal(Lcom/millennialmedia/android/MMAdImpl;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 294
	:catch_0
	move-exception v1

	.line 296
	.local v1, "e":Ljava/lang/Exception;
	const-string v2, "There was an exception with the ad request. %s"

	const/4 v3, 0x1

	new-array v3, v3, [Ljava/lang/Object;

	const/4 v4, 0x0

	invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

	move-result-object v5

	aput-object v5, v3, v4

	invoke-static {v2, v3}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 297
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method resumeWebViewVideo()V
	.locals 1

	.prologue
	.line 816
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v0, :cond_0

	.line 818
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->onResumeWebViewVideo()V

	.line 820
	:cond_0
	return-void
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V
	.locals 2
	.param p1, "webContent"	# Ljava/lang/String;
	.param p2, "url"	# Ljava/lang/String;

	.prologue
	.line 763
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v1, p1, p2, v0}, Lcom/millennialmedia/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V

	.line 764
	return-void
.end method

.method public toString()Ljava/lang/String;
	.locals 5

	.prologue
	.line 781
	iget-object v2, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	.line 782
	.local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	.line 783
	.local v1, "sb":Ljava/lang/StringBuilder;
	if-eqz v0, :cond_0

	.line 785
	new-instance v2, Ljava/lang/StringBuilder;

	invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v2

	const-string v3, "-LinkInC="

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImplController;->linkedAdImplId:J

	invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	.line 788
	:cond_0
	new-instance v2, Ljava/lang/StringBuilder;

	invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	const-string v3, " w/"

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	return-object v2
.end method

.method unresizeToDefault()V
	.locals 2

	.prologue
	.line 799
	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	if-eqz v0, :cond_0

	.line 801
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 803
	:cond_0
	return-void
.end method
