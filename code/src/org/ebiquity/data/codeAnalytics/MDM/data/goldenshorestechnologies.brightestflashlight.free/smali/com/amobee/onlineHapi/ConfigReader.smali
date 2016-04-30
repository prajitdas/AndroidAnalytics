.class public Lcom/amobee/onlineHapi/ConfigReader;
.super Ljava/lang/Object;
.source "ConfigReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Amobee.ConfigReader"

.field private static instance:Lcom/amobee/onlineHapi/ConfigReader;

.field private static res:Landroid/content/res/Resources;


# instance fields
.field private ctx:Landroid/content/Context;

.field private paramsMap:Ljava/util/HashMap;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Ljava/util/HashMap",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;"
		}
	.end annotation
.end field


# direct methods
.method static constructor <clinit>()V
	.locals 1

	.prologue
	const/4 v0, 0x0

	.line 20
	sput-object v0, Lcom/amobee/onlineHapi/ConfigReader;->instance:Lcom/amobee/onlineHapi/ConfigReader;

	.line 22
	sput-object v0, Lcom/amobee/onlineHapi/ConfigReader;->res:Landroid/content/res/Resources;

	.line 17
	return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
	.locals 1
	.param p1, "ctx"	# Landroid/content/Context;

	.prologue
	const/4 v0, 0x0

	.line 26
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 21
	iput-object v0, p0, Lcom/amobee/onlineHapi/ConfigReader;->ctx:Landroid/content/Context;

	.line 23
	iput-object v0, p0, Lcom/amobee/onlineHapi/ConfigReader;->paramsMap:Ljava/util/HashMap;

	.line 28
	invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

	move-result-object v0

	sput-object v0, Lcom/amobee/onlineHapi/ConfigReader;->res:Landroid/content/res/Resources;

	.line 29
	iput-object p1, p0, Lcom/amobee/onlineHapi/ConfigReader;->ctx:Landroid/content/Context;

	.line 30
	invoke-direct {p0}, Lcom/amobee/onlineHapi/ConfigReader;->init()V

	.line 31
	return-void
.end method

.method protected static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amobee/onlineHapi/ConfigReader;
	.locals 2
	.param p0, "ctx"	# Landroid/content/Context;

	.prologue
	.line 74
	const-class v1, Lcom/amobee/onlineHapi/ConfigReader;

	monitor-enter v1

	:try_start_0
	sget-object v0, Lcom/amobee/onlineHapi/ConfigReader;->instance:Lcom/amobee/onlineHapi/ConfigReader;

	if-nez v0, :cond_0

	.line 76
	new-instance v0, Lcom/amobee/onlineHapi/ConfigReader;

	invoke-direct {v0, p0}, Lcom/amobee/onlineHapi/ConfigReader;-><init>(Landroid/content/Context;)V

	sput-object v0, Lcom/amobee/onlineHapi/ConfigReader;->instance:Lcom/amobee/onlineHapi/ConfigReader;

	.line 78
	:cond_0
	sget-object v0, Lcom/amobee/onlineHapi/ConfigReader;->instance:Lcom/amobee/onlineHapi/ConfigReader;
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	monitor-exit v1

	return-object v0

	.line 74
	:catchall_0
	move-exception v0

	monitor-exit v1

	throw v0
.end method

.method private init()V
	.locals 8

	.prologue
	.line 39
	sget-object v4, Lcom/amobee/onlineHapi/ConfigReader;->res:Landroid/content/res/Resources;

	const-string v5, "amobee_config"

	const-string v6, "xml"

	iget-object v7, p0, Lcom/amobee/onlineHapi/ConfigReader;->ctx:Landroid/content/Context;

	invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

	move-result-object v7

	invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

	move-result v2

	.line 40
	.local v2, "resId":I
	const/4 v3, 0x0

	.line 41
	.local v3, "xpp":Landroid/content/res/XmlResourceParser;
	const/4 v1, -0x1

	.line 43
	.local v1, "eventType":I
	new-instance v4, Ljava/util/HashMap;

	invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

	iput-object v4, p0, Lcom/amobee/onlineHapi/ConfigReader;->paramsMap:Ljava/util/HashMap;

	.line 45
	if-lez v2, :cond_0

	.line 49
	:try_start_0
	sget-object v4, Lcom/amobee/onlineHapi/ConfigReader;->res:Landroid/content/res/Resources;

	invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

	move-result-object v3

	.line 50
	invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

	move-result v1

	.line 51
	:goto_0
	const/4 v4, 0x1

	if-ne v1, v4, :cond_1

	.line 70
	:cond_0
	:goto_1
	return-void

	.line 53
	:cond_1
	const/4 v4, 0x2

	if-ne v1, v4, :cond_2

	invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

	move-result-object v4

	const-string v5, "root"

	invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v4

	if-nez v4, :cond_2

	.line 55
	iget-object v4, p0, Lcom/amobee/onlineHapi/ConfigReader;->paramsMap:Ljava/util/HashMap;

	invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

	move-result-object v5

	invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

	move-result-object v6

	invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 57
	invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

	move-result v1

	goto :goto_0

	.line 61
	:cond_2
	invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	move-result v1

	goto :goto_0

	.line 65
	:catch_0
	move-exception v0

	.line 67
	.local v0, "e":Ljava/lang/Exception;
	const-string v4, "Amobee.ConfigReader"

	invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

	move-result-object v5

	invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto :goto_1
.end method


# virtual methods
.method protected getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
	.locals 2
	.param p1, "key"	# Ljava/lang/String;
	.param p2, "defaultValue"	# Ljava/lang/String;

	.prologue
	.line 94
	invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

	move-result-object v0

	.line 95
	.local v0, "tempKey":Ljava/lang/String;
	iget-object v1, p0, Lcom/amobee/onlineHapi/ConfigReader;->paramsMap:Ljava/util/HashMap;

	invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

	move-result v1

	if-eqz v1, :cond_0

	.line 97
	iget-object v1, p0, Lcom/amobee/onlineHapi/ConfigReader;->paramsMap:Ljava/util/HashMap;

	invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Ljava/lang/String;

	.line 101
	:goto_0
	return-object v1

	:cond_0
	move-object v1, p2

	goto :goto_0
.end method
