.class Lcom/millennialmedia/android/VideoAd;
.super Lcom/millennialmedia/android/CachedAd;
.source "VideoAd.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Landroid/os/Parcelable$Creator",
			"<",
			"Lcom/millennialmedia/android/VideoAd;",
			">;"
		}
	.end annotation
.end field

.field static final VIDEO_FILE_ID:Ljava/lang/String; = "video.dat"

.field static final serialVersionUID:J = 0x252e2adaa757e358L


# instance fields
.field activities:Ljava/util/ArrayList;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Ljava/util/ArrayList",
			"<",
			"Lcom/millennialmedia/android/VideoLogEvent;",
			">;"
		}
	.end annotation
.end field

.field buttons:Ljava/util/ArrayList;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Ljava/util/ArrayList",
			"<",
			"Lcom/millennialmedia/android/VideoImage;",
			">;"
		}
	.end annotation
.end field

.field cacheComplete:[Ljava/lang/String;

.field cacheFailed:[Ljava/lang/String;

.field cacheMissURL:Ljava/lang/String;

.field cachedVideoDto:Lcom/millennialmedia/android/DTOCachedVideo;

.field closeDelayMillis:J

.field contentLength:J

.field duration:J

.field endActivity:[Ljava/lang/String;

.field endOverlayURL:Ljava/lang/String;

.field onCompletionUrl:Ljava/lang/String;

.field reloadNonEndOverlayOnRestart:Z

.field showControls:Z

.field showCountdown:Z

.field startActivity:[Ljava/lang/String;

.field stayInPlayer:Z

.field usingInternalStorage:Z

.field videoError:[Ljava/lang/String;

.field private videoFileId:Ljava/lang/String;

.field webOverlayURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
	.locals 1

	.prologue
	.line 504
	new-instance v0, Lcom/millennialmedia/android/VideoAd$3;

	invoke-direct {v0}, Lcom/millennialmedia/android/VideoAd$3;-><init>()V

	sput-object v0, Lcom/millennialmedia/android/VideoAd;->CREATOR:Landroid/os/Parcelable$Creator;

	return-void
.end method

.method public constructor <init>()V
	.locals 1

	.prologue
	.line 59
	invoke-direct {p0}, Lcom/millennialmedia/android/CachedAd;-><init>()V

	.line 54
	new-instance v0, Ljava/util/ArrayList;

	invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

	iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	.line 55
	new-instance v0, Ljava/util/ArrayList;

	invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

	iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	.line 60
	return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
	.locals 5
	.param p1, "in"	# Landroid/os/Parcel;

	.prologue
	.line 66
	invoke-direct {p0, p1}, Lcom/millennialmedia/android/CachedAd;-><init>(Landroid/os/Parcel;)V

	.line 54
	new-instance v3, Ljava/util/ArrayList;

	invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	.line 55
	new-instance v3, Ljava/util/ArrayList;

	invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	.line 70
	:try_start_0
	invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

	move-result v2

	.line 71
	.local v2, "len":I
	new-array v3, v2, [Ljava/lang/String;

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	.line 72
	iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

	.line 73
	invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

	move-result v2

	.line 74
	new-array v3, v2, [Ljava/lang/String;

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	.line 75
	iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

	.line 76
	const/4 v3, 0x5

	new-array v0, v3, [Z

	.line 77
	.local v0, "boolArray":[Z
	invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

	.line 78
	const/4 v3, 0x0

	aget-boolean v3, v0, v3

	iput-boolean v3, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

	.line 79
	const/4 v3, 0x1

	aget-boolean v3, v0, v3

	iput-boolean v3, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

	.line 80
	const/4 v3, 0x2

	aget-boolean v3, v0, v3

	iput-boolean v3, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

	.line 81
	const/4 v3, 0x3

	aget-boolean v3, v0, v3

	iput-boolean v3, p0, Lcom/millennialmedia/android/VideoAd;->reloadNonEndOverlayOnRestart:Z

	.line 82
	const/4 v3, 0x4

	aget-boolean v3, v0, v3

	iput-boolean v3, p0, Lcom/millennialmedia/android/VideoAd;->usingInternalStorage:Z

	.line 83
	invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

	.line 84
	invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

	.line 85
	invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

	.line 86
	invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->cacheMissURL:Ljava/lang/String;

	.line 87
	invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	.line 88
	invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

	move-result-wide v3

	iput-wide v3, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

	.line 89
	invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

	move-result-wide v3

	iput-wide v3, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

	.line 90
	invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

	move-result-wide v3

	iput-wide v3, p0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

	.line 91
	const-class v3, Lcom/millennialmedia/android/VideoImage;

	invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

	move-result-object v3

	invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	.line 92
	const-class v3, Lcom/millennialmedia/android/VideoLogEvent;

	invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

	move-result-object v3

	invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

	move-result-object v3

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	.line 93
	invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

	move-result v2

	.line 94
	new-array v3, v2, [Ljava/lang/String;

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	.line 95
	iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

	.line 96
	invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

	move-result v2

	.line 97
	new-array v3, v2, [Ljava/lang/String;

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	.line 98
	iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

	.line 99
	invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

	move-result v2

	.line 100
	new-array v3, v2, [Ljava/lang/String;

	iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	.line 101
	iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 107
	.end local v0	# "boolArray":[Z
	.end local v2	# "len":I
	:goto_0
	return-void

	.line 103
	:catch_0
	move-exception v1

	.line 105
	.local v1, "e":Ljava/lang/Exception;
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
	.locals 5
	.param p1, "jsonString"	# Ljava/lang/String;

	.prologue
	.line 115
	invoke-direct {p0}, Lcom/millennialmedia/android/CachedAd;-><init>()V

	.line 54
	new-instance v4, Ljava/util/ArrayList;

	invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	.line 55
	new-instance v4, Ljava/util/ArrayList;

	invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	.line 116
	if-eqz p1, :cond_0

	.line 119
	const/4 v1, 0x0

	.line 123
	.local v1, "jsonAdObject":Lorg/json/JSONObject;
	:try_start_0
	new-instance v2, Lorg/json/JSONObject;

	invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
	:try_end_0
	.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

	.end local v1	# "jsonAdObject":Lorg/json/JSONObject;
	.local v2, "jsonAdObject":Lorg/json/JSONObject;
	move-object v1, v2

	.line 130
	.end local v2	# "jsonAdObject":Lorg/json/JSONObject;
	.restart local v1	# "jsonAdObject":Lorg/json/JSONObject;
	:goto_0
	if-eqz v1, :cond_0

	.line 132
	const/4 v3, 0x0

	.line 133
	.local v3, "videoObject":Lorg/json/JSONObject;
	const-string v4, "video"

	invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

	move-result-object v3

	.line 134
	if-eqz v3, :cond_0

	.line 135
	invoke-virtual {p0, v3}, Lcom/millennialmedia/android/VideoAd;->deserializeFromObj(Lorg/json/JSONObject;)V

	.line 138
	.end local v1	# "jsonAdObject":Lorg/json/JSONObject;
	.end local v3	# "videoObject":Lorg/json/JSONObject;
	:cond_0
	return-void

	.line 125
	.restart local v1	# "jsonAdObject":Lorg/json/JSONObject;
	:catch_0
	move-exception v0

	.line 127
	.local v0, "e":Lorg/json/JSONException;
	invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

	goto :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;
	.locals 1
	.param p0, "x0"	# Lcom/millennialmedia/android/VideoAd;

	.prologue
	.line 26
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)V
	.locals 0
	.param p0, "x0"	# Lcom/millennialmedia/android/VideoAd;
	.param p1, "x1"	# Landroid/content/Context;

	.prologue
	.line 26
	invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoAd;->deleteVideoFile(Landroid/content/Context;)V

	return-void
.end method

.method private deleteVideoFile(Landroid/content/Context;)V
	.locals 4
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 386
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, "video.dat"

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	invoke-static {p1, v0}, Lcom/millennialmedia/android/AdCache;->deleteFile(Landroid/content/Context;Ljava/lang/String;)Z

	move-result v0

	if-eqz v0, :cond_0

	.line 387
	const-string v0, "VideoAd video file %s was deleted."

	const/4 v1, 0x1

	new-array v1, v1, [Ljava/lang/Object;

	const/4 v2, 0x0

	iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	aput-object v3, v1, v2

	invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 388
	:cond_0
	return-void
.end method

.method static downloadVideoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
	.locals 6
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "contentUrl"	# Ljava/lang/String;
	.param p2, "videoFileId"	# Ljava/lang/String;

	.prologue
	const/4 v5, 0x1

	const/4 v2, 0x0

	.line 271
	invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

	move-result-object v0

	.line 273
	.local v0, "dir":Ljava/io/File;
	if-eqz v0, :cond_0

	invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

	move-result v3

	if-nez v3, :cond_1

	:cond_0
	move v1, v2

	.line 281
	:goto_0
	return v1

	.line 277
	:cond_1
	new-instance v3, Ljava/lang/StringBuilder;

	invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

	const-string v4, "Downloading ("

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	const-string v4, "video.dat"

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	const-string v4, ") content to %s"

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	new-array v4, v5, [Ljava/lang/Object;

	aput-object v0, v4, v2

	invoke-static {v3, v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 279
	new-instance v3, Ljava/lang/StringBuilder;

	invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	const-string v4, "video.dat"

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	invoke-static {p1, v3, v0, p0}, Lcom/millennialmedia/android/AdCache;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

	move-result v1

	.line 280
	.local v1, "success":Z
	new-instance v3, Ljava/lang/StringBuilder;

	invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

	const-string v4, "Caching completed successfully ("

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	const-string v4, "video.dat"

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	const-string v4, ")? %b"

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	new-array v4, v5, [Ljava/lang/Object;

	invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

	move-result-object v5

	aput-object v5, v4, v2

	invoke-static {v3, v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	goto :goto_0
.end method

.method static getVideoUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
	.locals 2
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "videoFileId"	# Ljava/lang/String;

	.prologue
	.line 291
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, "video.dat"

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

	move-result-object v0

	invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

	move-result-object v0

	return-object v0
.end method

.method private handleSharedVideoFile(Landroid/content/Context;)V
	.locals 2
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 354
	const/4 v0, 0x2

	new-instance v1, Lcom/millennialmedia/android/VideoAd$1;

	invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/VideoAd$1;-><init>(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)V

	invoke-static {p1, v0, v1}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

	.line 382
	return-void
.end method

.method static hasVideoFile(Landroid/content/Context;Ljava/lang/String;)Z
	.locals 2
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "videoFileId"	# Ljava/lang/String;

	.prologue
	.line 286
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, "video.dat"

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->hasDownloadFile(Landroid/content/Context;Ljava/lang/String;)Z

	move-result v0

	return v0
.end method

.method static playAd(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
	.locals 4
	.param p0, "context"	# Landroid/content/Context;
	.param p1, "id"	# Ljava/lang/String;
	.param p2, "listener"	# Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

	.prologue
	const/4 v2, 0x1

	const/4 v3, 0x0

	.line 648
	if-eqz p1, :cond_0

	.line 650
	invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/VideoAd;

	.line 651
	.local v0, "videoAd":Lcom/millennialmedia/android/VideoAd;
	if-eqz v0, :cond_1

	const/4 v1, 0x0

	invoke-virtual {v0, p0, v1, v3}, Lcom/millennialmedia/android/VideoAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

	move-result v1

	if-eqz v1, :cond_1

	.line 653
	invoke-virtual {p2}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->updateLastVideoViewedTime()V

	.line 654
	const-string v1, "mmvideo: attempting to play video %s"

	new-array v2, v2, [Ljava/lang/Object;

	aput-object p1, v2, v3

	invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 655
	iget-wide v1, p2, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

	invoke-virtual {v0, p0, v1, v2}, Lcom/millennialmedia/android/VideoAd;->show(Landroid/content/Context;J)V

	.line 656
	invoke-virtual {p2}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->startingVideo()V

	.line 663
	.end local v0	# "videoAd":Lcom/millennialmedia/android/VideoAd;
	:cond_0
	:goto_0
	return-void

	.line 660
	.restart local v0	# "videoAd":Lcom/millennialmedia/android/VideoAd;
	:cond_1
	const-string v1, "mmvideo: Ad %s cannot be shown at this time."

	new-array v2, v2, [Ljava/lang/Object;

	aput-object p1, v2, v3

	invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	goto :goto_0
.end method


# virtual methods
.method canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z
	.locals 6
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "adImpl"	# Lcom/millennialmedia/android/MMAdImpl;
	.param p3, "checkDeferredViewStart"	# Z

	.prologue
	const/4 v0, 0x1

	const/4 v1, 0x0

	.line 445
	if-eqz p3, :cond_2

	.line 446
	invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

	move-result v2

	if-nez v2, :cond_1

	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

	move-result v2

	if-eqz v2, :cond_1

	invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

	move-result-object v2

	iget-object v3, p2, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	iget-wide v4, p0, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

	invoke-virtual {v2, v3, v4, v5}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

	move-result v2

	if-eqz v2, :cond_1

	.line 448
	:cond_0
	:goto_0
	return v0

	:cond_1
	move v0, v1

	.line 446
	goto :goto_0

	.line 448
	:cond_2
	invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

	move-result v2

	if-nez v2, :cond_3

	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

	move-result v2

	if-nez v2, :cond_0

	:cond_3
	move v0, v1

	goto :goto_0
.end method

.method delete(Landroid/content/Context;)V
	.locals 4
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 346
	invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->delete(Landroid/content/Context;)V

	.line 347
	invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoAd;->handleSharedVideoFile(Landroid/content/Context;)V

	.line 348
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

	invoke-static {p1, v0}, Lcom/millennialmedia/android/AdCache;->cachedVideoWasRemoved(Landroid/content/Context;Ljava/lang/String;)V

	.line 349
	const-string v0, "Ad %s was deleted."

	const/4 v1, 0x1

	new-array v1, v1, [Ljava/lang/Object;

	const/4 v2, 0x0

	invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

	move-result-object v3

	aput-object v3, v1, v2

	invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 350
	return-void
.end method

.method public describeContents()I
	.locals 1

	.prologue
	.line 472
	const/4 v0, 0x0

	return v0
.end method

.method protected deserializeFromObj(Lorg/json/JSONObject;)V
	.locals 9
	.param p1, "videoObject"	# Lorg/json/JSONObject;

	.prologue
	const/4 v8, 0x0

	const/4 v7, 0x0

	.line 150
	invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->deserializeFromObj(Lorg/json/JSONObject;)V

	.line 151
	const-string v5, "startActivity"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

	move-result-object v1

	.line 152
	.local v1, "jsonArray":Lorg/json/JSONArray;
	const-string v5, "overlayURL"

	invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v5

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

	.line 153
	const-string v5, "endURL"

	invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v5

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

	.line 154
	const-string v5, "cacheMissURL"

	invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v5

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheMissURL:Ljava/lang/String;

	.line 155
	const-string v5, "videoFileId"

	invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v5

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	.line 156
	if-eqz v1, :cond_0

	.line 158
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	new-array v5, v5, [Ljava/lang/String;

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	.line 159
	const/4 v0, 0x0

	.local v0, "i":I
	:goto_0
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	if-ge v0, v5, :cond_1

	.line 160
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

	move-result-object v6

	aput-object v6, v5, v0

	.line 159
	add-int/lit8 v0, v0, 0x1

	goto :goto_0

	.line 164
	.end local v0	# "i":I
	:cond_0
	new-array v5, v7, [Ljava/lang/String;

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	.line 166
	:cond_1
	const-string v5, "endActivity"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

	move-result-object v1

	.line 167
	if-eqz v1, :cond_2

	.line 169
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	new-array v5, v5, [Ljava/lang/String;

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	.line 170
	const/4 v0, 0x0

	.restart local v0	# "i":I
	:goto_1
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	if-ge v0, v5, :cond_3

	.line 171
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

	move-result-object v6

	aput-object v6, v5, v0

	.line 170
	add-int/lit8 v0, v0, 0x1

	goto :goto_1

	.line 175
	.end local v0	# "i":I
	:cond_2
	new-array v5, v7, [Ljava/lang/String;

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	.line 177
	:cond_3
	const-string v5, "cacheComplete"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

	move-result-object v1

	.line 178
	if-eqz v1, :cond_4

	.line 180
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	new-array v5, v5, [Ljava/lang/String;

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	.line 181
	const/4 v0, 0x0

	.restart local v0	# "i":I
	:goto_2
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	if-ge v0, v5, :cond_5

	.line 182
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

	move-result-object v6

	aput-object v6, v5, v0

	.line 181
	add-int/lit8 v0, v0, 0x1

	goto :goto_2

	.line 186
	.end local v0	# "i":I
	:cond_4
	new-array v5, v7, [Ljava/lang/String;

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	.line 188
	:cond_5
	const-string v5, "cacheFailed"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

	move-result-object v1

	.line 189
	if-eqz v1, :cond_6

	.line 191
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	new-array v5, v5, [Ljava/lang/String;

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	.line 192
	const/4 v0, 0x0

	.restart local v0	# "i":I
	:goto_3
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	if-ge v0, v5, :cond_7

	.line 193
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

	move-result-object v6

	aput-object v6, v5, v0

	.line 192
	add-int/lit8 v0, v0, 0x1

	goto :goto_3

	.line 197
	.end local v0	# "i":I
	:cond_6
	new-array v5, v7, [Ljava/lang/String;

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	.line 199
	:cond_7
	const-string v5, "videoError"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

	move-result-object v1

	.line 200
	if-eqz v1, :cond_8

	.line 202
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	new-array v5, v5, [Ljava/lang/String;

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	.line 203
	const/4 v0, 0x0

	.restart local v0	# "i":I
	:goto_4
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	if-ge v0, v5, :cond_9

	.line 204
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

	move-result-object v6

	aput-object v6, v5, v0

	.line 203
	add-int/lit8 v0, v0, 0x1

	goto :goto_4

	.line 208
	.end local v0	# "i":I
	:cond_8
	new-array v5, v7, [Ljava/lang/String;

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	.line 210
	:cond_9
	const-string v5, "showVideoPlayerControls"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

	move-result v5

	iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

	.line 211
	const-string v5, "showCountdownHUD"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

	move-result v5

	iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

	.line 212
	const-string v5, "reloadOverlayOnRestart"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

	move-result v5

	iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->reloadNonEndOverlayOnRestart:Z

	.line 213
	const-string v5, "onCompletion"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

	move-result-object v2

	.line 214
	.local v2, "jsonObject":Lorg/json/JSONObject;
	if-eqz v2, :cond_a

	.line 216
	const-string v5, "url"

	invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v5

	iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

	.line 217
	const-string v5, "stayInPlayer"

	invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

	move-result v5

	iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

	.line 219
	:cond_a
	const-string v5, "duration"

	const-wide/16 v6, 0x0

	invoke-virtual {p1, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

	move-result-wide v5

	const-wide v7, 0x408f400000000000L	# 1000.0

	mul-double/2addr v5, v7

	double-to-long v5, v5

	iput-wide v5, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

	.line 220
	const-string v5, "contentLength"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

	move-result-wide v5

	iput-wide v5, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

	.line 221
	const-string v5, "closeAfterDelay"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

	move-result-wide v5

	iput-wide v5, p0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

	.line 222
	const-string v5, "buttons"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

	move-result-object v1

	.line 223
	if-eqz v1, :cond_c

	.line 225
	const/4 v0, 0x0

	.restart local v0	# "i":I
	:goto_5
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	if-ge v0, v5, :cond_c

	.line 227
	invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

	move-result-object v2

	.line 228
	if-eqz v2, :cond_b

	.line 230
	new-instance v3, Lcom/millennialmedia/android/VideoImage;

	invoke-direct {v3, v2}, Lcom/millennialmedia/android/VideoImage;-><init>(Lorg/json/JSONObject;)V

	.line 231
	.local v3, "vb":Lcom/millennialmedia/android/VideoImage;
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

	.line 225
	.end local v3	# "vb":Lcom/millennialmedia/android/VideoImage;
	:cond_b
	add-int/lit8 v0, v0, 0x1

	goto :goto_5

	.line 235
	.end local v0	# "i":I
	:cond_c
	const-string v5, "log"

	invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

	move-result-object v1

	.line 236
	if-eqz v1, :cond_e

	.line 238
	const/4 v0, 0x0

	.restart local v0	# "i":I
	:goto_6
	invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

	move-result v5

	if-ge v0, v5, :cond_e

	.line 240
	invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

	move-result-object v2

	.line 241
	if-eqz v2, :cond_d

	.line 243
	new-instance v4, Lcom/millennialmedia/android/VideoLogEvent;

	invoke-direct {v4, v2}, Lcom/millennialmedia/android/VideoLogEvent;-><init>(Lorg/json/JSONObject;)V

	.line 244
	.local v4, "videoLogEvent":Lcom/millennialmedia/android/VideoLogEvent;
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

	.line 238
	.end local v4	# "videoLogEvent":Lcom/millennialmedia/android/VideoLogEvent;
	:cond_d
	add-int/lit8 v0, v0, 0x1

	goto :goto_6

	.line 248
	.end local v0	# "i":I
	:cond_e
	return-void
.end method

.method download(Landroid/content/Context;)Z
	.locals 9
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	const/4 v8, 0x1

	const/4 v4, 0x0

	.line 300
	const/4 v3, 0x0

	.line 301
	.local v3, "success":Z
	invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

	move-result-object v1

	.line 303
	.local v1, "dir":Ljava/io/File;
	if-eqz v1, :cond_0

	invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

	move-result v5

	if-nez v5, :cond_1

	.line 340
	:cond_0
	:goto_0
	return v4

	.line 307
	:cond_1
	invoke-static {p1, v1}, Lcom/millennialmedia/android/AdCache;->isInternalDir(Landroid/content/Context;Ljava/io/File;)Z

	move-result v5

	iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->usingInternalStorage:Z

	.line 308
	const-string v5, "Downloading content to %s"

	new-array v6, v8, [Ljava/lang/Object;

	aput-object v1, v6, v4

	invoke-static {v5, v6}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 311
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

	new-instance v6, Ljava/lang/StringBuilder;

	invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

	iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	const-string v7, "video.dat"

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v6

	invoke-static {v5, v6, v1, p1}, Lcom/millennialmedia/android/AdCache;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

	move-result v3

	.line 312
	if-eqz v3, :cond_2

	.line 315
	const/4 v2, 0x0

	.local v2, "i":I
	:goto_1
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

	move-result v5

	if-ge v2, v5, :cond_2

	.line 317
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/VideoImage;

	.line 318
	.local v0, "button":Lcom/millennialmedia/android/VideoImage;
	iget-object v5, v0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

	new-instance v6, Ljava/lang/StringBuilder;

	invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

	move-result-object v7

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v0}, Lcom/millennialmedia/android/VideoImage;->getImageName()Ljava/lang/String;

	move-result-object v7

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v6

	invoke-static {v5, v6, v1, p1}, Lcom/millennialmedia/android/AdCache;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

	move-result v3

	.line 319
	if-nez v3, :cond_5

	.line 324
	.end local v0	# "button":Lcom/millennialmedia/android/VideoImage;
	.end local v2	# "i":I
	:cond_2
	if-nez v3, :cond_6

	.line 326
	iget-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->downloadAllOrNothing:Z

	if-eqz v5, :cond_3

	.line 327
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->delete(Landroid/content/Context;)V

	.line 328
	:cond_3
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

	.line 339
	:cond_4
	:goto_2
	const-string v5, "Caching completed successfully? %b"

	new-array v6, v8, [Ljava/lang/Object;

	invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

	move-result-object v7

	aput-object v7, v6, v4

	invoke-static {v5, v6}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	move v4, v3

	.line 340
	goto :goto_0

	.line 315
	.restart local v0	# "button":Lcom/millennialmedia/android/VideoImage;
	.restart local v2	# "i":I
	:cond_5
	add-int/lit8 v2, v2, 0x1

	goto :goto_1

	.line 330
	.end local v0	# "button":Lcom/millennialmedia/android/VideoImage;
	.end local v2	# "i":I
	:cond_6
	if-eqz v3, :cond_4

	.line 333
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

	if-eqz v5, :cond_7

	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

	invoke-virtual {v5}, Ljava/lang/String;->length()I

	move-result v5

	if-lez v5, :cond_7

	.line 334
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

	invoke-static {p1, v5}, Lcom/millennialmedia/android/AdCache;->cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V

	.line 336
	:cond_7
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

	goto :goto_2
.end method

.method getType()I
	.locals 1

	.prologue
	.line 253
	const/4 v0, 0x1

	return v0
.end method

.method getTypeString()Ljava/lang/String;
	.locals 1

	.prologue
	.line 259
	const-string v0, "Video"

	return-object v0
.end method

.method getVideoExtrasIntent(Landroid/content/Context;J)Landroid/content/Intent;
	.locals 4
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "adImplInternalId"	# J

	.prologue
	.line 459
	new-instance v0, Landroid/content/Intent;

	invoke-direct {v0}, Landroid/content/Intent;-><init>()V

	.line 460
	.local v0, "intent":Landroid/content/Intent;
	const-string v2, "videoId"

	invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

	move-result-object v3

	invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 461
	const-wide/16 v2, -0x4

	cmp-long v2, p2, v2

	if-eqz v2, :cond_0

	.line 462
	const-string v2, "internalId"

	invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

	.line 463
	:cond_0
	new-instance v2, Ljava/lang/StringBuilder;

	invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

	invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

	move-result-object v3

	invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

	move-result-object v3

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	const-string v3, "video.dat"

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	.line 464
	.local v1, "internalVideoAd":Ljava/lang/String;
	invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v2

	invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

	.line 465
	return-object v0
.end method

.method hasEndCard()Z
	.locals 3

	.prologue
	.line 674
	iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

	move-result-object v1

	.local v1, "i$":Ljava/util/Iterator;
	:cond_0
	invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

	move-result v2

	if-eqz v2, :cond_1

	invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/VideoImage;

	.line 676
	.local v0, "button":Lcom/millennialmedia/android/VideoImage;
	iget-boolean v2, v0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

	if-eqz v2, :cond_0

	.line 678
	const/4 v2, 0x1

	.line 681
	.end local v0	# "button":Lcom/millennialmedia/android/VideoImage;
	:goto_0
	return v2

	:cond_1
	const/4 v2, 0x0

	goto :goto_0
.end method

.method isOnDisk(Landroid/content/Context;)Z
	.locals 9
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 396
	const/4 v2, 0x0

	.line 399
	.local v2, "existsInFilesystem":Z
	invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

	move-result-object v0

	.line 402
	.local v0, "adDir":Ljava/io/File;
	if-eqz v0, :cond_1

	invoke-virtual {v0}, Ljava/io/File;->exists()Z

	move-result v7

	if-eqz v7, :cond_1

	.line 404
	new-instance v7, Lcom/millennialmedia/android/VideoAd$2;

	invoke-direct {v7, p0}, Lcom/millennialmedia/android/VideoAd$2;-><init>(Lcom/millennialmedia/android/VideoAd;)V

	invoke-virtual {v0, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

	move-result-object v5

	.line 416
	.local v5, "list":[Ljava/lang/String;
	if-eqz v5, :cond_0

	array-length v7, v5

	iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

	move-result v8

	add-int/lit8 v8, v8, 0x1

	if-lt v7, v8, :cond_0

	.line 417
	const/4 v2, 0x1

	.line 418
	:cond_0
	if-eqz v2, :cond_1

	.line 420
	new-instance v6, Ljava/io/File;

	new-instance v7, Ljava/lang/StringBuilder;

	invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

	iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v7

	const-string v8, "video.dat"

	invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v7

	invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v7

	invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

	.line 421
	.local v6, "videoFile":Ljava/io/File;
	invoke-virtual {v6}, Ljava/io/File;->exists()Z

	move-result v7

	if-nez v7, :cond_2

	.line 423
	const/4 v2, 0x0

	.line 439
	.end local v5	# "list":[Ljava/lang/String;
	.end local v6	# "videoFile":Ljava/io/File;
	:cond_1
	:goto_0
	return v2

	.line 427
	.restart local v5	# "list":[Ljava/lang/String;
	.restart local v6	# "videoFile":Ljava/io/File;
	:cond_2
	iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

	move-result-object v3

	.local v3, "i$":Ljava/util/Iterator;
	:cond_3
	invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

	move-result v7

	if-eqz v7, :cond_1

	invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Lcom/millennialmedia/android/VideoImage;

	.line 429
	.local v1, "button":Lcom/millennialmedia/android/VideoImage;
	new-instance v4, Ljava/io/File;

	new-instance v7, Ljava/lang/StringBuilder;

	invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

	move-result-object v8

	invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v7

	invoke-virtual {v1}, Lcom/millennialmedia/android/VideoImage;->getImageName()Ljava/lang/String;

	move-result-object v8

	invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v7

	invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v7

	invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

	.line 430
	.local v4, "imageFile":Ljava/io/File;
	invoke-virtual {v4}, Ljava/io/File;->exists()Z

	move-result v7

	if-nez v7, :cond_3

	.line 432
	const/4 v2, 0x0

	.line 433
	goto :goto_0
.end method

.method logBeginEvent()V
	.locals 2

	.prologue
	.line 624
	iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	if-eqz v1, :cond_0

	.line 626
	const-string v1, "Cached video begin event logged"

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 627
	const/4 v0, 0x0

	.local v0, "i":I
	:goto_0
	iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	array-length v1, v1

	if-ge v0, v1, :cond_0

	.line 628
	iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	aget-object v1, v1, v0

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

	.line 627
	add-int/lit8 v0, v0, 0x1

	goto :goto_0

	.line 630
	.end local v0	# "i":I
	:cond_0
	return-void
.end method

.method logEndEvent()V
	.locals 2

	.prologue
	.line 638
	iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	if-eqz v1, :cond_0

	.line 640
	const-string v1, "Cached video end event logged"

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 641
	const/4 v0, 0x0

	.local v0, "i":I
	:goto_0
	iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	array-length v1, v1

	if-ge v0, v1, :cond_0

	.line 642
	iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	aget-object v1, v1, v0

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

	.line 641
	add-int/lit8 v0, v0, 0x1

	goto :goto_0

	.line 644
	.end local v0	# "i":I
	:cond_0
	return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
	.locals 6
	.param p1, "input"	# Ljava/io/ObjectInput;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;,
			Ljava/lang/ClassNotFoundException;
		}
	.end annotation

	.prologue
	.line 526
	invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->readExternal(Ljava/io/ObjectInput;)V

	.line 527
	invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

	move-result v4

	iput-boolean v4, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

	.line 528
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/lang/String;

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

	.line 529
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/lang/String;

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

	.line 530
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/lang/String;

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

	.line 531
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/lang/String;

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->cacheMissURL:Ljava/lang/String;

	.line 532
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/lang/String;

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	.line 533
	invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

	move-result v4

	iput-boolean v4, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

	.line 534
	invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

	move-result v4

	iput-boolean v4, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

	.line 535
	invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

	move-result v4

	iput-boolean v4, p0, Lcom/millennialmedia/android/VideoAd;->reloadNonEndOverlayOnRestart:Z

	.line 536
	invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

	move-result v0

	.line 537
	.local v0, "count":I
	new-array v4, v0, [Ljava/lang/String;

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	.line 538
	const/4 v1, 0x0

	.local v1, "i":I
	:goto_0
	if-ge v1, v0, :cond_0

	.line 539
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/lang/String;

	aput-object v4, v5, v1

	.line 538
	add-int/lit8 v1, v1, 0x1

	goto :goto_0

	.line 540
	:cond_0
	invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

	move-result v0

	.line 541
	new-array v4, v0, [Ljava/lang/String;

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	.line 542
	const/4 v1, 0x0

	:goto_1
	if-ge v1, v0, :cond_1

	.line 543
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/lang/String;

	aput-object v4, v5, v1

	.line 542
	add-int/lit8 v1, v1, 0x1

	goto :goto_1

	.line 544
	:cond_1
	invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

	move-result-wide v4

	iput-wide v4, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

	.line 545
	invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

	move-result v4

	iput-boolean v4, p0, Lcom/millennialmedia/android/VideoAd;->usingInternalStorage:Z

	.line 546
	invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

	move-result-wide v4

	iput-wide v4, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

	.line 547
	invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

	move-result-wide v4

	iput-wide v4, p0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

	.line 548
	invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

	move-result v0

	.line 549
	new-array v4, v0, [Ljava/lang/String;

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	.line 550
	const/4 v1, 0x0

	:goto_2
	if-ge v1, v0, :cond_2

	.line 551
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/lang/String;

	aput-object v4, v5, v1

	.line 550
	add-int/lit8 v1, v1, 0x1

	goto :goto_2

	.line 552
	:cond_2
	invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

	move-result v0

	.line 553
	new-array v4, v0, [Ljava/lang/String;

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	.line 554
	const/4 v1, 0x0

	:goto_3
	if-ge v1, v0, :cond_3

	.line 555
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/lang/String;

	aput-object v4, v5, v1

	.line 554
	add-int/lit8 v1, v1, 0x1

	goto :goto_3

	.line 556
	:cond_3
	invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

	move-result v0

	.line 557
	new-array v4, v0, [Ljava/lang/String;

	iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	.line 558
	const/4 v1, 0x0

	:goto_4
	if-ge v1, v0, :cond_4

	.line 559
	iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/lang/String;

	aput-object v4, v5, v1

	.line 558
	add-int/lit8 v1, v1, 0x1

	goto :goto_4

	.line 561
	:cond_4
	iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

	.line 562
	invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

	move-result v0

	.line 563
	const/4 v1, 0x0

	:goto_5
	if-ge v1, v0, :cond_5

	.line 565
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v2

	check-cast v2, Lcom/millennialmedia/android/VideoImage;

	.line 566
	.local v2, "videoImage":Lcom/millennialmedia/android/VideoImage;
	iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

	.line 563
	add-int/lit8 v1, v1, 0x1

	goto :goto_5

	.line 569
	.end local v2	# "videoImage":Lcom/millennialmedia/android/VideoImage;
	:cond_5
	iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

	.line 570
	invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

	move-result v0

	.line 571
	const/4 v1, 0x0

	:goto_6
	if-ge v1, v0, :cond_6

	.line 573
	invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

	move-result-object v3

	check-cast v3, Lcom/millennialmedia/android/VideoLogEvent;

	.line 574
	.local v3, "videoLogEvent":Lcom/millennialmedia/android/VideoLogEvent;
	iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

	.line 571
	add-int/lit8 v1, v1, 0x1

	goto :goto_6

	.line 576
	.end local v3	# "videoLogEvent":Lcom/millennialmedia/android/VideoLogEvent;
	:cond_6
	return-void
.end method

.method saveAssets(Landroid/content/Context;)Z
	.locals 1
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 265
	const/4 v0, 0x1

	return v0
.end method

.method setDtoCachedVideo(Lcom/millennialmedia/android/DTOCachedVideo;)V
	.locals 0
	.param p1, "dto"	# Lcom/millennialmedia/android/DTOCachedVideo;

	.prologue
	.line 669
	iput-object p1, p0, Lcom/millennialmedia/android/VideoAd;->cachedVideoDto:Lcom/millennialmedia/android/DTOCachedVideo;

	.line 670
	return-void
.end method

.method show(Landroid/content/Context;J)V
	.locals 1
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "adImplInternalId"	# J

	.prologue
	.line 454
	invoke-virtual {p0, p1, p2, p3}, Lcom/millennialmedia/android/VideoAd;->getVideoExtrasIntent(Landroid/content/Context;J)Landroid/content/Intent;

	move-result-object v0

	invoke-static {p1, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startCachedVideoPlayerActivity(Landroid/content/Context;Landroid/content/Intent;)V

	.line 455
	return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
	.locals 12
	.param p1, "output"	# Ljava/io/ObjectOutput;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 581
	invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->writeExternal(Ljava/io/ObjectOutput;)V

	.line 582
	iget-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

	.line 583
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 584
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 585
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 586
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->cacheMissURL:Ljava/lang/String;

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 587
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 588
	iget-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

	.line 589
	iget-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

	.line 590
	iget-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->reloadNonEndOverlayOnRestart:Z

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

	.line 591
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	array-length v10, v10

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

	.line 592
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	.local v0, "arr$":[Ljava/lang/String;
	array-length v6, v0

	.local v6, "len$":I
	const/4 v5, 0x0

	.local v5, "i$":I
	:goto_0
	if-ge v5, v6, :cond_0

	aget-object v8, v0, v5

	.line 593
	.local v8, "sa":Ljava/lang/String;
	invoke-interface {p1, v8}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 592
	add-int/lit8 v5, v5, 0x1

	goto :goto_0

	.line 594
	.end local v8	# "sa":Ljava/lang/String;
	:cond_0
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	array-length v10, v10

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

	.line 595
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	array-length v6, v0

	const/4 v5, 0x0

	:goto_1
	if-ge v5, v6, :cond_1

	aget-object v4, v0, v5

	.line 596
	.local v4, "ea":Ljava/lang/String;
	invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 595
	add-int/lit8 v5, v5, 0x1

	goto :goto_1

	.line 597
	.end local v4	# "ea":Ljava/lang/String;
	:cond_1
	iget-wide v10, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

	invoke-interface {p1, v10, v11}, Ljava/io/ObjectOutput;->writeLong(J)V

	.line 598
	iget-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->usingInternalStorage:Z

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

	.line 599
	iget-wide v10, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

	invoke-interface {p1, v10, v11}, Ljava/io/ObjectOutput;->writeLong(J)V

	.line 600
	iget-wide v10, p0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

	invoke-interface {p1, v10, v11}, Ljava/io/ObjectOutput;->writeLong(J)V

	.line 601
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	array-length v10, v10

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

	.line 602
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	array-length v6, v0

	const/4 v5, 0x0

	:goto_2
	if-ge v5, v6, :cond_2

	aget-object v2, v0, v5

	.line 603
	.local v2, "cc":Ljava/lang/String;
	invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 602
	add-int/lit8 v5, v5, 0x1

	goto :goto_2

	.line 604
	.end local v2	# "cc":Ljava/lang/String;
	:cond_2
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	array-length v10, v10

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

	.line 605
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	array-length v6, v0

	const/4 v5, 0x0

	:goto_3
	if-ge v5, v6, :cond_3

	aget-object v3, v0, v5

	.line 606
	.local v3, "cf":Ljava/lang/String;
	invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 605
	add-int/lit8 v5, v5, 0x1

	goto :goto_3

	.line 607
	.end local v3	# "cf":Ljava/lang/String;
	:cond_3
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	array-length v10, v10

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

	.line 608
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	array-length v6, v0

	const/4 v5, 0x0

	:goto_4
	if-ge v5, v6, :cond_4

	aget-object v9, v0, v5

	.line 609
	.local v9, "ve":Ljava/lang/String;
	invoke-interface {p1, v9}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	.line 608
	add-int/lit8 v5, v5, 0x1

	goto :goto_4

	.line 610
	.end local v9	# "ve":Ljava/lang/String;
	:cond_4
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

	move-result v10

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

	.line 611
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

	move-result-object v5

	.local v5, "i$":Ljava/util/Iterator;
	:goto_5
	invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

	move-result v10

	if-eqz v10, :cond_5

	invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Lcom/millennialmedia/android/VideoImage;

	.line 612
	.local v1, "button":Lcom/millennialmedia/android/VideoImage;
	invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	goto :goto_5

	.line 613
	.end local v1	# "button":Lcom/millennialmedia/android/VideoImage;
	:cond_5
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

	move-result v10

	invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

	.line 614
	iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

	move-result-object v5

	:goto_6
	invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

	move-result v10

	if-eqz v10, :cond_6

	invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v7

	check-cast v7, Lcom/millennialmedia/android/VideoLogEvent;

	.line 615
	.local v7, "logEvent":Lcom/millennialmedia/android/VideoLogEvent;
	invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

	goto :goto_6

	.line 616
	.end local v7	# "logEvent":Lcom/millennialmedia/android/VideoLogEvent;
	:cond_6
	return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
	.locals 3
	.param p1, "dest"	# Landroid/os/Parcel;
	.param p2, "flags"	# I

	.prologue
	.line 479
	invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/CachedAd;->writeToParcel(Landroid/os/Parcel;I)V

	.line 480
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	array-length v0, v0

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

	.line 481
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

	.line 482
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	array-length v0, v0

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

	.line 483
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

	.line 484
	const/4 v0, 0x5

	new-array v0, v0, [Z

	const/4 v1, 0x0

	iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

	aput-boolean v2, v0, v1

	const/4 v1, 0x1

	iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

	aput-boolean v2, v0, v1

	const/4 v1, 0x2

	iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

	aput-boolean v2, v0, v1

	const/4 v1, 0x3

	iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->reloadNonEndOverlayOnRestart:Z

	aput-boolean v2, v0, v1

	const/4 v1, 0x4

	iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->usingInternalStorage:Z

	aput-boolean v2, v0, v1

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

	.line 485
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

	.line 486
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

	.line 487
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

	.line 488
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheMissURL:Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

	.line 489
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

	.line 490
	iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

	invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

	.line 491
	iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

	invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

	.line 492
	iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

	invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

	.line 493
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

	.line 494
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

	.line 495
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	array-length v0, v0

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

	.line 496
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

	.line 497
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	array-length v0, v0

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

	.line 498
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

	.line 499
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	array-length v0, v0

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

	.line 500
	iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

	invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

	.line 501
	return-void
.end method
