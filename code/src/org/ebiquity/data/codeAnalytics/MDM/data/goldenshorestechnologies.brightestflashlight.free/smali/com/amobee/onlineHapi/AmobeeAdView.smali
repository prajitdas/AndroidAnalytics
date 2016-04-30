.class public final Lcom/amobee/onlineHapi/AmobeeAdView;
.super Landroid/webkit/WebView;
.source "AmobeeAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;
	}
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amobee$onlineHapi$AmobeeAdView$TargetingKey:[I = null

.field private static final ANIMATION_DURATION:I = 0x5dc

.field private static final DEFAULT_CONTENT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "text/html"

.field private static final DEFAULT_REFRESH_INTERVAL:I = 0x3c

.field public static final FADE_IN_MSG:I = 0x2

.field public static final FADE_OUT_MSG:I = 0x3

.field private static final STANDART_BANNER_HEIGHT:I = 0x4b

.field private static final STANDART_BANNER_WIDTH:I = 0x140


# instance fields
.field private adRequest:Ljava/lang/String;

.field private adSpace:Ljava/lang/String;

.field private fadeInAnimation:Landroid/view/animation/Animation;

.field private fadeOutAnimation:Landroid/view/animation/Animation;

.field private format:Ljava/lang/String;

.field private height:I

.field private mHandler:Landroid/os/Handler;

.field private placement:I

.field private refreshInterval:I

.field private targetingStr:Ljava/lang/String;

.field private webViewClient:Lcom/amobee/onlineHapi/AmobeeWebViewClient;

.field private width:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$amobee$onlineHapi$AmobeeAdView$TargetingKey()[I
	.locals 3

	.prologue
	.line 26
	sget-object v0, Lcom/amobee/onlineHapi/AmobeeAdView;->$SWITCH_TABLE$com$amobee$onlineHapi$AmobeeAdView$TargetingKey:[I

	if-eqz v0, :cond_0

	:goto_0
	return-object v0

	:cond_0
	invoke-static {}, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->values()[Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	move-result-object v0

	array-length v0, v0

	new-array v0, v0, [I

	:try_start_0
	sget-object v1, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->AGE:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	invoke-virtual {v1}, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->ordinal()I

	move-result v1

	const/4 v2, 0x3

	aput v2, v0, v1
	:try_end_0
	.catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

	:goto_1
	:try_start_1
	sget-object v1, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->DATE_OF_BIRTH:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	invoke-virtual {v1}, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->ordinal()I

	move-result v1

	const/4 v2, 0x4

	aput v2, v0, v1
	:try_end_1
	.catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

	:goto_2
	:try_start_2
	sget-object v1, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->GENDER:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	invoke-virtual {v1}, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->ordinal()I

	move-result v1

	const/4 v2, 0x2

	aput v2, v0, v1
	:try_end_2
	.catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

	:goto_3
	:try_start_3
	sget-object v1, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->POSTAL_CODE:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	invoke-virtual {v1}, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->ordinal()I

	move-result v1

	const/4 v2, 0x1

	aput v2, v0, v1
	:try_end_3
	.catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

	:goto_4
	sput-object v0, Lcom/amobee/onlineHapi/AmobeeAdView;->$SWITCH_TABLE$com$amobee$onlineHapi$AmobeeAdView$TargetingKey:[I

	goto :goto_0

	:catch_0
	move-exception v1

	goto :goto_4

	:catch_1
	move-exception v1

	goto :goto_3

	:catch_2
	move-exception v1

	goto :goto_2

	:catch_3
	move-exception v1

	goto :goto_1
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
	.locals 4
	.param p1, "activity"	# Landroid/app/Activity;
	.param p2, "adSpace"	# Ljava/lang/String;
	.param p3, "placement"	# I
	.param p4, "format"	# Ljava/lang/String;

	.prologue
	const/high16 v3, 0x3f800000	# 1.0f

	const/4 v2, 0x0

	.line 63
	invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

	.line 51
	const-string v0, ""

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;

	.line 108
	new-instance v0, Lcom/amobee/onlineHapi/AmobeeAdView$1;

	invoke-direct {v0, p0}, Lcom/amobee/onlineHapi/AmobeeAdView$1;-><init>(Lcom/amobee/onlineHapi/AmobeeAdView;)V

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->mHandler:Landroid/os/Handler;

	.line 64
	iput-object p2, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->adSpace:Ljava/lang/String;

	.line 65
	iput p3, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->placement:I

	.line 66
	iput-object p4, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->format:Ljava/lang/String;

	.line 67
	invoke-direct {p0, p2, p3, p4}, Lcom/amobee/onlineHapi/AmobeeAdView;->createAdRequest(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

	move-result-object v0

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->adRequest:Ljava/lang/String;

	.line 69
	new-instance v0, Lcom/amobee/onlineHapi/AmobeeWebViewClient;

	invoke-direct {v0, p1}, Lcom/amobee/onlineHapi/AmobeeWebViewClient;-><init>(Landroid/app/Activity;)V

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->webViewClient:Lcom/amobee/onlineHapi/AmobeeWebViewClient;

	.line 70
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->webViewClient:Lcom/amobee/onlineHapi/AmobeeWebViewClient;

	iget-object v1, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->mHandler:Landroid/os/Handler;

	invoke-virtual {v0, v1}, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->setHandler(Landroid/os/Handler;)V

	.line 71
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->webViewClient:Lcom/amobee/onlineHapi/AmobeeWebViewClient;

	invoke-virtual {p0, v0}, Lcom/amobee/onlineHapi/AmobeeAdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

	.line 73
	new-instance v0, Landroid/view/animation/AlphaAnimation;

	invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

	.line 74
	new-instance v0, Landroid/view/animation/AlphaAnimation;

	invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->fadeInAnimation:Landroid/view/animation/Animation;

	.line 76
	const/4 v0, 0x0

	invoke-virtual {p0, v0}, Lcom/amobee/onlineHapi/AmobeeAdView;->setVerticalScrollBarEnabled(Z)V

	.line 77
	invoke-virtual {p0}, Lcom/amobee/onlineHapi/AmobeeAdView;->getSettings()Landroid/webkit/WebSettings;

	move-result-object v0

	const/4 v1, 0x1

	invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

	.line 79
	invoke-virtual {p0}, Lcom/amobee/onlineHapi/AmobeeAdView;->getNewAd()V

	.line 80
	return-void
.end method

.method static synthetic access$0(Lcom/amobee/onlineHapi/AmobeeAdView;)Landroid/view/animation/Animation;
	.locals 1

	.prologue
	.line 49
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->fadeInAnimation:Landroid/view/animation/Animation;

	return-object v0
.end method

.method static synthetic access$1(Lcom/amobee/onlineHapi/AmobeeAdView;Landroid/view/animation/Animation;)V
	.locals 0

	.prologue
	.line 97
	invoke-direct {p0, p1}, Lcom/amobee/onlineHapi/AmobeeAdView;->startCustomAnimation(Landroid/view/animation/Animation;)V

	return-void
.end method

.method static synthetic access$2(Lcom/amobee/onlineHapi/AmobeeAdView;)Landroid/view/animation/Animation;
	.locals 1

	.prologue
	.line 48
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

	return-object v0
.end method

.method static synthetic access$3(Lcom/amobee/onlineHapi/AmobeeAdView;)I
	.locals 1

	.prologue
	.line 43
	iget v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->refreshInterval:I

	return v0
.end method

.method static synthetic access$4(Lcom/amobee/onlineHapi/AmobeeAdView;)Ljava/lang/String;
	.locals 1

	.prologue
	.line 157
	invoke-direct {p0}, Lcom/amobee/onlineHapi/AmobeeAdView;->getUserAgent()Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method

.method static synthetic access$5(Lcom/amobee/onlineHapi/AmobeeAdView;)Ljava/lang/String;
	.locals 1

	.prologue
	.line 39
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->adRequest:Ljava/lang/String;

	return-object v0
.end method

.method static synthetic access$6(Lcom/amobee/onlineHapi/AmobeeAdView;)Ljava/lang/String;
	.locals 1

	.prologue
	.line 51
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;

	return-object v0
.end method

.method static synthetic access$7(Lcom/amobee/onlineHapi/AmobeeAdView;Ljava/net/HttpURLConnection;)[B
	.locals 1
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 180
	invoke-direct {p0, p1}, Lcom/amobee/onlineHapi/AmobeeAdView;->getData(Ljava/net/HttpURLConnection;)[B

	move-result-object v0

	return-object v0
.end method

.method static synthetic access$8(Lcom/amobee/onlineHapi/AmobeeAdView;)Landroid/os/Handler;
	.locals 1

	.prologue
	.line 108
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->mHandler:Landroid/os/Handler;

	return-object v0
.end method

.method private createAdRequest(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
	.locals 4
	.param p1, "adSpace"	# Ljava/lang/String;
	.param p2, "placement"	# I
	.param p3, "format"	# Ljava/lang/String;

	.prologue
	.line 132
	new-instance v1, Ljava/lang/StringBuffer;

	invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

	.line 133
	.local v1, "sb":Ljava/lang/StringBuffer;
	sget-object v2, Lcom/amobee/onlineHapi/OnlineHAPI;->adServerUrl:Ljava/lang/String;

	invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 134
	const-string v2, "?protocol=1&category="

	invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 135
	invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 136
	const-string v2, "&time="

	invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 137
	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v2

	invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

	.line 138
	const-string v2, "&test=0&type=4&placement="

	invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 139
	invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

	.line 140
	const-string v2, "&format="

	invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 141
	invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 142
	const-string v2, "&HTMLFormat=xhtml"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 143
	const-string v2, "&next=http%3A%2F%2Fserver07%2Eamobee%2Ecom%3A80%2FAI%5FASP%2Fx%2Easp"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 145
	sget-object v2, Lcom/amobee/onlineHapi/OnlineHAPI;->telephonyManager:Landroid/telephony/TelephonyManager;

	invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

	move-result-object v0

	.line 146
	.local v0, "deviceId":Ljava/lang/String;
	new-instance v2, Ljava/lang/StringBuilder;

	const-string v3, "&u="

	invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 147
	new-instance v2, Ljava/lang/StringBuilder;

	const-string v3, "&accid="

	invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	sget-object v3, Lcom/amobee/onlineHapi/OnlineHAPI;->accountID:Ljava/lang/String;

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 148
	new-instance v2, Ljava/lang/StringBuilder;

	const-string v3, "&c="

	invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	sget-object v3, Lcom/amobee/onlineHapi/OnlineHAPI;->hostApplicationCategories:Ljava/lang/String;

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

	.line 150
	invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

	move-result-object v2

	return-object v2
.end method

.method private getData(Ljava/net/HttpURLConnection;)[B
	.locals 6
	.param p1, "httpConnection"	# Ljava/net/HttpURLConnection;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 182
	const/4 v4, 0x0

	.line 183
	.local v4, "in":Ljava/io/InputStream;
	const/4 v2, 0x0

	check-cast v2, [B

	.line 185
	.local v2, "buffer":[B
	:try_start_0
	invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

	move-result-object v4

	.line 189
	invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

	move-result v3

	.line 191
	.local v3, "contentLength":I
	if-lez v3, :cond_2

	.line 192
	new-array v2, v3, [B

	.line 193
	invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 212
	:cond_0
	:goto_0
	if-eqz v4, :cond_1

	.line 213
	invoke-virtual {v4}, Ljava/io/InputStream;->close()V

	.line 217
	:cond_1
	return-object v2

	.line 196
	:cond_2
	const/4 v0, 0x0

	.line 198
	.local v0, "bos":Ljava/io/ByteArrayOutputStream;
	:try_start_1
	new-instance v1, Ljava/io/ByteArrayOutputStream;

	invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_2

	.line 199
	.end local v0	# "bos":Ljava/io/ByteArrayOutputStream;
	.local v1, "bos":Ljava/io/ByteArrayOutputStream;
	:goto_1
	:try_start_2
	invoke-virtual {v4}, Ljava/io/InputStream;->available()I

	move-result v5

	if-gtz v5, :cond_4

	.line 202
	invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
	:try_end_2
	.catchall {:try_start_2 .. :try_end_2} :catchall_1

	move-result-object v2

	.line 205
	if-eqz v1, :cond_0

	.line 206
	:try_start_3
	invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
	:try_end_3
	.catchall {:try_start_3 .. :try_end_3} :catchall_0

	goto :goto_0

	.line 211
	.end local v1	# "bos":Ljava/io/ByteArrayOutputStream;
	.end local v3	# "contentLength":I
	:catchall_0
	move-exception v5

	.line 212
	if-eqz v4, :cond_3

	.line 213
	invoke-virtual {v4}, Ljava/io/InputStream;->close()V

	.line 215
	:cond_3
	throw v5

	.line 200
	.restart local v1	# "bos":Ljava/io/ByteArrayOutputStream;
	.restart local v3	# "contentLength":I
	:cond_4
	:try_start_4
	invoke-virtual {v4}, Ljava/io/InputStream;->read()I

	move-result v5

	invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
	:try_end_4
	.catchall {:try_start_4 .. :try_end_4} :catchall_1

	goto :goto_1

	.line 204
	:catchall_1
	move-exception v5

	move-object v0, v1

	.line 205
	.end local v1	# "bos":Ljava/io/ByteArrayOutputStream;
	.restart local v0	# "bos":Ljava/io/ByteArrayOutputStream;
	:goto_2
	if-eqz v0, :cond_5

	.line 206
	:try_start_5
	invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

	.line 208
	:cond_5
	throw v5
	:try_end_5
	.catchall {:try_start_5 .. :try_end_5} :catchall_0

	.line 204
	:catchall_2
	move-exception v5

	goto :goto_2
.end method

.method private getUserAgent()Ljava/lang/String;
	.locals 2

	.prologue
	.line 165
	invoke-virtual {p0}, Lcom/amobee/onlineHapi/AmobeeAdView;->getSettings()Landroid/webkit/WebSettings;

	move-result-object v1

	invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

	move-result-object v0

	.line 171
	.local v0, "userAgent":Ljava/lang/String;
	return-object v0
.end method

.method private startCustomAnimation(Landroid/view/animation/Animation;)V
	.locals 3
	.param p1, "animation"	# Landroid/view/animation/Animation;

	.prologue
	const/4 v2, 0x1

	.line 98
	const-wide/16 v0, 0x5dc

	invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

	.line 99
	invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

	.line 100
	invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

	.line 101
	invoke-virtual {p0, p1}, Lcom/amobee/onlineHapi/AmobeeAdView;->startAnimation(Landroid/view/animation/Animation;)V

	.line 102
	return-void
.end method


# virtual methods
.method protected computeVerticalScrollRange()I
	.locals 1

	.prologue
	.line 89
	const/4 v0, 0x0

	return v0
.end method

.method public declared-synchronized getNewAd()V
	.locals 1

	.prologue
	.line 227
	monitor-enter p0

	:try_start_0
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->webViewClient:Lcom/amobee/onlineHapi/AmobeeWebViewClient;

	invoke-virtual {v0}, Lcom/amobee/onlineHapi/AmobeeWebViewClient;->getDidFinishLoad()Z
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	move-result v0

	if-nez v0, :cond_0

	.line 299
	:goto_0
	monitor-exit p0

	return-void

	.line 232
	:cond_0
	:try_start_1
	new-instance v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;

	invoke-direct {v0, p0}, Lcom/amobee/onlineHapi/AmobeeAdView$2;-><init>(Lcom/amobee/onlineHapi/AmobeeAdView;)V

	.line 297
	invoke-virtual {v0}, Lcom/amobee/onlineHapi/AmobeeAdView$2;->start()V
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	goto :goto_0

	.line 227
	:catchall_0
	move-exception v0

	monitor-exit p0

	throw v0
.end method

.method public getRefreshInterval()I
	.locals 1

	.prologue
	.line 303
	iget v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->refreshInterval:I

	return v0
.end method

.method protected onMeasure(II)V
	.locals 2
	.param p1, "w"	# I
	.param p2, "h"	# I

	.prologue
	.line 371
	iget v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->width:I

	if-nez v0, :cond_0

	const/16 v0, 0x140

	:goto_0
	iget v1, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->height:I

	if-nez v1, :cond_1

	const/16 v1, 0x4b

	:goto_1
	invoke-virtual {p0, v0, v1}, Lcom/amobee/onlineHapi/AmobeeAdView;->setMeasuredDimension(II)V

	.line 372
	return-void

	.line 371
	:cond_0
	iget v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->width:I

	goto :goto_0

	:cond_1
	iget v1, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->height:I

	goto :goto_1
.end method

.method public setAdSpace(Ljava/lang/String;)V
	.locals 2
	.param p1, "adSpace"	# Ljava/lang/String;

	.prologue
	.line 352
	iput-object p1, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->adSpace:Ljava/lang/String;

	.line 353
	iget v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->placement:I

	iget-object v1, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->format:Ljava/lang/String;

	invoke-direct {p0, p1, v0, v1}, Lcom/amobee/onlineHapi/AmobeeAdView;->createAdRequest(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

	move-result-object v0

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->adRequest:Ljava/lang/String;

	.line 354
	return-void
.end method

.method public setFormat(Ljava/lang/String;)V
	.locals 2
	.param p1, "format"	# Ljava/lang/String;

	.prologue
	.line 361
	iput-object p1, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->format:Ljava/lang/String;

	.line 362
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->adSpace:Ljava/lang/String;

	iget v1, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->placement:I

	invoke-direct {p0, v0, v1, p1}, Lcom/amobee/onlineHapi/AmobeeAdView;->createAdRequest(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

	move-result-object v0

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->adRequest:Ljava/lang/String;

	.line 363
	return-void
.end method

.method public setLocation(IIII)V
	.locals 0
	.param p1, "left"	# I
	.param p2, "top"	# I
	.param p3, "width"	# I
	.param p4, "height"	# I

	.prologue
	.line 333
	iput p3, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->width:I

	.line 334
	iput p4, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->height:I

	.line 335
	invoke-virtual {p0, p3, p4}, Lcom/amobee/onlineHapi/AmobeeAdView;->onMeasure(II)V

	.line 336
	return-void
.end method

.method public setPlacement(I)V
	.locals 2
	.param p1, "placement"	# I

	.prologue
	.line 343
	iput p1, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->placement:I

	.line 344
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->adSpace:Ljava/lang/String;

	iget-object v1, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->format:Ljava/lang/String;

	invoke-direct {p0, v0, p1, v1}, Lcom/amobee/onlineHapi/AmobeeAdView;->createAdRequest(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

	move-result-object v0

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->adRequest:Ljava/lang/String;

	.line 345
	return-void
.end method

.method public declared-synchronized setRefreshInterval(I)V
	.locals 3
	.param p1, "seconds"	# I

	.prologue
	.line 314
	monitor-enter p0

	if-ltz p1, :cond_0

	.line 316
	:try_start_0
	iput p1, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->refreshInterval:I

	.line 322
	:goto_0
	invoke-static {}, Lcom/amobee/onlineHapi/AmobeeScheduler;->getInstance()Lcom/amobee/onlineHapi/AmobeeScheduler;

	move-result-object v0

	new-instance v1, Lcom/amobee/onlineHapi/RefreshTask;

	invoke-direct {v1, p0}, Lcom/amobee/onlineHapi/RefreshTask;-><init>(Lcom/amobee/onlineHapi/AmobeeAdView;)V

	iget v2, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->refreshInterval:I

	invoke-virtual {v0, v1, v2}, Lcom/amobee/onlineHapi/AmobeeScheduler;->scheduleTask(Ljava/util/TimerTask;I)V
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 323
	monitor-exit p0

	return-void

	.line 320
	:cond_0
	const/16 v0, 0x3c

	:try_start_1
	iput v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->refreshInterval:I
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	goto :goto_0

	.line 314
	:catchall_0
	move-exception v0

	monitor-exit p0

	throw v0
.end method

.method public setTargetingParameters(Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;Ljava/lang/String;)V
	.locals 2
	.param p1, "key"	# Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;
	.param p2, "value"	# Ljava/lang/String;

	.prologue
	.line 386
	invoke-static {}, Lcom/amobee/onlineHapi/AmobeeAdView;->$SWITCH_TABLE$com$amobee$onlineHapi$AmobeeAdView$TargetingKey()[I

	move-result-object v0

	invoke-virtual {p1}, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->ordinal()I

	move-result v1

	aget v0, v0, v1

	packed-switch v0, :pswitch_data_0

	.line 402
	:goto_0
	return-void

	.line 389
	:pswitch_0
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v0

	invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	const-string v0, "&d[age]="

	invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;

	goto :goto_0

	.line 392
	:pswitch_1
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v0

	invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	const-string v0, "&d[gender]="

	invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;

	goto :goto_0

	.line 395
	:pswitch_2
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v0

	invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	const-string v0, "&d[pc]="

	invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;

	goto :goto_0

	.line 398
	:pswitch_3
	iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v0

	invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	const-string v0, "&d[dob]="

	invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;

	goto :goto_0

	.line 386
	:pswitch_data_0
	.packed-switch 0x1
		:pswitch_2
		:pswitch_1
		:pswitch_0
		:pswitch_3
	.end packed-switch
.end method
