.class Lcom/millennialmedia/android/Utils$IntentUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x8
	name = "IntentUtils"
.end annotation


# direct methods
.method constructor <init>()V
	.locals 0

	.prologue
	.line 61
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method

.method private static fixDataAndTypeForVideo(Landroid/content/Context;Landroid/content/Intent;)V
	.locals 4
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "intent"	# Landroid/content/Intent;

	.prologue
	.line 140
	invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

	move-result-object v0

	.line 141
	.local v0, "data":Landroid/net/Uri;
	if-eqz v0, :cond_1

	.line 143
	invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

	move-result-object v1

	.line 144
	.local v1, "lastPathSegment":Ljava/lang/String;
	const-string v2, "class"

	invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v2

	invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

	move-result v2

	if-eqz v2, :cond_1

	invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

	move-result v2

	if-nez v2, :cond_1

	const-string v2, ".mp4"

	invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v2

	if-nez v2, :cond_0

	const-string v2, ".3gp"

	invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v2

	if-nez v2, :cond_0

	const-string v2, ".mkv"

	invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v2

	if-nez v2, :cond_0

	const-string v2, "content.once"

	invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v2

	if-eqz v2, :cond_1

	.line 146
	:cond_0
	invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

	move-result-object v2

	const-string v3, "video/*"

	invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

	.line 148
	.end local v1	# "lastPathSegment":Ljava/lang/String;
	:cond_1
	return-void
.end method

.method static getIntentForUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)Landroid/content/Intent;
	.locals 13
	.param p0, "listener"	# Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

	.prologue
	const/4 v10, -0x1

	const/4 v12, 0x1

	const/4 v11, 0x0

	.line 152
	if-nez p0, :cond_1

	.line 153
	const/4 v5, 0x0

	.line 278
	:cond_0
	:goto_0
	return-object v5

	.line 154
	:cond_1
	const/4 v5, 0x0

	.line 155
	.local v5, "intent":Landroid/content/Intent;
	const/4 v7, 0x0

	.line 157
	.local v7, "scheme":Ljava/lang/String;
	iget-object v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

	.line 158
	.local v4, "destinationUri":Landroid/net/Uri;
	iget-object v8, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

	invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v3

	check-cast v3, Landroid/content/Context;

	.line 159
	.local v3, "context":Landroid/content/Context;
	if-eqz v3, :cond_0

	.line 161
	if-eqz v4, :cond_2

	invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

	move-result-object v7

	if-eqz v7, :cond_2

	.line 163
	const-string v8, "market"

	invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v8

	if-eqz v8, :cond_3

	.line 165
	const-string v8, "Creating Android Market intent."

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 166
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-string v8, "android.intent.action.VIEW"

	invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.line 167
	.restart local v5	# "intent":Landroid/content/Intent;
	const-string v8, "market"

	iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

	invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

	.line 268
	:cond_2
	:goto_1
	if-eqz v5, :cond_12

	.line 270
	const-string v8, "%s resolved to Intent: %s"

	const/4 v9, 0x2

	new-array v9, v9, [Ljava/lang/Object;

	aput-object v4, v9, v11

	aput-object v5, v9, v12

	invoke-static {v8, v9}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	goto :goto_0

	.line 169
	:cond_3
	const-string v8, "rtsp"

	invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v8

	if-eqz v8, :cond_4

	.line 171
	const-string v8, "Creating streaming video player intent."

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 172
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-class v8, Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v5, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

	.line 173
	.restart local v5	# "intent":Landroid/content/Intent;
	invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

	.line 174
	const-string v8, "class"

	const-string v9, "com.millennialmedia.android.VideoPlayerActivity"

	invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	goto :goto_1

	.line 176
	:cond_4
	const-string v8, "tel"

	invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v8

	if-eqz v8, :cond_5

	.line 178
	const-string v8, "Creating telephone intent."

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 179
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-string v8, "android.intent.action.DIAL"

	invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.line 180
	.restart local v5	# "intent":Landroid/content/Intent;
	const-string v8, "tel"

	iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

	invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

	goto :goto_1

	.line 182
	:cond_5
	const-string v8, "sms"

	invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v8

	if-eqz v8, :cond_8

	.line 184
	const-string v8, "Creating txt message intent."

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 185
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-string v8, "android.intent.action.VIEW"

	invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

	.line 186
	.restart local v5	# "intent":Landroid/content/Intent;
	invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

	move-result-object v0

	.line 187
	.local v0, "address":Ljava/lang/String;
	const-string v8, "?body="

	invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

	move-result v2

	.line 188
	.local v2, "bodyIndex":I
	if-eq v2, v10, :cond_6

	.line 189
	invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

	move-result-object v0

	.line 190
	:cond_6
	const/16 v8, 0x2c

	const/16 v9, 0x3b

	invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

	move-result-object v0

	.line 191
	const-string v8, "address"

	invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 192
	if-eq v2, v10, :cond_7

	.line 194
	invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

	move-result-object v1

	.line 195
	.local v1, "body":Ljava/lang/String;
	add-int/lit8 v8, v2, 0x6

	invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

	move-result-object v1

	.line 196
	const-string v8, "sms_body"

	invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 198
	.end local v1	# "body":Ljava/lang/String;
	:cond_7
	const-string v8, "vnd.android-dir/mms-sms"

	invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

	.line 199
	const-string v8, "sms"

	iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

	invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

	goto/16 :goto_1

	.line 201
	.end local v0	# "address":Ljava/lang/String;
	.end local v2	# "bodyIndex":I
	:cond_8
	const-string v8, "mailto"

	invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v8

	if-eqz v8, :cond_9

	.line 203
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-string v8, "android.intent.action.VIEW"

	invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.line 204
	.restart local v5	# "intent":Landroid/content/Intent;
	const-string v8, "email"

	iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

	invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

	goto/16 :goto_1

	.line 206
	:cond_9
	const-string v8, "geo"

	invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v8

	if-eqz v8, :cond_a

	.line 208
	const-string v8, "Creating Google Maps intent."

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 209
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-string v8, "android.intent.action.VIEW"

	invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.line 210
	.restart local v5	# "intent":Landroid/content/Intent;
	const-string v8, "geo"

	iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

	invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

	goto/16 :goto_1

	.line 212
	:cond_a
	const-string v8, "https"

	invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v8

	if-eqz v8, :cond_b

	.line 215
	const-string v8, "Creating launch browser intent."

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 216
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-string v8, "android.intent.action.VIEW"

	invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.line 217
	.restart local v5	# "intent":Landroid/content/Intent;
	const-string v8, "browser"

	iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

	invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

	goto/16 :goto_1

	.line 219
	:cond_b
	const-string v8, "mmbrowser"

	invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v8

	if-eqz v8, :cond_d

	.line 221
	invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

	move-result-object v8

	const/16 v9, 0xc

	invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

	move-result-object v6

	.line 224
	.local v6, "mmBrowserUrl":Ljava/lang/String;
	if-eqz v6, :cond_c

	.line 226
	const-string v8, "://"

	invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

	move-result v8

	if-nez v8, :cond_c

	.line 227
	const-string v8, "//"

	const-string v9, "://"

	invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v6

	.line 230
	:cond_c
	const-string v8, "MMBrowser - Creating launch browser intent."

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 231
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-string v8, "android.intent.action.VIEW"

	invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v9

	invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.line 232
	.restart local v5	# "intent":Landroid/content/Intent;
	const-string v8, "browser"

	iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

	invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

	goto/16 :goto_1

	.line 234
	.end local v6	# "mmBrowserUrl":Ljava/lang/String;
	:cond_d
	const-string v8, "http"

	invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v8

	if-eqz v8, :cond_11

	.line 236
	invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

	move-result-object v8

	if-eqz v8, :cond_f

	invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

	move-result-object v8

	const-string v9, ".mp4"

	invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v8

	if-nez v8, :cond_e

	invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

	move-result-object v8

	const-string v9, ".3gp"

	invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

	move-result v8

	if-eqz v8, :cond_f

	.line 238
	:cond_e
	const-string v8, "Creating video player intent."

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 239
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-class v8, Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v5, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

	.line 240
	.restart local v5	# "intent":Landroid/content/Intent;
	invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

	.line 241
	const-string v8, "class"

	const-string v9, "com.millennialmedia.android.VideoPlayerActivity"

	invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 243
	const-string v8, "streamingVideo"

	iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

	invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

	goto/16 :goto_1

	.line 245
	:cond_f
	invoke-virtual {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->canOpenOverlay()Z

	move-result v8

	if-eqz v8, :cond_10

	.line 247
	const-string v8, "Creating launch overlay intent."

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 248
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-class v8, Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v5, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

	.line 249
	.restart local v5	# "intent":Landroid/content/Intent;
	const-string v8, "class"

	const-class v9, Lcom/millennialmedia/android/AdViewOverlayActivity;

	invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

	move-result-object v9

	invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 250
	invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

	goto/16 :goto_0

	.line 255
	:cond_10
	const-string v8, "Creating launch browser intent."

	invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 257
	const-string v8, "browser"

	iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

	invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

	.line 258
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-string v8, "android.intent.action.VIEW"

	invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.restart local v5	# "intent":Landroid/content/Intent;
	goto/16 :goto_1

	.line 263
	:cond_11
	const-string v8, "Creating intent for unrecognized URI. %s"

	new-array v9, v12, [Ljava/lang/Object;

	aput-object v4, v9, v11

	invoke-static {v8, v9}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 264
	new-instance v5, Landroid/content/Intent;

	.end local v5	# "intent":Landroid/content/Intent;
	const-string v8, "android.intent.action.VIEW"

	invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.restart local v5	# "intent":Landroid/content/Intent;
	goto/16 :goto_1

	.line 274
	:cond_12
	const-string v8, "%s"

	new-array v9, v12, [Ljava/lang/Object;

	aput-object v4, v9, v11

	invoke-static {v8, v9}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	goto/16 :goto_0
.end method

.method static startActionView(Landroid/content/Context;Ljava/lang/String;)V
	.locals 3
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "nextUrl"	# Ljava/lang/String;

	.prologue
	.line 123
	new-instance v0, Landroid/content/Intent;

	const-string v1, "android.intent.action.VIEW"

	invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v2

	invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

	.line 124
	.local v0, "actionIntent":Landroid/content/Intent;
	invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

	.line 125
	return-void
.end method

.method static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
	.locals 1
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "intent"	# Landroid/content/Intent;

	.prologue
	.line 129
	instance-of v0, p0, Landroid/app/Activity;

	if-nez v0, :cond_0

	.line 130
	const/high16 v0, 0x10000000

	invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

	.line 133
	:cond_0
	invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->fixDataAndTypeForVideo(Landroid/content/Context;Landroid/content/Intent;)V

	.line 135
	invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

	.line 136
	return-void
.end method

.method static startAdViewOverlayActivity(Landroid/content/Context;)V
	.locals 3
	.param p0, "context"	# Landroid/content/Context;

	.prologue
	.line 109
	new-instance v0, Landroid/content/Intent;

	const-class v1, Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

	.line 110
	.local v0, "intent":Landroid/content/Intent;
	const-string v1, "class"

	const-string v2, "com.millennialmedia.android.AdViewOverlayActivity"

	invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 111
	invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

	.line 112
	return-void
.end method

.method static startAdViewOverlayActivity(Landroid/content/Context;Landroid/content/Intent;)V
	.locals 2
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "extrasAddedIntent"	# Landroid/content/Intent;

	.prologue
	.line 102
	const-class v0, Lcom/millennialmedia/android/MMActivity;

	invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

	.line 103
	const-string v0, "class"

	const-string v1, "com.millennialmedia.android.AdViewOverlayActivity"

	invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 104
	invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

	.line 105
	return-void
.end method

.method static startAdViewOverlayActivityWithData(Landroid/content/Context;Ljava/lang/String;)V
	.locals 3
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 93
	new-instance v0, Landroid/content/Intent;

	const-class v1, Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

	.line 94
	.local v0, "intent":Landroid/content/Intent;
	const-string v1, "class"

	const-string v2, "com.millennialmedia.android.AdViewOverlayActivity"

	invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 95
	invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v1

	invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

	.line 96
	invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

	.line 98
	return-void
.end method

.method static startCachedVideoPlayerActivity(Landroid/content/Context;Landroid/content/Intent;)V
	.locals 2
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "extrasAddedIntent"	# Landroid/content/Intent;

	.prologue
	.line 116
	const-class v0, Lcom/millennialmedia/android/MMActivity;

	invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

	.line 117
	const-string v0, "class"

	const-string v1, "com.millennialmedia.android.CachedVideoPlayerActivity"

	invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 118
	invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

	.line 119
	return-void
.end method

.method static startPickerActivity(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
	.locals 3
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "file"	# Ljava/io/File;
	.param p2, "type"	# Ljava/lang/String;

	.prologue
	.line 84
	new-instance v0, Landroid/content/Intent;

	const-class v1, Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

	.line 85
	.local v0, "intent":Landroid/content/Intent;
	invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

	move-result-object v1

	invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

	.line 86
	const-string v1, "type"

	invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 87
	const-string v1, "class"

	const-string v2, "com.millennialmedia.android.BridgeMMMedia$PickerActivity"

	invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 88
	invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

	.line 89
	return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V
	.locals 3
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "dataUri"	# Landroid/net/Uri;

	.prologue
	.line 76
	new-instance v0, Landroid/content/Intent;

	const-class v1, Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

	.line 77
	.local v0, "intent":Landroid/content/Intent;
	invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

	.line 78
	const-string v1, "class"

	const-string v2, "com.millennialmedia.android.VideoPlayerActivity"

	invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 79
	invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

	.line 80
	return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/io/File;)V
	.locals 1
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "file"	# Ljava/io/File;

	.prologue
	.line 71
	invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

	move-result-object v0

	invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V

	.line 72
	return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/lang/String;)V
	.locals 1
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "data"	# Ljava/lang/String;

	.prologue
	.line 66
	invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v0

	invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V

	.line 67
	return-void
.end method
