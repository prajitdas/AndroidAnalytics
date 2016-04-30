.class public Lcom/jumptap/adtag/events/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lcom/jumptap/adtag/events/EventManager$1;,
		Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;,
		Lcom/jumptap/adtag/events/EventManager$InteractEventTask;,
		Lcom/jumptap/adtag/events/EventManager$LogEvent;
	}
.end annotation


# static fields
.field private static final AD_REQUEST_ID_STRING:Ljava/lang/String; = "jtreqid"

.field private static final AMP_STRING:Ljava/lang/String; = "&"

.field public static final APP_ID_STRING:Ljava/lang/String; = "app"

.field public static final APP_VER_STRING:Ljava/lang/String; = "appVer"

.field private static final CONVERSION_TRACKING_URL:Ljava/lang/String; = "http://a.jumptap.com/a/conversion?"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMddhhmmss"

.field public static final DATE_STRING:Ljava/lang/String; = "date"

.field public static final DELAY_AFTER_INTERACTION:I = 0x3c

.field private static final DURATION_STRING:Ljava/lang/String; = "duration"

.field private static final EQUAL_STRING:Ljava/lang/String; = "="

.field public static final EVENT_STRING:Ljava/lang/String; = "event"

.field private static final FIRST_LAUNCH:Ljava/lang/String; = "1"

.field public static final HIDSHA1_STRING:Ljava/lang/String; = "hid_sha1"

.field public static final HID_STRING:Ljava/lang/String; = "hid"

.field protected static final INSTALL_DATE_PREF_NAME:Ljava/lang/String; = "installDate"

.field protected static final IS_FIRST_PREF_NAME:Ljava/lang/String; = "isFirstLaunch"

.field protected static final JT_AD_TRACKING:Ljava/lang/String; = "JtAd-Tracking"

.field protected static final NOT_FIRST_LAUNCH:Ljava/lang/String; = "0"

.field private static final PUB_STRING:Ljava/lang/String; = "pub"

.field private static final SPOT_STRING:Ljava/lang/String; = "spot"

.field private static final UNITS_STRING:Ljava/lang/String; = "units"

.field private static eventTimer:Ljava/util/Timer;


# instance fields
.field private adViewListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

.field private context:Landroid/content/Context;

.field private eventInteractionInfo:Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;

.field private interEventTask:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;)V
	.locals 1
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "adViewListener"	# Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	.prologue
	.line 53
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 54
	iput-object p1, p0, Lcom/jumptap/adtag/events/EventManager;->context:Landroid/content/Context;

	.line 55
	iput-object p2, p0, Lcom/jumptap/adtag/events/EventManager;->adViewListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	.line 56
	new-instance v0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;-><init>(Lcom/jumptap/adtag/events/EventManager;)V

	iput-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->eventInteractionInfo:Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;

	.line 58
	invoke-static {}, Lcom/jumptap/adtag/events/EventManager;->initTimer()V

	.line 59
	invoke-static {p1}, Lcom/jumptap/adtag/events/EventManager;->scheduleConversionTask(Landroid/content/Context;)V

	.line 60
	return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
	.locals 0
	.param p0, "x0"	# Landroid/content/Context;

	.prologue
	.line 23
	invoke-static {p0}, Lcom/jumptap/adtag/events/EventManager;->scheduleConversionTask(Landroid/content/Context;)V

	return-void
.end method

.method static synthetic access$200(Lcom/jumptap/adtag/events/EventManager;)Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/events/EventManager;

	.prologue
	.line 23
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->eventInteractionInfo:Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;

	return-object v0
.end method

.method static synthetic access$300(Lcom/jumptap/adtag/events/EventManager;Lcom/jumptap/adtag/events/EventType;Ljava/util/Map;)V
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/events/EventManager;
	.param p1, "x1"	# Lcom/jumptap/adtag/events/EventType;
	.param p2, "x2"	# Ljava/util/Map;

	.prologue
	.line 23
	invoke-direct {p0, p1, p2}, Lcom/jumptap/adtag/events/EventManager;->sendReport(Lcom/jumptap/adtag/events/EventType;Ljava/util/Map;)V

	return-void
.end method

.method static synthetic access$400(Lcom/jumptap/adtag/events/EventManager;)Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/events/EventManager;

	.prologue
	.line 23
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->adViewListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	return-object v0
.end method

.method public static buildEventTrackingUrl(Ljava/util/Map;)Ljava/lang/String;
	.locals 7
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;)",
			"Ljava/lang/String;"
		}
	.end annotation

	.prologue
	.line 152
	.local p0, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	invoke-static {p0}, Lcom/jumptap/adtag/events/EventManager;->getConversionTrackingUrl(Ljava/util/Map;)Ljava/lang/String;

	move-result-object v0

	.line 153
	.local v0, "baseUrl":Ljava/lang/String;
	new-instance v5, Ljava/lang/StringBuilder;

	invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	.line 155
	.local v5, "url":Ljava/lang/StringBuilder;
	const/4 v4, 0x1

	.line 160
	.local v4, "needsAMP":Z
	const-string v6, "?"

	invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_0

	const/4 v4, 0x0

	.line 163
	:cond_0
	if-eqz p0, :cond_2

	invoke-interface {p0}, Ljava/util/Map;->size()I

	move-result v6

	if-lez v6, :cond_2

	.line 164
	invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

	move-result-object v2

	.line 166
	.local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
	invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

	move-result-object v3

	.local v3, "i$":Ljava/util/Iterator;
	:goto_0
	invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

	move-result v6

	if-eqz v6, :cond_2

	invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Ljava/util/Map$Entry;

	.line 167
	.local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
	if-eqz v4, :cond_1

	const-string v6, "&"

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	.line 168
	:cond_1
	invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

	move-result-object v6

	check-cast v6, Ljava/lang/String;

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	.line 169
	const-string v6, "="

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	.line 170
	invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

	move-result-object v6

	check-cast v6, Ljava/lang/String;

	invoke-static {v6}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v6

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	.line 171
	const/4 v4, 0x1

	goto :goto_0

	.line 174
	.end local v1	# "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
	.end local v2	# "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
	.end local v3	# "i$":Ljava/util/Iterator;
	:cond_2
	invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v6

	return-object v6
.end method

.method private static getConversionTrackingUrl()Ljava/lang/String;
	.locals 1

	.prologue
	.line 179
	const-string v0, "http://a.jumptap.com/a/conversion?"

	return-object v0
.end method

.method private static getConversionTrackingUrl(Ljava/util/Map;)Ljava/lang/String;
	.locals 2
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;)",
			"Ljava/lang/String;"
		}
	.end annotation

	.prologue
	.line 184
	.local p0, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	const-string v1, "reportUrl"

	invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	.line 185
	.local v0, "url":Ljava/lang/String;
	if-nez v0, :cond_0

	invoke-static {}, Lcom/jumptap/adtag/events/EventManager;->getConversionTrackingUrl()Ljava/lang/String;

	move-result-object v0

	.line 187
	.end local v0	# "url":Ljava/lang/String;
	:goto_0
	return-object v0

	.line 186
	.restart local v0	# "url":Ljava/lang/String;
	:cond_0
	const-string v1, "reportUrl"

	invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

	goto :goto_0
.end method

.method public static getDateByEventType(Lcom/jumptap/adtag/events/EventType;Landroid/content/Context;)Ljava/lang/String;
	.locals 4
	.param p0, "eventType"	# Lcom/jumptap/adtag/events/EventType;
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 199
	const/4 v0, 0x0

	.line 201
	.local v0, "date":Ljava/lang/String;
	sget-object v3, Lcom/jumptap/adtag/events/EventType;->download:Lcom/jumptap/adtag/events/EventType;

	invoke-virtual {v3, p0}, Lcom/jumptap/adtag/events/EventType;->equals(Ljava/lang/Object;)Z

	move-result v3

	if-eqz v3, :cond_0

	if-eqz p1, :cond_0

	.line 202
	invoke-static {p1}, Lcom/jumptap/adtag/events/EventManager;->getDateForDownloadEvent(Landroid/content/Context;)Ljava/lang/String;

	move-result-object v0

	.line 209
	:goto_0
	return-object v0

	.line 205
	:cond_0
	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v1

	.line 206
	.local v1, "timeMillis":J
	const-string v3, "yyyyMMddhhmmss"

	invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

	move-result-object v0

	.end local v0	# "date":Ljava/lang/String;
	check-cast v0, Ljava/lang/String;

	.restart local v0	# "date":Ljava/lang/String;
	goto :goto_0
.end method

.method private static getDateForDownloadEvent(Landroid/content/Context;)Ljava/lang/String;
	.locals 6
	.param p0, "context"	# Landroid/content/Context;

	.prologue
	.line 219
	const-string v4, "installDate"

	const/4 v5, 0x0

	invoke-static {p0, v4, v5}, Lcom/jumptap/adtag/utils/JtAdManager;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v1

	.line 221
	.local v1, "dateFromPref":Ljava/lang/String;
	if-nez v1, :cond_0

	.line 222
	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v2

	.line 223
	.local v2, "timeMillis":J
	const-string v4, "yyyyMMddhhmmss"

	invoke-static {v4, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	.line 228
	.end local v2	# "timeMillis":J
	.local v0, "date":Ljava/lang/String;
	:goto_0
	return-object v0

	.line 226
	.end local v0	# "date":Ljava/lang/String;
	:cond_0
	move-object v0, v1

	.restart local v0	# "date":Ljava/lang/String;
	goto :goto_0
.end method

.method public static getFirstLaunchStr()Ljava/lang/String;
	.locals 1

	.prologue
	.line 143
	const-string v0, "1"

	return-object v0
.end method

.method public static getFirstPrefName()Ljava/lang/String;
	.locals 1

	.prologue
	.line 139
	const-string v0, "isFirstLaunch"

	return-object v0
.end method

.method private static initTimer()V
	.locals 2

	.prologue
	.line 277
	sget-object v0, Lcom/jumptap/adtag/events/EventManager;->eventTimer:Ljava/util/Timer;

	if-nez v0, :cond_0

	.line 278
	new-instance v0, Ljava/util/Timer;

	const-string v1, "EventManagerTimer"

	invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventManager;->eventTimer:Ljava/util/Timer;

	.line 280
	:cond_0
	return-void
.end method

.method private populateParamsMap(Landroid/content/Context;Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;Ljava/util/Map;)V
	.locals 5
	.param p1, "con"	# Landroid/content/Context;
	.param p2, "adViewLst"	# Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;
	.param p3, "eventType"	# Lcom/jumptap/adtag/events/EventType;
	.param p4, "date"	# Ljava/lang/String;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Landroid/content/Context;",
			"Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;",
			"Lcom/jumptap/adtag/events/EventType;",
			"Ljava/lang/String;",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;)V"
		}
	.end annotation

	.prologue
	.line 243
	.local p5, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	invoke-static {p1}, Lcom/jumptap/adtag/utils/JtAdManager;->getHIDSHA1(Landroid/content/Context;)Ljava/lang/String;

	move-result-object v2

	.line 244
	.local v2, "hidsha1":Ljava/lang/String;
	invoke-interface {p2}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v3

	invoke-virtual {v3}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getApplicationId()Ljava/lang/String;

	move-result-object v0

	.line 245
	.local v0, "appId":Ljava/lang/String;
	invoke-interface {p2}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v3

	invoke-virtual {v3}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getApplicationVersion()Ljava/lang/String;

	move-result-object v1

	.line 246
	.local v1, "appVer":Ljava/lang/String;
	const-string v3, "event"

	invoke-virtual {p3}, Lcom/jumptap/adtag/events/EventType;->value()Ljava/lang/String;

	move-result-object v4

	invoke-interface {p5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 247
	const-string v3, "hid_sha1"

	invoke-interface {p5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 248
	const-string v3, "app"

	invoke-interface {p5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 249
	const-string v3, "appVer"

	invoke-interface {p5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 250
	const-string v3, "date"

	invoke-interface {p5, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 251
	const-string v3, "jtreqid"

	invoke-interface {p2}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->getAdRequestId()Ljava/lang/String;

	move-result-object v4

	invoke-interface {p5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 252
	const-string v3, "pub"

	invoke-interface {p2}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v4

	invoke-virtual {v4}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getPublisherId()Ljava/lang/String;

	move-result-object v4

	invoke-interface {p5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 253
	const-string v3, "spot"

	invoke-interface {p2}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v4

	invoke-virtual {v4}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getSpotId()Ljava/lang/String;

	move-result-object v4

	invoke-interface {p5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 254
	return-void
.end method

.method private static scheduleConversionTask(Landroid/content/Context;)V
	.locals 4
	.param p0, "context"	# Landroid/content/Context;

	.prologue
	.line 287
	new-instance v0, Lcom/jumptap/adtag/events/SendConversionUrlTask;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/events/SendConversionUrlTask;-><init>(Landroid/content/Context;)V

	.line 288
	.local v0, "sendUrlConversionTask":Ljava/util/TimerTask;
	sget-object v1, Lcom/jumptap/adtag/events/EventManager;->eventTimer:Ljava/util/Timer;

	const-wide/16 v2, 0x0

	invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

	.line 289
	return-void
.end method

.method public static sendReport(Landroid/content/Context;Ljava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V
	.locals 3
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "url"	# Ljava/lang/String;
	.param p2, "eventType"	# Lcom/jumptap/adtag/events/EventType;
	.param p3, "date"	# Ljava/lang/String;

	.prologue
	.line 267
	invoke-static {}, Lcom/jumptap/adtag/events/EventManager;->initTimer()V

	.line 268
	new-instance v0, Lcom/jumptap/adtag/events/EventManager$LogEvent;

	new-instance v2, Lcom/jumptap/adtag/events/JtEvent;

	invoke-direct {v2, p1, p2, p3}, Lcom/jumptap/adtag/events/JtEvent;-><init>(Ljava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V

	invoke-direct {v0, p0, v2}, Lcom/jumptap/adtag/events/EventManager$LogEvent;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/events/JtEvent;)V

	.line 269
	.local v0, "logEvent":Ljava/lang/Runnable;
	new-instance v1, Ljava/lang/Thread;

	invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

	.line 270
	.local v1, "th":Ljava/lang/Thread;
	invoke-virtual {v1}, Ljava/lang/Thread;->start()V

	.line 271
	return-void
.end method

.method private sendReport(Lcom/jumptap/adtag/events/EventType;Ljava/util/Map;)V
	.locals 7
	.param p1, "eventType"	# Lcom/jumptap/adtag/events/EventType;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Lcom/jumptap/adtag/events/EventType;",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;)V"
		}
	.end annotation

	.prologue
	.line 82
	.local p2, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	const-string v0, "JtAd-Tracking"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "sendReport: eventType="

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {p1}, Lcom/jumptap/adtag/events/EventType;->name()Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 84
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->context:Landroid/content/Context;

	invoke-static {p1, v0}, Lcom/jumptap/adtag/events/EventManager;->getDateByEventType(Lcom/jumptap/adtag/events/EventType;Landroid/content/Context;)Ljava/lang/String;

	move-result-object v4

	.line 87
	.local v4, "date":Ljava/lang/String;
	if-nez p2, :cond_0

	.line 88
	new-instance p2, Ljava/util/HashMap;

	.end local p2	# "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

	.line 90
	.restart local p2	# "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	:cond_0
	iget-object v1, p0, Lcom/jumptap/adtag/events/EventManager;->context:Landroid/content/Context;

	iget-object v2, p0, Lcom/jumptap/adtag/events/EventManager;->adViewListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	move-object v0, p0

	move-object v3, p1

	move-object v5, p2

	invoke-direct/range {v0 .. v5}, Lcom/jumptap/adtag/events/EventManager;->populateParamsMap(Landroid/content/Context;Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;Ljava/util/Map;)V

	.line 93
	invoke-static {p2}, Lcom/jumptap/adtag/events/EventManager;->buildEventTrackingUrl(Ljava/util/Map;)Ljava/lang/String;

	move-result-object v6

	.line 96
	.local v6, "eventTrackingUrl":Ljava/lang/String;
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->context:Landroid/content/Context;

	invoke-static {v0, v6, p1, v4}, Lcom/jumptap/adtag/events/EventManager;->sendReport(Landroid/content/Context;Ljava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V

	.line 97
	return-void
.end method

.method private startTimer()V
	.locals 4

	.prologue
	.line 295
	const-string v0, "JtAd-Tracking"

	const-string v1, "Starting Interaction Event Task timer"

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 297
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->interEventTask:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	if-eqz v0, :cond_0

	.line 298
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->interEventTask:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	invoke-virtual {v0}, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;->cancel()Z

	.line 300
	:cond_0
	new-instance v0, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	const/4 v1, 0x0

	invoke-direct {v0, p0, v1}, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;-><init>(Lcom/jumptap/adtag/events/EventManager;Lcom/jumptap/adtag/events/EventManager$1;)V

	iput-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->interEventTask:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	.line 301
	sget-object v0, Lcom/jumptap/adtag/events/EventManager;->eventTimer:Ljava/util/Timer;

	iget-object v1, p0, Lcom/jumptap/adtag/events/EventManager;->interEventTask:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	const-wide/32 v2, 0xea60

	invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

	.line 303
	return-void
.end method

.method private stopTimer()V
	.locals 2

	.prologue
	.line 309
	const-string v0, "JtAd-Tracking"

	const-string v1, "stopping Interaction Event Task timer"

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 310
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->interEventTask:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	if-eqz v0, :cond_0

	.line 311
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->interEventTask:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	invoke-virtual {v0}, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;->cancel()Z

	.line 313
	:cond_0
	return-void
.end method


# virtual methods
.method public close()V
	.locals 2

	.prologue
	.line 72
	iget-object v1, p0, Lcom/jumptap/adtag/events/EventManager;->context:Landroid/content/Context;

	invoke-static {v1}, Lcom/jumptap/adtag/db/DBManager;->getInstance(Landroid/content/Context;)Lcom/jumptap/adtag/db/DBManager;

	move-result-object v0

	.line 73
	.local v0, "dbManager":Lcom/jumptap/adtag/db/DBManager;
	invoke-virtual {v0}, Lcom/jumptap/adtag/db/DBManager;->close()V

	.line 74
	return-void
.end method

.method public forceSendingInteractEvent()V
	.locals 3

	.prologue
	.line 132
	invoke-virtual {p0}, Lcom/jumptap/adtag/events/EventManager;->stopInteraction()V

	.line 133
	const-string v1, "JtAd-Tracking"

	const-string v2, "forceSendingInteractEvent"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 134
	new-instance v0, Ljava/lang/Thread;

	iget-object v1, p0, Lcom/jumptap/adtag/events/EventManager;->interEventTask:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

	.line 135
	.local v0, "th":Ljava/lang/Thread;
	invoke-virtual {v0}, Ljava/lang/Thread;->start()V

	.line 136
	return-void
.end method

.method public sendReport(Lcom/jumptap/adtag/events/EventType;)V
	.locals 1
	.param p1, "eventType"	# Lcom/jumptap/adtag/events/EventType;

	.prologue
	.line 68
	const/4 v0, 0x0

	invoke-direct {p0, p1, v0}, Lcom/jumptap/adtag/events/EventManager;->sendReport(Lcom/jumptap/adtag/events/EventType;Ljava/util/Map;)V

	.line 69
	return-void
.end method

.method public startInteraction()V
	.locals 2
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 105
	const-string v0, "JtAd-Tracking"

	const-string v1, "startInteraction"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 106
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->eventInteractionInfo:Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;

	invoke-virtual {v0}, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->interactionStarted()V

	.line 107
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->adViewListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	invoke-interface {v0}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->onBeginAdInteraction()V

	.line 109
	invoke-direct {p0}, Lcom/jumptap/adtag/events/EventManager;->stopTimer()V

	.line 110
	return-void
.end method

.method public stopInteraction()V
	.locals 2
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 118
	const-string v0, "JtAd-Tracking"

	const-string v1, "stopInteraction"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 119
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->eventInteractionInfo:Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;

	invoke-virtual {v0}, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->interactionEnded()V

	.line 120
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager;->adViewListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

	invoke-interface {v0}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->onEndAdInteraction()V

	.line 122
	invoke-direct {p0}, Lcom/jumptap/adtag/events/EventManager;->startTimer()V

	.line 123
	return-void
.end method
