.class public Lcom/jumptap/adtag/JTAppReport;
.super Ljava/lang/Object;
.source "JTAppReport.java"


# direct methods
.method public constructor <init>()V
	.locals 0

	.prologue
	.line 17
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method

.method private static getEventType(Landroid/app/Activity;)Lcom/jumptap/adtag/events/EventType;
	.locals 4
	.param p0, "activity"	# Landroid/app/Activity;

	.prologue
	.line 53
	const/4 v0, 0x0

	.line 55
	.local v0, "eventType":Lcom/jumptap/adtag/events/EventType;
	invoke-static {}, Lcom/jumptap/adtag/events/EventManager;->getFirstLaunchStr()Ljava/lang/String;

	move-result-object v1

	.line 58
	.local v1, "firstLaunchStr":Ljava/lang/String;
	invoke-static {}, Lcom/jumptap/adtag/events/EventManager;->getFirstPrefName()Ljava/lang/String;

	move-result-object v3

	invoke-static {p0, v3, v1}, Lcom/jumptap/adtag/utils/JtAdManager;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v2

	.line 61
	.local v2, "preferences":Ljava/lang/String;
	if-eqz v2, :cond_0

	const-string v3, ""

	invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v3

	if-nez v3, :cond_0

	invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v3

	if-eqz v3, :cond_1

	.line 62
	:cond_0
	sget-object v0, Lcom/jumptap/adtag/events/EventType;->download:Lcom/jumptap/adtag/events/EventType;

	.line 68
	:goto_0
	return-object v0

	.line 66
	:cond_1
	sget-object v0, Lcom/jumptap/adtag/events/EventType;->run:Lcom/jumptap/adtag/events/EventType;

	goto :goto_0
.end method

.method public static sendConversionTrackingReport(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
	.locals 6
	.param p0, "activity"	# Landroid/app/Activity;
	.param p1, "appId"	# Ljava/lang/String;
	.param p2, "appVer"	# Ljava/lang/String;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Landroid/app/Activity;",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;)V"
		}
	.end annotation

	.prologue
	.line 27
	.local p3, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	const-string v4, "JtAd"

	const-string v5, "Application request to send conversion tracking url"

	invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 28
	invoke-static {p0}, Lcom/jumptap/adtag/utils/JtAdManager;->getHIDSHA1(Landroid/content/Context;)Ljava/lang/String;

	move-result-object v2

	.line 29
	.local v2, "hidsha1":Ljava/lang/String;
	invoke-static {p0}, Lcom/jumptap/adtag/JTAppReport;->getEventType(Landroid/app/Activity;)Lcom/jumptap/adtag/events/EventType;

	move-result-object v1

	.line 30
	.local v1, "eventType":Lcom/jumptap/adtag/events/EventType;
	invoke-static {v1, p0}, Lcom/jumptap/adtag/events/EventManager;->getDateByEventType(Lcom/jumptap/adtag/events/EventType;Landroid/content/Context;)Ljava/lang/String;

	move-result-object v0

	.line 32
	.local v0, "date":Ljava/lang/String;
	if-nez p3, :cond_0

	.line 33
	new-instance p3, Ljava/util/HashMap;

	.end local p3	# "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

	.line 35
	.restart local p3	# "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	:cond_0
	const-string v4, "hid_sha1"

	invoke-interface {p3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 36
	const-string v4, "app"

	invoke-interface {p3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 37
	const-string v4, "appVer"

	invoke-interface {p3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 38
	const-string v4, "event"

	invoke-virtual {v1}, Lcom/jumptap/adtag/events/EventType;->name()Ljava/lang/String;

	move-result-object v5

	invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 39
	const-string v4, "date"

	invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 42
	invoke-static {p3}, Lcom/jumptap/adtag/events/EventManager;->buildEventTrackingUrl(Ljava/util/Map;)Ljava/lang/String;

	move-result-object v3

	.line 43
	.local v3, "url":Ljava/lang/String;
	invoke-static {p0, v3, v1, v0}, Lcom/jumptap/adtag/events/EventManager;->sendReport(Landroid/content/Context;Ljava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V

	.line 44
	return-void
.end method
