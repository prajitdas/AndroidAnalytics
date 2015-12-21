.class public Lcom/jumptap/adtag/activity/JTVideo;
.super Ljava/lang/Object;
.source "JTVideo.java"


# static fields
.field private static final ADID_STR:Ljava/lang/String; = "AdID"

.field private static final CLICK_THROUGH_STR:Ljava/lang/String; = "ClickThrough"

.field private static final IMPRESSION_STR:Ljava/lang/String; = "Impression"

.field private static final MEDIA_FILE_STR:Ljava/lang/String; = "MediaFile"

.field private static final URL_STR:Ljava/lang/String; = "URL"

.field private static final WEEK_IN_MILLIS:J = 0x240c8400L

.field private static adId:Ljava/lang/String;

.field private static adRequestId:Ljava/lang/String;

.field private static clickThroughUrl:Ljava/lang/String;

.field private static downloadingMediaFile:Ljava/io/File;

.field private static isDownLoading:Z

.field private static totalKbRead:I

.field private static trackingUrlArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static videoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jumptap/adtag/activity/JTVideo;->trackingUrlArr:Ljava/util/List;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/jumptap/adtag/activity/JTVideo;->clickThroughUrl:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/jumptap/adtag/activity/JTVideo;->videoUrl:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;

    .line 51
    sput-boolean v1, Lcom/jumptap/adtag/activity/JTVideo;->isDownLoading:Z

    .line 55
    sput v1, Lcom/jumptap/adtag/activity/JTVideo;->totalKbRead:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/jumptap/adtag/activity/JTVideo;->isDownLoading:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lcom/jumptap/adtag/activity/JTVideo;->isDownLoading:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/jumptap/adtag/activity/JTVideo;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    sput-object p0, Lcom/jumptap/adtag/activity/JTVideo;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    sput-object p0, Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/jumptap/adtag/activity/JTVideo;->trackingUrlArr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    sput-object p0, Lcom/jumptap/adtag/activity/JTVideo;->clickThroughUrl:Ljava/lang/String;

    return-object p0
.end method

.method private static checkIfExpired(Lcom/jumptap/adtag/media/VideoCacheItem;)Z
    .locals 9
    .param p0, "item"    # Lcom/jumptap/adtag/media/VideoCacheItem;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/jumptap/adtag/media/VideoCacheItem;->getDate()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "dateAsStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 184
    .local v0, "dateAsLong":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 186
    .local v5, "nowAsLong":J
    sub-long v3, v5, v0

    .line 187
    .local v3, "deltaAsLong":J
    const-wide/32 v7, 0x240c8400

    cmp-long v7, v3, v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected static clearTrackingUrl()V
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/jumptap/adtag/activity/JTVideo;->trackingUrlArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 331
    return-void
.end method

.method private static deleteVideo(Lcom/jumptap/adtag/media/VideoCacheItem;Lcom/jumptap/adtag/db/DBManager;Landroid/content/Context;)V
    .locals 4
    .param p0, "item"    # Lcom/jumptap/adtag/media/VideoCacheItem;
    .param p1, "dbManager"    # Lcom/jumptap/adtag/db/DBManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const-string v1, "JtAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting from db item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jumptap/adtag/media/VideoCacheItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/jumptap/adtag/media/VideoCacheItem;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jumptap/adtag/db/DBManager;->deleteVideoCacheItemById(I)V

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jumptap/adtag/media/VideoCacheItem;->getAdID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .local v0, "videoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 208
    :cond_0
    return-void
.end method

.method private static getAdContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asVideoUrl"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 294
    .local v2, "fetcher":Lcom/jumptap/adtag/utils/JtAdFetcher;
    :try_start_0
    new-instance v3, Lcom/jumptap/adtag/utils/JtAdFetcher;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/jumptap/adtag/utils/JtAdFetcher;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;)V
    :try_end_0
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v2    # "fetcher":Lcom/jumptap/adtag/utils/JtAdFetcher;
    .local v3, "fetcher":Lcom/jumptap/adtag/utils/JtAdFetcher;
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/jumptap/adtag/utils/JtAdFetcher;->setUrl(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v3}, Lcom/jumptap/adtag/utils/JtAdFetcher;->getAdContent()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "adContent":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/jumptap/adtag/utils/JtAdFetcher;->getAdRequestId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/jumptap/adtag/activity/JTVideo;->adRequestId:Ljava/lang/String;

    .line 300
    invoke-static {v0}, Lcom/jumptap/adtag/activity/JTVideo;->parseAdContent(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 304
    .end local v0    # "adContent":Ljava/lang/String;
    .end local v3    # "fetcher":Lcom/jumptap/adtag/utils/JtAdFetcher;
    .restart local v2    # "fetcher":Lcom/jumptap/adtag/utils/JtAdFetcher;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Lcom/jumptap/adtag/utils/JtException;
    :goto_1
    const-string v4, "JtAd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FAil to get ad content url is ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 301
    .end local v1    # "e":Lcom/jumptap/adtag/utils/JtException;
    .end local v2    # "fetcher":Lcom/jumptap/adtag/utils/JtAdFetcher;
    .restart local v3    # "fetcher":Lcom/jumptap/adtag/utils/JtAdFetcher;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fetcher":Lcom/jumptap/adtag/utils/JtAdFetcher;
    .restart local v2    # "fetcher":Lcom/jumptap/adtag/utils/JtAdFetcher;
    goto :goto_1
.end method

.method protected static getAdRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/jumptap/adtag/activity/JTVideo;->adRequestId:Ljava/lang/String;

    return-object v0
.end method

.method protected static getClickThroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/jumptap/adtag/activity/JTVideo;->clickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static getLastItem(Lcom/jumptap/adtag/db/DBManager;)Lcom/jumptap/adtag/media/VideoCacheItem;
    .locals 3
    .param p0, "dbManager"    # Lcom/jumptap/adtag/db/DBManager;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/jumptap/adtag/db/DBManager;->selectAllVideoCacheItems()Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/media/VideoCacheItem;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jumptap/adtag/media/VideoCacheItem;

    .line 154
    .local v1, "videoCacheItem":Lcom/jumptap/adtag/media/VideoCacheItem;
    return-object v1
.end method

.method protected static getTrackingUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/jumptap/adtag/activity/JTVideo;->trackingUrlArr:Ljava/util/List;

    return-object v0
.end method

.method private static initParams()V
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/jumptap/adtag/activity/JTVideo;->clearTrackingUrl()V

    .line 424
    const-string v0, ""

    sput-object v0, Lcom/jumptap/adtag/activity/JTVideo;->clickThroughUrl:Ljava/lang/String;

    .line 425
    const-string v0, ""

    sput-object v0, Lcom/jumptap/adtag/activity/JTVideo;->videoUrl:Ljava/lang/String;

    .line 426
    const-string v0, ""

    sput-object v0, Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public static isReady()Z
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Lcom/jumptap/adtag/media/JTMediaPlayer;->getInstance()Lcom/jumptap/adtag/media/JTMediaPlayer;

    move-result-object v0

    .line 318
    .local v0, "mediaPlayer":Lcom/jumptap/adtag/media/JTMediaPlayer;
    invoke-virtual {v0}, Lcom/jumptap/adtag/media/JTMediaPlayer;->isReady()Z

    move-result v1

    return v1
.end method

.method private static isVideoInCache(Lcom/jumptap/adtag/db/DBManager;)Z
    .locals 2
    .param p0, "dbManager"    # Lcom/jumptap/adtag/db/DBManager;

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/jumptap/adtag/db/DBManager;->selectAllVideoCacheItems()Ljava/util/List;

    move-result-object v0

    .line 309
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/media/VideoCacheItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static maintainDB(Lcom/jumptap/adtag/db/DBManager;Landroid/content/Context;)V
    .locals 7
    .param p0, "dbManager"    # Lcom/jumptap/adtag/db/DBManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const-string v4, "JtAd"

    const-string v5, "maintainDB"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/jumptap/adtag/db/DBManager;->selectAllVideoCacheItems()Ljava/util/List;

    move-result-object v3

    .line 165
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/media/VideoCacheItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 166
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jumptap/adtag/media/VideoCacheItem;

    .line 167
    .local v2, "item":Lcom/jumptap/adtag/media/VideoCacheItem;
    const-string v4, "JtAd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found in db: item = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jumptap/adtag/media/VideoCacheItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {v2}, Lcom/jumptap/adtag/activity/JTVideo;->checkIfExpired(Lcom/jumptap/adtag/media/VideoCacheItem;)Z

    move-result v1

    .line 170
    .local v1, "isExpired":Z
    if-eqz v1, :cond_0

    .line 171
    invoke-static {v2, p0, p1}, Lcom/jumptap/adtag/activity/JTVideo;->deleteVideo(Lcom/jumptap/adtag/media/VideoCacheItem;Lcom/jumptap/adtag/db/DBManager;Landroid/content/Context;)V

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "isExpired":Z
    .end local v2    # "item":Lcom/jumptap/adtag/media/VideoCacheItem;
    :cond_1
    return-void
.end method

.method private static parseAdContent(Ljava/lang/String;)V
    .locals 8
    .param p0, "adContent"    # Ljava/lang/String;

    .prologue
    .line 343
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 344
    :cond_0
    const-string v5, "JtAd"

    const-string v6, "Cannot parse content since adContent is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 349
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-static {}, Lcom/jumptap/adtag/activity/JTVideo;->initParams()V

    .line 350
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 351
    .local v2, "saxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 353
    .local v1, "mainReader":Lorg/xml/sax/XMLReader;
    new-instance v5, Lcom/jumptap/adtag/activity/JTVideo$2;

    invoke-direct {v5}, Lcom/jumptap/adtag/activity/JTVideo$2;-><init>()V

    invoke-interface {v1, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 413
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 414
    .local v4, "stringReader":Ljava/io/StringReader;
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    .end local v1    # "mainReader":Lorg/xml/sax/XMLReader;
    .end local v2    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "stringReader":Ljava/io/StringReader;
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "JtAd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The following execption was thrown while SAX parsing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v5, "JtAd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAX fail to parse content:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static prepare(Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/content/Context;)Z
    .locals 1
    .param p0, "widgetSettings"    # Lcom/jumptap/adtag/JtAdWidgetSettings;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jumptap/adtag/activity/JTVideo;->prepare(Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method protected static prepare(Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/content/Context;Z)Z
    .locals 17
    .param p0, "widgetSettings"    # Lcom/jumptap/adtag/JtAdWidgetSettings;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldForceDownload"    # Z

    .prologue
    .line 76
    invoke-static/range {p1 .. p1}, Lcom/jumptap/adtag/db/DBManager;->getInstance(Landroid/content/Context;)Lcom/jumptap/adtag/db/DBManager;

    move-result-object v4

    .line 77
    .local v4, "dbManager":Lcom/jumptap/adtag/db/DBManager;
    new-instance v2, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;-><init>(Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/content/Context;)V

    .line 80
    .local v2, "adUrlBuilder":Lcom/jumptap/adtag/utils/JtAdUrlBuilder;
    invoke-static {v4}, Lcom/jumptap/adtag/activity/JTVideo;->isVideoInCache(Lcom/jumptap/adtag/db/DBManager;)Z

    move-result v8

    .line 81
    .local v8, "isVideoInCache":Z
    const-string v13, "JtAd"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "in prepare  shouldForceDownload= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  isVideoInCache="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {v4}, Lcom/jumptap/adtag/db/DBManager;->deleteAllVideoCacheItems()V

    .line 88
    :cond_0
    const/4 v11, 0x0

    .line 90
    .local v11, "retVal":Z
    if-eqz v8, :cond_1

    if-eqz p2, :cond_2

    .line 91
    :cond_1
    const-string v13, "JtAd"

    const-string v14, "video not found in cache . downloading new video"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v13, Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v14, "type=video&specific=false"

    invoke-virtual {v2, v13, v14}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->getAdUrl(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "asVideoUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/jumptap/adtag/activity/JTVideo;->getAdContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/jumptap/adtag/activity/JTVideo;->runSaveVideoThread(Lcom/jumptap/adtag/db/DBManager;Landroid/content/Context;)V

    .line 141
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/jumptap/adtag/activity/JTVideo;->maintainDB(Lcom/jumptap/adtag/db/DBManager;Landroid/content/Context;)V

    .line 143
    return v11

    .line 102
    .end local v3    # "asVideoUrl":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Lcom/jumptap/adtag/activity/JTVideo;->getLastItem(Lcom/jumptap/adtag/db/DBManager;)Lcom/jumptap/adtag/media/VideoCacheItem;

    move-result-object v9

    .line 103
    .local v9, "item":Lcom/jumptap/adtag/media/VideoCacheItem;
    invoke-virtual {v9}, Lcom/jumptap/adtag/media/VideoCacheItem;->getAdID()Ljava/lang/String;

    move-result-object v12

    .line 104
    .local v12, "savedAdID":Ljava/lang/String;
    const-string v13, "JtAd"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "video found in cache adid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v13, Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "type=video&specific=true&adid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->getAdUrl(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .restart local v3    # "asVideoUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/jumptap/adtag/activity/JTVideo;->getAdContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    const-string v13, "JtAd"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TL return adid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v13, Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 113
    const-string v13, "JtAd"

    const-string v14, "prepering video from cache"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".dat"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v13, Lcom/jumptap/adtag/activity/JTVideo;->downloadingMediaFile:Ljava/io/File;

    .line 116
    invoke-static {}, Lcom/jumptap/adtag/media/JTMediaPlayer;->getInstance()Lcom/jumptap/adtag/media/JTMediaPlayer;

    move-result-object v10

    .line 119
    .local v10, "mediaPlayer":Lcom/jumptap/adtag/media/JTMediaPlayer;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    sget-object v13, Lcom/jumptap/adtag/activity/JTVideo;->downloadingMediaFile:Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 120
    .local v7, "in":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 121
    .local v6, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v10, v6}, Lcom/jumptap/adtag/media/JTMediaPlayer;->prepareVideo(Ljava/io/FileDescriptor;)V

    .line 122
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 124
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 125
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v13, "JtAd"

    const-string v14, "Fail to play video"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 126
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 127
    .local v5, "e":Ljava/io/IOException;
    const-string v13, "JtAd"

    const-string v14, "Fail to play video"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 132
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "mediaPlayer":Lcom/jumptap/adtag/media/JTMediaPlayer;
    :cond_3
    const-string v13, "JtAd"

    const-string v14, "video  in cache is not valid downloading new file"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-object/from16 v0, p1

    invoke-static {v9, v4, v0}, Lcom/jumptap/adtag/activity/JTVideo;->deleteVideo(Lcom/jumptap/adtag/media/VideoCacheItem;Lcom/jumptap/adtag/db/DBManager;Landroid/content/Context;)V

    .line 136
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/jumptap/adtag/activity/JTVideo;->prepare(Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/content/Context;Z)Z

    goto/16 :goto_0
.end method

.method private static runSaveVideoThread(Lcom/jumptap/adtag/db/DBManager;Landroid/content/Context;)V
    .locals 3
    .param p0, "dbManager"    # Lcom/jumptap/adtag/db/DBManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    sget-object v1, Lcom/jumptap/adtag/activity/JTVideo;->videoUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jumptap/adtag/activity/JTVideo;->videoUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    new-instance v0, Lcom/jumptap/adtag/activity/JTVideo$1;

    invoke-direct {v0, p1, p0}, Lcom/jumptap/adtag/activity/JTVideo$1;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/db/DBManager;)V

    .line 240
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 245
    .end local v0    # "r":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v1, "JtAd"

    const-string v2, "cannot save video since url is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveVideoToFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 10
    .param p0, "mediaUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 255
    .local v1, "cn":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 256
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 257
    .local v4, "stream":Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 258
    const-string v6, "JtAd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create InputStream for mediaUrl:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".dat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v6, Lcom/jumptap/adtag/activity/JTVideo;->downloadingMediaFile:Ljava/io/File;

    .line 264
    sget-object v6, Lcom/jumptap/adtag/activity/JTVideo;->downloadingMediaFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 265
    sget-object v6, Lcom/jumptap/adtag/activity/JTVideo;->downloadingMediaFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 269
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/jumptap/adtag/activity/JTVideo;->downloadingMediaFile:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 270
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v6, 0x4000

    new-array v0, v6, [B

    .line 271
    .local v0, "buf":[B
    const/4 v5, 0x0

    .line 273
    .local v5, "totalBytesRead":I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 274
    .local v2, "numread":I
    if-gtz v2, :cond_2

    .line 281
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 282
    const-string v6, "JtAd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Done saving file  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dat, total"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/jumptap/adtag/activity/JTVideo;->totalKbRead:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Kb read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 277
    add-int/2addr v5, v2

    .line 278
    div-int/lit16 v6, v5, 0x3e8

    sput v6, Lcom/jumptap/adtag/activity/JTVideo;->totalKbRead:I

    goto :goto_1
.end method
