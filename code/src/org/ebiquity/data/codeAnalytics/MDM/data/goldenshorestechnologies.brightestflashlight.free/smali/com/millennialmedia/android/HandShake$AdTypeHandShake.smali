.class Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
.super Ljava/lang/Object;
.source "HandShake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/HandShake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x2
	name = "AdTypeHandShake"
.end annotation


# instance fields
.field downloading:Z

.field lastVideo:J

.field final synthetic this$0:Lcom/millennialmedia/android/HandShake;

.field videoInterval:J


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;)V
	.locals 2

	.prologue
	const-wide/16 v0, 0x0

	.line 497
	iput-object p1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->this$0:Lcom/millennialmedia/android/HandShake;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 490
	iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

	.line 492
	iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

	.line 498
	return-void
.end method


# virtual methods
.method canDisplayCachedAd(J)Z
	.locals 4
	.param p1, "cachedTime"	# J

	.prologue
	.line 516
	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v0

	sub-long/2addr v0, p1

	iget-object v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->this$0:Lcom/millennialmedia/android/HandShake;

	# getter for: Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J
	invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->access$1100(Lcom/millennialmedia/android/HandShake;)J

	move-result-wide v2

	cmp-long v0, v0, v2

	if-gez v0, :cond_0

	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
	.locals 11
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "adType"	# Ljava/lang/String;

	.prologue
	const/4 v0, 0x1

	const/4 v1, 0x0

	const-wide/16 v9, 0x3e8

	.line 503
	const-string v2, "canRequestVideo() Current Time: %d Last Video: %d  Diff: %d  Video interval: %d"

	const/4 v3, 0x4

	new-array v3, v3, [Ljava/lang/Object;

	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v4

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	aput-object v4, v3, v1

	iget-wide v4, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

	div-long/2addr v4, v9

	invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v4

	aput-object v4, v3, v0

	const/4 v4, 0x2

	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v5

	iget-wide v7, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

	sub-long/2addr v5, v7

	div-long/2addr v5, v9

	invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v5

	aput-object v5, v3, v4

	const/4 v4, 0x3

	iget-wide v5, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

	div-long/2addr v5, v9

	invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

	move-result-object v5

	aput-object v5, v3, v4

	invoke-static {v2, v3}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 505
	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v2

	iget-wide v4, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

	sub-long/2addr v2, v4

	iget-wide v4, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

	cmp-long v2, v2, v4

	if-lez v2, :cond_0

	.line 510
	:goto_0
	return v0

	:cond_0
	move v0, v1

	goto :goto_0
.end method

.method deserializeFromObj(Lorg/json/JSONObject;)V
	.locals 4
	.param p1, "adTypeObject"	# Lorg/json/JSONObject;

	.prologue
	.line 529
	if-nez p1, :cond_0

	.line 533
	:goto_0
	return-void

	.line 532
	:cond_0
	const-string v0, "videointerval"

	invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

	move-result-wide v0

	const-wide/16 v2, 0x3e8

	mul-long/2addr v0, v2

	iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

	goto :goto_0
.end method

.method load(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
	.locals 4
	.param p1, "settings"	# Landroid/content/SharedPreferences;
	.param p2, "adType"	# Ljava/lang/String;

	.prologue
	.line 538
	const/4 v0, 0x0

	.line 540
	.local v0, "settingsFound":Z
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "handshake_lastvideo_"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

	move-result v1

	if-eqz v1, :cond_0

	.line 542
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "handshake_lastvideo_"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

	invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

	move-result-wide v1

	iput-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

	.line 543
	const/4 v0, 0x1

	.line 545
	:cond_0
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "handshake_videointerval_"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

	move-result v1

	if-eqz v1, :cond_1

	.line 547
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "handshake_videointerval_"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

	invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

	move-result-wide v1

	iput-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

	.line 548
	const/4 v0, 0x1

	.line 551
	:cond_1
	return v0
.end method

.method loadLastVideo(Landroid/content/Context;Ljava/lang/String;)V
	.locals 4
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "adType"	# Ljava/lang/String;

	.prologue
	.line 557
	const-string v1, "MillennialMediaSettings"

	const/4 v2, 0x0

	invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

	move-result-object v0

	.line 559
	.local v0, "settings":Landroid/content/SharedPreferences;
	if-eqz v0, :cond_0

	.line 561
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "handshake_lastvideo_"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

	move-result v1

	if-eqz v1, :cond_0

	.line 562
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "handshake_lastvideo_"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

	invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

	move-result-wide v1

	iput-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

	.line 564
	:cond_0
	return-void
.end method

.method save(Landroid/content/Context;Ljava/lang/String;)V
	.locals 4
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "adType"	# Ljava/lang/String;

	.prologue
	.line 576
	const-string v2, "MillennialMediaSettings"

	const/4 v3, 0x0

	invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

	move-result-object v1

	.line 577
	.local v1, "settings":Landroid/content/SharedPreferences;
	invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

	move-result-object v0

	.line 578
	.local v0, "editor":Landroid/content/SharedPreferences$Editor;
	invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

	.line 579
	invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

	.line 580
	return-void
.end method

.method save(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
	.locals 3
	.param p1, "editor"	# Landroid/content/SharedPreferences$Editor;
	.param p2, "adType"	# Ljava/lang/String;

	.prologue
	.line 569
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	const-string v1, "handshake_lastvideo_"

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	iget-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

	invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

	.line 570
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	const-string v1, "handshake_videointerval_"

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	iget-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

	invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

	.line 571
	return-void
.end method

.method updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
	.locals 2
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "adType"	# Ljava/lang/String;

	.prologue
	.line 522
	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v0

	iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

	.line 523
	invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/Context;Ljava/lang/String;)V

	.line 524
	return-void
.end method
