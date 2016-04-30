.class public Lcom/jumptap/adtag/actions/ActionFactory;
.super Ljava/lang/Object;
.source "ActionFactory.java"


# static fields
.field private static browserAction:Lcom/jumptap/adtag/actions/AdAction;

.field private static callAction:Lcom/jumptap/adtag/actions/AdAction;

.field private static mapAdAction:Lcom/jumptap/adtag/actions/AdAction;

.field private static storeAdAction:Lcom/jumptap/adtag/actions/AdAction;

.field private static videoAdAction:Lcom/jumptap/adtag/actions/AdAction;

.field private static youTubeAdAction:Lcom/jumptap/adtag/actions/AdAction;


# direct methods
.method static constructor <clinit>()V
	.locals 1

	.prologue
	.line 10
	new-instance v0, Lcom/jumptap/adtag/actions/BrowserAdAction;

	invoke-direct {v0}, Lcom/jumptap/adtag/actions/BrowserAdAction;-><init>()V

	sput-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->browserAction:Lcom/jumptap/adtag/actions/AdAction;

	.line 11
	new-instance v0, Lcom/jumptap/adtag/actions/CallAdAction;

	invoke-direct {v0}, Lcom/jumptap/adtag/actions/CallAdAction;-><init>()V

	sput-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->callAction:Lcom/jumptap/adtag/actions/AdAction;

	.line 12
	new-instance v0, Lcom/jumptap/adtag/actions/VideoAdAction;

	invoke-direct {v0}, Lcom/jumptap/adtag/actions/VideoAdAction;-><init>()V

	sput-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->videoAdAction:Lcom/jumptap/adtag/actions/AdAction;

	.line 13
	new-instance v0, Lcom/jumptap/adtag/actions/YouTubeAdAction;

	invoke-direct {v0}, Lcom/jumptap/adtag/actions/YouTubeAdAction;-><init>()V

	sput-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->youTubeAdAction:Lcom/jumptap/adtag/actions/AdAction;

	.line 14
	new-instance v0, Lcom/jumptap/adtag/actions/MapAdAction;

	invoke-direct {v0}, Lcom/jumptap/adtag/actions/MapAdAction;-><init>()V

	sput-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->mapAdAction:Lcom/jumptap/adtag/actions/AdAction;

	.line 15
	new-instance v0, Lcom/jumptap/adtag/actions/StoreAdAction;

	invoke-direct {v0}, Lcom/jumptap/adtag/actions/StoreAdAction;-><init>()V

	sput-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->storeAdAction:Lcom/jumptap/adtag/actions/AdAction;

	return-void
.end method

.method public constructor <init>()V
	.locals 0

	.prologue
	.line 8
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method

.method public static createAction(Ljava/lang/String;Ljava/lang/String;)Lcom/jumptap/adtag/actions/AdAction;
	.locals 8
	.param p0, "url"	# Ljava/lang/String;
	.param p1, "useragent"	# Ljava/lang/String;

	.prologue
	.line 27
	const-string v5, "JtAd"

	new-instance v6, Ljava/lang/StringBuilder;

	invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

	const-string v7, "createAction from url:"

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v6

	invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 28
	const/4 v0, 0x0

	.line 31
	.local v0, "action":Lcom/jumptap/adtag/actions/AdAction;
	invoke-static {p0, p1}, Lcom/jumptap/adtag/actions/AdAction;->getRedirectedUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v4

	.line 32
	.local v4, "redirectedUrl":Ljava/lang/String;
	const-string v5, "JtAd"

	new-instance v6, Ljava/lang/StringBuilder;

	invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

	const-string v7, "redirected Url:"

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v6

	invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 33
	if-eqz v4, :cond_2

	const-string v5, ""

	invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v5

	if-nez v5, :cond_2

	.line 35
	invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v3

	.line 38
	.local v3, "redirectedUri":Landroid/net/Uri;
	invoke-static {v3}, Lcom/jumptap/adtag/actions/ActionFactory;->createActionByUri(Landroid/net/Uri;)Lcom/jumptap/adtag/actions/AdAction;

	move-result-object v0

	.line 46
	.end local v3	# "redirectedUri":Landroid/net/Uri;
	:goto_0
	if-nez v0, :cond_0

	.line 47
	invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v2

	.line 48
	.local v2, "origUri":Landroid/net/Uri;
	const-string v5, "t"

	invoke-virtual {v2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v1

	.line 49
	.local v1, "actionType":Ljava/lang/String;
	const-string v5, "JtAd"

	new-instance v6, Ljava/lang/StringBuilder;

	invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

	const-string v7, "actionType= "

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v6

	invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 50
	invoke-static {v1}, Lcom/jumptap/adtag/actions/ActionFactory;->createActionByType(Ljava/lang/String;)Lcom/jumptap/adtag/actions/AdAction;

	move-result-object v0

	.line 54
	.end local v1	# "actionType":Ljava/lang/String;
	.end local v2	# "origUri":Landroid/net/Uri;
	:cond_0
	if-nez v0, :cond_1

	.line 55
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->browserAction:Lcom/jumptap/adtag/actions/AdAction;

	.line 58
	:cond_1
	invoke-virtual {v0, p0}, Lcom/jumptap/adtag/actions/AdAction;->setUrl(Ljava/lang/String;)V

	.line 59
	invoke-virtual {v0, v4}, Lcom/jumptap/adtag/actions/AdAction;->setRedirectedUrl(Ljava/lang/String;)V

	.line 60
	invoke-virtual {v0, p1}, Lcom/jumptap/adtag/actions/AdAction;->setUserAgent(Ljava/lang/String;)V

	.line 62
	return-object v0

	.line 41
	:cond_2
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->browserAction:Lcom/jumptap/adtag/actions/AdAction;

	.line 42
	move-object v4, p0

	goto :goto_0
.end method

.method private static createActionByType(Ljava/lang/String;)Lcom/jumptap/adtag/actions/AdAction;
	.locals 2
	.param p0, "actionType"	# Ljava/lang/String;

	.prologue
	.line 112
	const/4 v0, 0x0

	.line 114
	.local v0, "action":Lcom/jumptap/adtag/actions/AdAction;
	if-eqz p0, :cond_0

	const-string v1, "uri"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-nez v1, :cond_0

	const-string v1, "url"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-eqz v1, :cond_2

	.line 115
	:cond_0
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->browserAction:Lcom/jumptap/adtag/actions/AdAction;

	.line 133
	:cond_1
	:goto_0
	return-object v0

	.line 117
	:cond_2
	const-string v1, "call"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-nez v1, :cond_3

	const-string v1, "tel"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-eqz v1, :cond_4

	.line 118
	:cond_3
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->callAction:Lcom/jumptap/adtag/actions/AdAction;

	goto :goto_0

	.line 120
	:cond_4
	const-string v1, "video"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-nez v1, :cond_5

	const-string v1, "movie"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-eqz v1, :cond_6

	.line 121
	:cond_5
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->videoAdAction:Lcom/jumptap/adtag/actions/AdAction;

	goto :goto_0

	.line 123
	:cond_6
	const-string v1, "youtube"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-eqz v1, :cond_7

	.line 124
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->youTubeAdAction:Lcom/jumptap/adtag/actions/AdAction;

	goto :goto_0

	.line 126
	:cond_7
	const-string v1, "map"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-nez v1, :cond_8

	const-string v1, "gmap"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-eqz v1, :cond_9

	.line 127
	:cond_8
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->mapAdAction:Lcom/jumptap/adtag/actions/AdAction;

	goto :goto_0

	.line 129
	:cond_9
	const-string v1, "itunes"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-nez v1, :cond_a

	const-string v1, "store"

	invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	if-eqz v1, :cond_1

	.line 130
	:cond_a
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->storeAdAction:Lcom/jumptap/adtag/actions/AdAction;

	goto :goto_0
.end method

.method private static createActionByUri(Landroid/net/Uri;)Lcom/jumptap/adtag/actions/AdAction;
	.locals 7
	.param p0, "uri"	# Landroid/net/Uri;

	.prologue
	.line 71
	const/4 v0, 0x0

	.line 73
	.local v0, "action":Lcom/jumptap/adtag/actions/AdAction;
	invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

	move-result-object v3

	.line 74
	.local v3, "scheme":Ljava/lang/String;
	invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

	move-result-object v1

	.line 75
	.local v1, "host":Ljava/lang/String;
	invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

	move-result-object v2

	.line 76
	.local v2, "path":Ljava/lang/String;
	const-string v4, "JtAd"

	new-instance v5, Ljava/lang/StringBuilder;

	invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

	const-string v6, "Creating action from scheme:"

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	const-string v6, "  host: "

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	const-string v6, "   path:"

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v5

	invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 83
	const-string v4, "about"

	invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v4

	if-eqz v4, :cond_1

	.line 84
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->browserAction:Lcom/jumptap/adtag/actions/AdAction;

	.line 97
	:cond_0
	:goto_0
	return-object v0

	.line 85
	:cond_1
	const-string v4, "tel"

	invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v4

	if-nez v4, :cond_2

	const-string v4, "sms"

	invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v4

	if-eqz v4, :cond_3

	.line 87
	:cond_2
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->callAction:Lcom/jumptap/adtag/actions/AdAction;

	goto :goto_0

	.line 88
	:cond_3
	if-eqz v2, :cond_4

	const-string v4, ""

	invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v4

	if-nez v4, :cond_4

	invoke-static {v2}, Lcom/jumptap/adtag/actions/ActionFactory;->isVideoExt(Ljava/lang/String;)Z

	move-result v4

	if-eqz v4, :cond_4

	.line 89
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->videoAdAction:Lcom/jumptap/adtag/actions/AdAction;

	goto :goto_0

	.line 90
	:cond_4
	const-string v4, "maps.google.com"

	invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v4

	if-eqz v4, :cond_5

	.line 91
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->mapAdAction:Lcom/jumptap/adtag/actions/AdAction;

	goto :goto_0

	.line 92
	:cond_5
	const-string v4, "www.youtube.com"

	invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v4

	if-eqz v4, :cond_0

	if-eqz v2, :cond_0

	const-string v4, "/watch"

	invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

	move-result v4

	if-eqz v4, :cond_0

	.line 94
	sget-object v0, Lcom/jumptap/adtag/actions/ActionFactory;->youTubeAdAction:Lcom/jumptap/adtag/actions/AdAction;

	goto :goto_0
.end method

.method private static isVideoExt(Ljava/lang/String;)Z
	.locals 1
	.param p0, "path"	# Ljava/lang/String;

	.prologue
	.line 101
	const-string v0, ".mov"

	invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v0

	if-nez v0, :cond_0

	const-string v0, ".avi"

	invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v0

	if-nez v0, :cond_0

	const-string v0, ".mpg"

	invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v0

	if-nez v0, :cond_0

	const-string v0, ".mpeg"

	invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v0

	if-nez v0, :cond_0

	const-string v0, ".wmv"

	invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v0

	if-nez v0, :cond_0

	const-string v0, ".wma"

	invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v0

	if-nez v0, :cond_0

	const-string v0, ".mp4"

	invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v0

	if-nez v0, :cond_0

	const-string v0, ".3pg"

	invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v0

	if-eqz v0, :cond_1

	:cond_0
	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_1
	const/4 v0, 0x0

	goto :goto_0
.end method
