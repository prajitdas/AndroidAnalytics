.class public Lcom/amobee/onlineHapi/OnlineHAPI;
.super Ljava/lang/Object;
.source "OnlineHAPI.java"


# static fields
.field static accountID:Ljava/lang/String;

.field static adServerUrl:Ljava/lang/String;

.field static hostApplicationCategories:Ljava/lang/String;

.field private static instance:Lcom/amobee/onlineHapi/OnlineHAPI;

.field static isFadeAnimationEnabled:Z

.field static telephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private context:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
	.locals 3
	.param p1, "context"	# Landroid/app/Activity;

	.prologue
	.line 54
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 56
	iput-object p1, p0, Lcom/amobee/onlineHapi/OnlineHAPI;->context:Landroid/app/Activity;

	.line 57
	invoke-static {p1}, Lcom/amobee/onlineHapi/ConfigReader;->getInstance(Landroid/content/Context;)Lcom/amobee/onlineHapi/ConfigReader;

	move-result-object v0

	const-string v1, "adServerURL"

	const-string v2, ""

	invoke-virtual {v0, v1, v2}, Lcom/amobee/onlineHapi/ConfigReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v0

	sput-object v0, Lcom/amobee/onlineHapi/OnlineHAPI;->adServerUrl:Ljava/lang/String;

	.line 58
	invoke-static {p1}, Lcom/amobee/onlineHapi/ConfigReader;->getInstance(Landroid/content/Context;)Lcom/amobee/onlineHapi/ConfigReader;

	move-result-object v0

	const-string v1, "AccountID"

	const-string v2, ""

	invoke-virtual {v0, v1, v2}, Lcom/amobee/onlineHapi/ConfigReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v0

	sput-object v0, Lcom/amobee/onlineHapi/OnlineHAPI;->accountID:Ljava/lang/String;

	.line 59
	invoke-static {p1}, Lcom/amobee/onlineHapi/ConfigReader;->getInstance(Landroid/content/Context;)Lcom/amobee/onlineHapi/ConfigReader;

	move-result-object v0

	const-string v1, "HostApplicationCategories"

	const-string v2, ""

	invoke-virtual {v0, v1, v2}, Lcom/amobee/onlineHapi/ConfigReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v0

	sput-object v0, Lcom/amobee/onlineHapi/OnlineHAPI;->hostApplicationCategories:Ljava/lang/String;

	.line 60
	invoke-static {p1}, Lcom/amobee/onlineHapi/ConfigReader;->getInstance(Landroid/content/Context;)Lcom/amobee/onlineHapi/ConfigReader;

	move-result-object v0

	const-string v1, "IsFadeAnimationEnabled"

	const-string v2, "true"

	invoke-virtual {v0, v1, v2}, Lcom/amobee/onlineHapi/ConfigReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v0

	const-string v1, "false"

	invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v0

	if-eqz v0, :cond_0

	.line 61
	const/4 v0, 0x0

	sput-boolean v0, Lcom/amobee/onlineHapi/OnlineHAPI;->isFadeAnimationEnabled:Z

	.line 64
	:goto_0
	const-string v0, "phone"

	invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Landroid/telephony/TelephonyManager;

	sput-object v0, Lcom/amobee/onlineHapi/OnlineHAPI;->telephonyManager:Landroid/telephony/TelephonyManager;

	.line 65
	return-void

	.line 63
	:cond_0
	const/4 v0, 0x1

	sput-boolean v0, Lcom/amobee/onlineHapi/OnlineHAPI;->isFadeAnimationEnabled:Z

	goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/amobee/onlineHapi/OnlineHAPI;
	.locals 2
	.param p0, "context"	# Landroid/app/Activity;

	.prologue
	.line 47
	const-class v1, Lcom/amobee/onlineHapi/OnlineHAPI;

	monitor-enter v1

	:try_start_0
	sget-object v0, Lcom/amobee/onlineHapi/OnlineHAPI;->instance:Lcom/amobee/onlineHapi/OnlineHAPI;

	if-nez v0, :cond_0

	.line 49
	new-instance v0, Lcom/amobee/onlineHapi/OnlineHAPI;

	invoke-direct {v0, p0}, Lcom/amobee/onlineHapi/OnlineHAPI;-><init>(Landroid/app/Activity;)V

	sput-object v0, Lcom/amobee/onlineHapi/OnlineHAPI;->instance:Lcom/amobee/onlineHapi/OnlineHAPI;

	.line 51
	:cond_0
	sget-object v0, Lcom/amobee/onlineHapi/OnlineHAPI;->instance:Lcom/amobee/onlineHapi/OnlineHAPI;
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	monitor-exit v1

	return-object v0

	.line 47
	:catchall_0
	move-exception v0

	monitor-exit v1

	throw v0
.end method


# virtual methods
.method public getAdView(Ljava/lang/String;ILjava/lang/String;)Lcom/amobee/onlineHapi/AmobeeAdView;
	.locals 2
	.param p1, "adSpace"	# Ljava/lang/String;
	.param p2, "placement"	# I
	.param p3, "format"	# Ljava/lang/String;

	.prologue
	.line 77
	new-instance v0, Lcom/amobee/onlineHapi/AmobeeAdView;

	iget-object v1, p0, Lcom/amobee/onlineHapi/OnlineHAPI;->context:Landroid/app/Activity;

	invoke-direct {v0, v1, p1, p2, p3}, Lcom/amobee/onlineHapi/AmobeeAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

	.line 78
	.local v0, "adView":Lcom/amobee/onlineHapi/AmobeeAdView;
	return-object v0
.end method
