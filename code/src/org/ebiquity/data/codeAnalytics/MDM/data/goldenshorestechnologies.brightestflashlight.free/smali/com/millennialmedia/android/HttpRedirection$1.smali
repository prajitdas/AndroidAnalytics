.class final Lcom/millennialmedia/android/HttpRedirection$1;
.super Ljava/lang/Object;
.source "HttpRedirection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/HttpRedirection;->startActivityFromUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x8
	name = null
.end annotation


# instance fields
.field final synthetic val$listenerReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
	.locals 0

	.prologue
	.line 175
	iput-object p1, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method

.method private handleDestinationUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
	.locals 11
	.param p1, "listener"	# Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

	.prologue
	.line 201
	const/4 v5, 0x0

	.line 202
	.local v5, "scheme":Ljava/lang/String;
	const/4 v4, 0x0

	.line 203
	.local v4, "intent":Landroid/content/Intent;
	iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

	invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Landroid/content/Context;

	.line 204
	.local v1, "context":Landroid/content/Context;
	if-eqz v1, :cond_4

	.line 206
	iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

	invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

	move-result-object v5

	if-eqz v5, :cond_0

	.line 208
	const-string v7, "mmvideo"

	invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v7

	if-nez v7, :cond_5

	.line 210
	invoke-static {p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->getIntentForUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)Landroid/content/Intent;

	move-result-object v4

	.line 219
	:cond_0
	:goto_0
	if-eqz v4, :cond_4

	.line 221
	invoke-virtual {p1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->getOverlaySettings()Lcom/millennialmedia/android/OverlaySettings;

	move-result-object v6

	.line 222
	.local v6, "settings":Lcom/millennialmedia/android/OverlaySettings;
	if-eqz v4, :cond_2

	if-eqz v6, :cond_2

	.line 224
	iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->orientation:Ljava/lang/String;

	if-eqz v7, :cond_1

	.line 225
	iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->orientation:Ljava/lang/String;

	iput-object v7, v6, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

	.line 226
	:cond_1
	const-string v7, "settings"

	invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

	.line 228
	:cond_2
	const-string v7, "class"

	invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v0

	.line 229
	.local v0, "clazz":Ljava/lang/String;
	if-eqz v0, :cond_3

	const-class v7, Lcom/millennialmedia/android/AdViewOverlayActivity;

	invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

	move-result-object v7

	invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v7

	if-nez v7, :cond_4

	.line 233
	:cond_3
	:try_start_0
	iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

	invoke-virtual {p1, v7}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isActivityStartable(Landroid/net/Uri;)Z

	move-result v7

	if-eqz v7, :cond_4

	.line 235
	invoke-static {v1, v4}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

	.line 236
	iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

	invoke-virtual {p1, v7}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->startingActivity(Landroid/net/Uri;)V
	:try_end_0
	.catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

	.line 248
	.end local v0	# "clazz":Ljava/lang/String;
	.end local v6	# "settings":Lcom/millennialmedia/android/OverlaySettings;
	:cond_4
	:goto_1
	return-void

	.line 212
	:cond_5
	iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

	invoke-virtual {p1, v7}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isHandlingMMVideo(Landroid/net/Uri;)Z

	move-result v7

	if-nez v7, :cond_0

	.line 214
	iget-object v7, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

	invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

	move-result-object v3

	.line 215
	.local v3, "id":Ljava/lang/String;
	invoke-static {v1, v3, p1}, Lcom/millennialmedia/android/VideoAd;->playAd(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

	goto :goto_0

	.line 239
	.end local v3	# "id":Ljava/lang/String;
	.restart local v0	# "clazz":Ljava/lang/String;
	.restart local v6	# "settings":Lcom/millennialmedia/android/OverlaySettings;
	:catch_0
	move-exception v2

	.line 241
	.local v2, "e":Landroid/content/ActivityNotFoundException;
	const-string v7, "No activity found for %s"

	const/4 v8, 0x1

	new-array v8, v8, [Ljava/lang/Object;

	const/4 v9, 0x0

	iget-object v10, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

	aput-object v10, v8, v9

	invoke-static {v7, v8}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

	goto :goto_1
.end method


# virtual methods
.method public run()V
	.locals 5

	.prologue
	.line 180
	iget-object v2, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

	invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

	.line 181
	.local v1, "listener":Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;
	if-eqz v1, :cond_0

	.line 183
	iget-object v2, v1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->url:Ljava/lang/String;

	invoke-static {v2}, Lcom/millennialmedia/android/HttpRedirection;->navigateRedirects(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v0

	.line 184
	.local v0, "destination":Ljava/lang/String;
	if-eqz v0, :cond_0

	.line 186
	invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v2

	iput-object v2, v1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

	.line 187
	iget-object v2, v1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

	if-eqz v2, :cond_1

	.line 189
	invoke-direct {p0, v1}, Lcom/millennialmedia/android/HttpRedirection$1;->handleDestinationUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

	.line 197
	.end local v0	# "destination":Ljava/lang/String;
	:cond_0
	:goto_0
	return-void

	.line 193
	.restart local v0	# "destination":Ljava/lang/String;
	:cond_1
	const-string v2, "Could not start activity for %s"

	const/4 v3, 0x1

	new-array v3, v3, [Ljava/lang/Object;

	const/4 v4, 0x0

	aput-object v0, v3, v4

	invoke-static {v2, v3}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	goto :goto_0
.end method
