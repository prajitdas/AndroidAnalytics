.class abstract Lcom/millennialmedia/android/CachedAd;
.super Ljava/lang/Object;
.source "CachedAd.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final INTERSTITIAL:I = 0x2

.field static final NATIVE:I = 0x3

.field static final VIDEO:I = 0x1

.field static final serialVersionUID:J = 0x465b8f9134839c6L


# instance fields
.field acid:Ljava/lang/String;

.field contentUrl:Ljava/lang/String;

.field deferredViewStart:J

.field downloadAllOrNothing:Z

.field downloadPriority:I

.field expiration:Ljava/util/Date;

.field private id:Ljava/lang/String;


# direct methods
.method constructor <init>()V
	.locals 2

	.prologue
	.line 41
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 38
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/millennialmedia/android/CachedAd;->downloadAllOrNothing:Z

	.line 43
	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v0

	iput-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

	.line 44
	return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
	.locals 4
	.param p1, "in"	# Landroid/os/Parcel;

	.prologue
	const/4 v2, 0x0

	.line 49
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 38
	iput-boolean v2, p0, Lcom/millennialmedia/android/CachedAd;->downloadAllOrNothing:Z

	.line 52
	:try_start_0
	invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

	move-result-object v2

	iput-object v2, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	.line 53
	invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

	move-result-object v2

	iput-object v2, p0, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

	.line 54
	invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

	move-result-object v2

	check-cast v2, Ljava/util/Date;

	iput-object v2, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

	.line 55
	invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

	move-result-wide v2

	iput-wide v2, p0, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

	.line 56
	const/4 v2, 0x1

	new-array v1, v2, [Z

	.line 57
	.local v1, "yo":[Z
	invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

	.line 58
	const/4 v2, 0x0

	aget-boolean v2, v1, v2

	iput-boolean v2, p0, Lcom/millennialmedia/android/CachedAd;->downloadAllOrNothing:Z

	.line 59
	invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

	move-result-object v2

	iput-object v2, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

	.line 60
	invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

	move-result v2

	iput v2, p0, Lcom/millennialmedia/android/CachedAd;->downloadPriority:I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 66
	.end local v1	# "yo":[Z
	:goto_0
	return-void

	.line 62
	:catch_0
	move-exception v0

	.line 64
	.local v0, "e":Ljava/lang/Exception;
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/CachedAd;)Ljava/lang/String;
	.locals 1
	.param p0, "x0"	# Lcom/millennialmedia/android/CachedAd;

	.prologue
	.line 19
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	return-object v0
.end method

.method static parseJSON(Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
	.locals 6
	.param p0, "json"	# Ljava/lang/String;

	.prologue
	.line 182
	const/4 v0, 0x0

	.line 184
	.local v0, "ad":Lcom/millennialmedia/android/CachedAd;
	sget v4, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v5, 0x5

	if-lt v4, v5, :cond_2

	.line 186
	const-string v4, "Received cached ad."

	invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 187
	invoke-virtual {p0}, Ljava/lang/String;->length()I

	move-result v2

	.line 188
	.local v2, "length":I
	const/16 v4, 0x3e8

	if-le v2, v4, :cond_4

	.line 190
	const/16 v1, 0x3e7

	.line 191
	.local v1, "e":I
	const/4 v3, 0x0

	.line 192
	.local v3, "s":I
	:cond_0
	if-ge v1, v2, :cond_1

	.line 194
	invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

	move-result-object v4

	invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 195
	move v3, v1

	.line 196
	add-int/lit16 v1, v1, 0x3e8

	.line 197
	if-le v1, v2, :cond_0

	.line 199
	add-int/lit8 v1, v2, -0x1

	.line 203
	:cond_1
	invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

	move-result-object v4

	invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 212
	.end local v1	# "e":I
	.end local v2	# "length":I
	.end local v3	# "s":I
	:cond_2
	:goto_0
	invoke-virtual {p0}, Ljava/lang/String;->length()I

	move-result v4

	if-lez v4, :cond_3

	.line 213
	new-instance v0, Lcom/millennialmedia/android/VideoAd;

	.end local v0	# "ad":Lcom/millennialmedia/android/CachedAd;
	invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V

	.line 215
	.restart local v0	# "ad":Lcom/millennialmedia/android/CachedAd;
	:cond_3
	return-object v0

	.line 206
	.restart local v2	# "length":I
	:cond_4
	invoke-static {p0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	goto :goto_0
.end method


# virtual methods
.method abstract canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z
.end method

.method delete(Landroid/content/Context;)V
	.locals 8
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 149
	invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

	move-result-object v0

	.line 151
	.local v0, "dir":Ljava/io/File;
	if-eqz v0, :cond_0

	invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

	move-result v4

	if-eqz v4, :cond_0

	.line 155
	:try_start_0
	new-instance v4, Lcom/millennialmedia/android/CachedAd$1;

	invoke-direct {v4, p0}, Lcom/millennialmedia/android/CachedAd$1;-><init>(Lcom/millennialmedia/android/CachedAd;)V

	invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

	move-result-object v2

	.line 163
	.local v2, "files":[Ljava/io/File;
	const-string v4, "Deleting %d files for %s."

	const/4 v5, 0x2

	new-array v5, v5, [Ljava/lang/Object;

	const/4 v6, 0x0

	array-length v7, v2

	invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v7

	aput-object v7, v5, v6

	const/4 v6, 0x1

	iget-object v7, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	aput-object v7, v5, v6

	invoke-static {v4, v5}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 164
	const/4 v3, 0x0

	.local v3, "i":I
	:goto_0
	array-length v4, v2

	if-ge v3, v4, :cond_0

	.line 165
	aget-object v4, v2, v3

	invoke-virtual {v4}, Ljava/io/File;->delete()Z
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 164
	add-int/lit8 v3, v3, 0x1

	goto :goto_0

	.line 167
	.end local v2	# "files":[Ljava/io/File;
	.end local v3	# "i":I
	:catch_0
	move-exception v1

	.line 169
	.local v1, "e":Ljava/lang/Exception;
	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/Throwable;)V

	.line 172
	.end local v1	# "e":Ljava/lang/Exception;
	:cond_0
	return-void
.end method

.method protected deserializeFromObj(Lorg/json/JSONObject;)V
	.locals 5
	.param p1, "videoObject"	# Lorg/json/JSONObject;

	.prologue
	const/4 v4, 0x0

	.line 93
	const-string v3, "id"

	invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	.line 94
	const-string v3, "vid"

	invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

	.line 95
	const-string v3, "content-url"

	invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

	.line 96
	const-string v3, "expiration"

	invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v1

	.line 97
	.local v1, "exp":Ljava/lang/String;
	if-eqz v1, :cond_0

	.line 99
	new-instance v2, Ljava/text/SimpleDateFormat;

	const-string v3, "yyyy-MM-dd HH:mm:ss ZZZZ"

	invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

	.line 102
	.local v2, "format":Ljava/text/SimpleDateFormat;
	:try_start_0
	invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;
	:try_end_0
	.catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

	.line 109
	.end local v2	# "format":Ljava/text/SimpleDateFormat;
	:cond_0
	:goto_0
	return-void

	.line 104
	.restart local v2	# "format":Ljava/text/SimpleDateFormat;
	:catch_0
	move-exception v0

	.line 106
	.local v0, "e":Ljava/text/ParseException;
	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

	goto :goto_0
.end method

.method abstract download(Landroid/content/Context;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
	.locals 3
	.param p1, "other"	# Ljava/lang/Object;

	.prologue
	.line 82
	if-ne p0, p1, :cond_0

	.line 83
	const/4 v1, 0x1

	.line 87
	:goto_0
	return v1

	.line 84
	:cond_0
	instance-of v1, p1, Lcom/millennialmedia/android/CachedAd;

	if-nez v1, :cond_1

	.line 85
	const/4 v1, 0x0

	goto :goto_0

	:cond_1
	move-object v0, p1

	.line 86
	check-cast v0, Lcom/millennialmedia/android/CachedAd;

	.line 87
	.local v0, "that":Lcom/millennialmedia/android/CachedAd;
	iget-object v1, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	iget-object v2, v0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v1

	goto :goto_0
.end method

.method getId()Ljava/lang/String;
	.locals 1

	.prologue
	.line 240
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	return-object v0
.end method

.method abstract getType()I
.end method

.method abstract getTypeString()Ljava/lang/String;
.end method

.method isExpired()Z
	.locals 4

	.prologue
	.line 116
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

	if-eqz v0, :cond_0

	.line 118
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

	invoke-virtual {v0}, Ljava/util/Date;->getTime()J

	move-result-wide v0

	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v2

	cmp-long v0, v0, v2

	if-gtz v0, :cond_0

	.line 119
	const/4 v0, 0x1

	.line 121
	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method abstract isOnDisk(Landroid/content/Context;)Z
.end method

.method isValid()Z
	.locals 1

	.prologue
	.line 129
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	invoke-virtual {v0}, Ljava/lang/String;->length()I

	move-result v0

	if-lez v0, :cond_0

	.line 131
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

	invoke-virtual {v0}, Ljava/lang/String;->length()I

	move-result v0

	if-lez v0, :cond_0

	.line 132
	const/4 v0, 0x1

	.line 134
	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
	.locals 2
	.param p1, "input"	# Ljava/io/ObjectInput;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;,
			Ljava/lang/ClassNotFoundException;
		}
	.end annotation

	.prologue
	.line 221
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	.line 222
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

	.line 223
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/util/Date;

	iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

	.line 224
	invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

	move-result-wide v0

	iput-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

	.line 225
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

	.line 226
	return-void
.end method

.method abstract saveAssets(Landroid/content/Context;)Z
.end method

.method setId(Ljava/lang/String;)V
	.locals 0
	.param p1, "idIn"	# Ljava/lang/String;

	.prologue
	.line 245
	iput-object p1, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	.line 246
	return-void
.end method

.method abstract show(Landroid/content/Context;J)V
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
	.locals 2
	.param p1, "output"	# Ljava/io/ObjectOutput;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 231
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 232
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

	invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 233
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

	invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 234
	iget-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

	invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

	.line 235
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

	invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 236
	return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;I)V
	.locals 3
	.param p1, "dest"	# Landroid/os/Parcel;
	.param p2, "flags"	# I

	.prologue
	.line 70
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

	.line 71
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

	.line 72
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

	.line 73
	iget-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

	invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

	.line 74
	const/4 v0, 0x1

	new-array v0, v0, [Z

	const/4 v1, 0x0

	iget-boolean v2, p0, Lcom/millennialmedia/android/CachedAd;->downloadAllOrNothing:Z

	aput-boolean v2, v0, v1

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

	.line 75
	iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

	.line 76
	iget v0, p0, Lcom/millennialmedia/android/CachedAd;->downloadPriority:I

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

	.line 77
	return-void
.end method
