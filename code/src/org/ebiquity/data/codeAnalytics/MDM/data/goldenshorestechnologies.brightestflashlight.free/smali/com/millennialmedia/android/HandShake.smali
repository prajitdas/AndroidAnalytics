.class Lcom/millennialmedia/android/HandShake;
.super Ljava/lang/Object;
.source "HandShake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/HandShake$AdTypeHandShake;,
        Lcom/millennialmedia/android/HandShake$Scheme;
    }
.end annotation


# static fields
.field static final BASE_URL:Ljava/lang/String; = "http://androidsdk.ads.mp.mydas.mobi/"

.field static final BASE_URL_PATH:Ljava/lang/String; = "getAd.php5?"

.field private static final HANDSHAKE_FALLBACK_URL:Ljava/lang/String; = "http://ads.mp.mydas.mobi/appConfigServlet?apid="

.field private static final HANDSHAKE_HTTPS_SCHEME:Ljava/lang/String; = "https://"

.field private static final HANDSHAKE_HTTP_SCHEME:Ljava/lang/String; = "http://"

.field private static final HANDSHAKE_URL_HOST:Ljava/lang/String; = "ads.mp.mydas.mobi/"

.field private static final HANDSHAKE_URL_OVERRIDE_PARMS:Ljava/lang/String; = "?apid="

.field private static final HANDSHAKE_URL_PARMS:Ljava/lang/String; = "appConfigServlet?apid="

.field private static final KEY_CACHED_VIDEOS:Ljava/lang/String; = "handshake_cachedvideos5.0"

.field private static adUrl:Ljava/lang/String;

.field static apid:Ljava/lang/String;

.field private static forceRefresh:Z

.field private static handShakeURL:Ljava/lang/String;

.field private static sharedInstance:Lcom/millennialmedia/android/HandShake;


# instance fields
.field adRefreshSecs:J

.field private adTypeHandShakes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/android/HandShake$AdTypeHandShake;",
            ">;"
        }
    .end annotation
.end field

.field private appContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field creativeCacheTimeout:J

.field private deferredViewTimeout:J

.field endSessionURL:Ljava/lang/String;

.field private handShakeCallback:J

.field private final handler:Landroid/os/Handler;

.field hardwareAccelerationEnabled:Z

.field kill:Z

.field private lastHandShake:J

.field mmdid:Ljava/lang/String;

.field mmjsUrl:Ljava/lang/String;

.field private noVideosToCacheURL:Ljava/lang/String;

.field private schemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/HandShake$Scheme;",
            ">;"
        }
    .end annotation
.end field

.field private schemesList:Ljava/lang/String;

.field startSessionURL:Ljava/lang/String;

.field private updateHandShakeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "28913"

    sput-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    .line 50
    const-string v0, "https://ads.mp.mydas.mobi/appConfigServlet?apid="

    sput-object v0, Lcom/millennialmedia/android/HandShake;->handShakeURL:Ljava/lang/String;

    .line 82
    const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    sput-object v0, Lcom/millennialmedia/android/HandShake;->adUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    .line 65
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 69
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 73
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 386
    new-instance v0, Lcom/millennialmedia/android/HandShake$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake$2;-><init>(Lcom/millennialmedia/android/HandShake;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    .line 240
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    .line 65
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 67
    iput-boolean v4, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 69
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 73
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 386
    new-instance v0, Lcom/millennialmedia/android/HandShake$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake$2;-><init>(Lcom/millennialmedia/android/HandShake;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    .line 246
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;

    .line 247
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->appContextRef:Ljava/lang/ref/WeakReference;

    .line 248
    sget-boolean v0, Lcom/millennialmedia/android/HandShake;->forceRefresh:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->loadHandShake(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 250
    :cond_0
    sput-boolean v4, Lcom/millennialmedia/android/HandShake;->forceRefresh:Z

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    .line 253
    invoke-direct {p0, v4}, Lcom/millennialmedia/android/HandShake;->requestHandshake(Z)V

    .line 255
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->appContextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->sentFirstLaunch(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/millennialmedia/android/HandShake;)J
    .locals 2
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/millennialmedia/android/HandShake;->handShakeURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 38
    sput-object p0, Lcom/millennialmedia/android/HandShake;->handShakeURL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/HandShake;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->deserializeFromObj(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->saveHandShake(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/millennialmedia/android/HandShake;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/android/HandShake;)J
    .locals 2
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/millennialmedia/android/HandShake;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 17
    .param p1, "handShakeObject"    # Lorg/json/JSONObject;

    .prologue
    .line 610
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 614
    .local v5, "context":Landroid/content/Context;
    if-nez p1, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    :try_start_0
    const-string v13, "errors"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 621
    .local v8, "jsonArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_4

    .line 623
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_4

    .line 625
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 626
    .local v9, "jsonObject":Lorg/json/JSONObject;
    if-eqz v9, :cond_2

    .line 628
    const-string v13, "message"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 629
    .local v10, "message":Ljava/lang/String;
    const-string v13, "type"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 630
    .local v12, "type":Ljava/lang/String;
    if-eqz v10, :cond_2

    if-eqz v12, :cond_2

    .line 632
    const-string v13, "log"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 634
    invoke-static {v10}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 623
    .end local v10    # "message":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 636
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v12    # "type":Ljava/lang/String;
    :cond_3
    const-string v13, "prompt"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 638
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    new-instance v14, Lcom/millennialmedia/android/HandShake$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5, v10}, Lcom/millennialmedia/android/HandShake$3;-><init>(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 732
    .end local v7    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "message":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 734
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 672
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    const-string v13, "adtypes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 673
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    if-eqz v9, :cond_6

    .line 676
    invoke-static {}, Lcom/millennialmedia/android/MMAdImpl;->getAdTypes()[Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, "adTypes":[Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    array-length v13, v4

    if-ge v7, v13, :cond_6

    .line 680
    aget-object v13, v4, v7

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 681
    .local v3, "adTypeObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    .line 683
    new-instance v2, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 684
    .local v2, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 686
    aget-object v13, v4, v7

    invoke-virtual {v2, v5, v13}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->loadLastVideo(Landroid/content/Context;Ljava/lang/String;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    aget-object v14, v4, v7

    invoke-virtual {v13, v14, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .end local v2    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 693
    .end local v3    # "adTypeObject":Lorg/json/JSONObject;
    .end local v4    # "adTypes":[Ljava/lang/String;
    .end local v7    # "i":I
    :cond_6
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 695
    :try_start_2
    const-string v13, "schemes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 696
    if-eqz v8, :cond_9

    .line 698
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 700
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_9

    .line 702
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 703
    if-eqz v9, :cond_8

    .line 705
    new-instance v11, Lcom/millennialmedia/android/HandShake$Scheme;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/millennialmedia/android/HandShake$Scheme;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 706
    .local v11, "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    invoke-virtual {v11, v9}, Lcom/millennialmedia/android/HandShake$Scheme;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .end local v11    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 711
    .end local v7    # "i":I
    :cond_9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 714
    :try_start_3
    const-string v13, "adrefresh"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/millennialmedia/android/HandShake;->adRefreshSecs:J

    .line 715
    const-string v13, "deferredviewtimeout"

    const-wide/16 v14, 0xe10

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 716
    const-string v13, "kill"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 717
    const-string v13, "baseURL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/millennialmedia/android/HandShake;->setAdUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 718
    const-string v13, "handshakecallback"

    const-wide/32 v14, 0x15180

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 719
    const-string v13, "creativeCacheTimeout"

    const-wide/32 v14, 0x3f480

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 720
    const-string v13, "hardwareAccelerationEnabled"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/millennialmedia/android/HandShake;->hardwareAccelerationEnabled:Z

    .line 721
    const-string v13, "startSessionURL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/HandShake;->startSessionURL:Ljava/lang/String;

    .line 722
    const-string v13, "endSessionURL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/HandShake;->endSessionURL:Ljava/lang/String;

    .line 723
    const-string v13, "mmjs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/HandShake;->mmjsUrl:Ljava/lang/String;

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/android/HandShake;->handleCachedVideos(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->mmjsUrl:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->mmjsUrl:Ljava/lang/String;

    invoke-static {v5, v13}, Lcom/millennialmedia/android/MRaid;->isMRaidUpdated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 729
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->appContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/millennialmedia/android/HandShake;->mmjsUrl:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/millennialmedia/android/MRaid;->downloadMraidJs(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 711
    :catchall_0
    move-exception v13

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method static getAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/millennialmedia/android/HandShake;->adUrl:Ljava/lang/String;

    return-object v0
.end method

.method private handleCachedVideos(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 4
    .param p1, "handShakeObject"    # Lorg/json/JSONObject;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 742
    const-string v1, "cachedVideos"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 743
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 745
    new-instance v1, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {v1}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lcom/millennialmedia/android/DTOCachedVideo;

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/millennialmedia/android/DTOCachedVideo;

    iput-object v1, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    .line 746
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 748
    :cond_0
    const-string v1, "noVideosToCacheURL"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/HandShake;->noVideosToCacheURL:Ljava/lang/String;

    .line 749
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    if-eqz v1, :cond_1

    .line 750
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    iget-object v2, p0, Lcom/millennialmedia/android/HandShake;->noVideosToCacheURL:Ljava/lang/String;

    invoke-static {v1, p2, v2}, Lcom/millennialmedia/android/PreCacheWorker;->preCacheVideos([Lcom/millennialmedia/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V

    .line 751
    :cond_1
    return-void
.end method

.method private isFirstLaunch(Landroid/content/Context;)Z
    .locals 3
    .param p1, "tempContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 368
    if-nez p1, :cond_0

    .line 372
    :goto_0
    return v1

    .line 371
    :cond_0
    const-string v2, "MillennialMediaSettings"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 372
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "firstlaunchHandshake"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private loadHandShake(Landroid/content/Context;)Z
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 755
    const/16 v16, 0x0

    .line 756
    .local v16, "settingsFound":Z
    const-string v18, "MillennialMediaSettings"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 758
    .local v15, "settings":Landroid/content/SharedPreferences;
    if-nez v15, :cond_0

    .line 759
    const/16 v18, 0x0

    .line 868
    :goto_0
    return v18

    .line 762
    :cond_0
    const-string v18, "handshake_deferredviewtimeout"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 764
    const-string v18, "handshake_deferredviewtimeout"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v15, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 765
    const/16 v16, 0x1

    .line 767
    :cond_1
    const-string v18, "handshake_baseUrl"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 769
    const-string v18, "handshake_baseUrl"

    sget-object v19, Lcom/millennialmedia/android/HandShake;->adUrl:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/millennialmedia/android/HandShake;->adUrl:Ljava/lang/String;

    .line 770
    const/16 v16, 0x1

    .line 772
    :cond_2
    const-string v18, "handshake_callback"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 774
    const-string v18, "handshake_callback"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v15, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 775
    const/16 v16, 0x1

    .line 777
    :cond_3
    const-string v18, "handshake_hardwareAccelerationEnabled"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 779
    const-string v18, "handshake_hardwareAccelerationEnabled"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/HandShake;->hardwareAccelerationEnabled:Z

    .line 780
    const/16 v16, 0x1

    .line 782
    :cond_4
    const-string v18, "handshake_startSessionURL"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 784
    const-string v18, "handshake_startSessionURL"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/HandShake;->startSessionURL:Ljava/lang/String;

    .line 785
    const/16 v16, 0x1

    .line 787
    :cond_5
    const-string v18, "handshake_endSessionURL"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 789
    const-string v18, "handshake_endSessionURL"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/HandShake;->endSessionURL:Ljava/lang/String;

    .line 790
    const/16 v16, 0x1

    .line 792
    :cond_6
    const-string v18, "handshake_mmdid"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 794
    const-string v18, "handshake_mmdid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->setMMdid(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 795
    const/16 v16, 0x1

    .line 797
    :cond_7
    const-string v18, "handshake_creativecachetimeout"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 799
    const-string v18, "handshake_creativecachetimeout"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v15, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 800
    const/16 v16, 0x1

    .line 802
    :cond_8
    const-string v18, "handshake_mmjs"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 804
    const-string v18, "handshake_mmjs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->mmjsUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/HandShake;->mmjsUrl:Ljava/lang/String;

    .line 805
    const/16 v16, 0x1

    .line 808
    :cond_9
    invoke-static {}, Lcom/millennialmedia/android/MMAdImpl;->getAdTypes()[Ljava/lang/String;

    move-result-object v5

    .line 809
    .local v5, "adTypes":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_b

    .line 811
    new-instance v4, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 812
    .local v4, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    aget-object v18, v5, v7

    move-object/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->load(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 814
    const/16 v16, 0x1

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    move-object/from16 v18, v0

    aget-object v19, v5, v7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 819
    .end local v4    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_b
    monitor-enter p0

    .line 821
    :try_start_0
    const-string v18, "handshake_schemes"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 823
    const-string v18, "handshake_schemes"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 824
    .local v14, "schemesStr":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_e

    .line 826
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 827
    .local v13, "schemeStrings":[Ljava/lang/String;
    move-object v6, v13

    .local v6, "arr$":[Ljava/lang/String;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_d

    aget-object v17, v6, v8

    .line 829
    .local v17, "str":Ljava/lang/String;
    const-string v18, "\t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 830
    .local v10, "parts":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_c

    .line 832
    new-instance v12, Lcom/millennialmedia/android/HandShake$Scheme;

    const/16 v18, 0x0

    aget-object v18, v10, v18

    const/16 v19, 0x1

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v12, v0, v1, v2}, Lcom/millennialmedia/android/HandShake$Scheme;-><init>(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;I)V

    .line 833
    .local v12, "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    .end local v12    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 836
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v17    # "str":Ljava/lang/String;
    :cond_d
    const/16 v16, 0x1

    .line 839
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v13    # "schemeStrings":[Ljava/lang/String;
    .end local v14    # "schemesStr":Ljava/lang/String;
    :cond_e
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    const-string v18, "handshake_cachedvideos5.0"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 843
    const-string v18, "handshake_cachedvideos5.0"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 844
    .local v11, "savedVideos":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_f

    .line 846
    new-instance v18, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct/range {v18 .. v18}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    const-class v19, [Lcom/millennialmedia/android/DTOCachedVideo;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/millennialmedia/android/DTOCachedVideo;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    .line 851
    .end local v11    # "savedVideos":Ljava/lang/String;
    :cond_f
    const-string v18, "handshake_lasthandshake"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 853
    const-string v18, "handshake_lasthandshake"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v15, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    .line 854
    const/16 v16, 0x1

    .line 857
    :cond_10
    if-eqz v16, :cond_12

    .line 859
    const-string v18, "Handshake successfully loaded from shared preferences."

    invoke-static/range {v18 .. v18}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_11

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    move-wide/from16 v20, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    sub-long v20, v20, v22

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 864
    :cond_11
    const-string v18, "handshake_novideostocacheurl"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/HandShake;->noVideosToCacheURL:Ljava/lang/String;

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->noVideosToCacheURL:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/PreCacheWorker;->preCacheVideos([Lcom/millennialmedia/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V

    :cond_12
    move/from16 v18, v16

    .line 868
    goto/16 :goto_0

    .line 839
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 586
    const-string v2, "JSON String: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    if-eqz p1, :cond_0

    .line 591
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 592
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 593
    const-string v2, "mmishake"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    const-string v2, "mmishake"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 601
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 596
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 601
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestHandshake(Z)V
    .locals 1
    .param p1, "isInitialize"    # Z

    .prologue
    .line 259
    new-instance v0, Lcom/millennialmedia/android/HandShake$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/HandShake$1;-><init>(Lcom/millennialmedia/android/HandShake;Z)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method private saveHandShake(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 875
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 876
    .local v6, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 879
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "handshake_deferredviewtimeout"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 880
    const-string v8, "handshake_kill"

    iget-boolean v9, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 881
    const-string v8, "handshake_baseUrl"

    sget-object v9, Lcom/millennialmedia/android/HandShake;->adUrl:Ljava/lang/String;

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 882
    const-string v8, "handshake_callback"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 883
    const-string v8, "handshake_hardwareAccelerationEnabled"

    iget-boolean v9, p0, Lcom/millennialmedia/android/HandShake;->hardwareAccelerationEnabled:Z

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 884
    const-string v8, "handshake_startSessionURL"

    iget-object v9, p0, Lcom/millennialmedia/android/HandShake;->startSessionURL:Ljava/lang/String;

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 885
    const-string v8, "handshake_endSessionURL"

    iget-object v9, p0, Lcom/millennialmedia/android/HandShake;->endSessionURL:Ljava/lang/String;

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 886
    const-string v8, "handshake_creativecaetimeout"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 887
    const-string v8, "handshake_mmjs"

    iget-object v9, p0, Lcom/millennialmedia/android/HandShake;->mmjsUrl:Ljava/lang/String;

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 890
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 892
    .local v0, "adType":Ljava/lang/String;
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 893
    .local v1, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "adType":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 897
    .end local v1    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_0
    monitor-enter p0

    .line 899
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 902
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 903
    .local v5, "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    if-lez v3, :cond_1

    .line 904
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 907
    .end local v5    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_2
    const-string v8, "handshake_schemes"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 908
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    if-eqz v8, :cond_3

    .line 910
    const-string v8, "handshake_cachedvideos5.0"

    new-instance v9, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {v9}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    iget-object v10, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    invoke-virtual {v9, v10}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 911
    :cond_3
    const-string v8, "handshake_novideostocacheurl"

    iget-object v9, p0, Lcom/millennialmedia/android/HandShake;->noVideosToCacheURL:Ljava/lang/String;

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 913
    const-string v8, "handshake_lasthandshake"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 915
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 916
    return-void

    .line 908
    .end local v3    # "i":I
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method private sentFirstLaunch(Landroid/content/Context;)V
    .locals 4
    .param p1, "tempContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 377
    if-eqz p1, :cond_0

    .line 379
    const-string v2, "MillennialMediaSettings"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 380
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 381
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "firstlaunchHandshake"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method static setAdUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getAd.php5?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/HandShake;->adUrl:Ljava/lang/String;

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getAd.php5?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/HandShake;->adUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method static declared-synchronized setHandShakeURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 122
    const-class v1, Lcom/millennialmedia/android/HandShake;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "http://"

    const-string v2, "https://"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?apid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/HandShake;->handShakeURL:Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/HandShake;->forceRefresh:Z

    .line 132
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_1
    monitor-exit v1

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-class v1, Lcom/millennialmedia/android/HandShake;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "No apid set for the handshake."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/4 v0, 0x0

    .line 117
    :goto_0
    monitor-exit v1

    return-object v0

    .line 108
    :cond_0
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    if-nez v0, :cond_2

    .line 110
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    .line 117
    :cond_1
    :goto_1
    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    iget-wide v4, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    sub-long/2addr v2, v4

    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    iget-wide v4, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 114
    const-string v0, "Handshake expired, requesting new handshake from the server."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized canDisplayCachedAd(Ljava/lang/String;J)Z
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;
    .param p2, "cachedTime"    # J

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 167
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p2, p3}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->canDisplayCachedAd(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 169
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 148
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 152
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method endSession()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->endSessionURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->endSessionURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$HttpUtils;->executeUrl(Ljava/lang/String;)V

    .line 932
    :cond_0
    return-void
.end method

.method declared-synchronized getSchemesJSONArray(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 427
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 429
    iget-object v4, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 431
    .local v2, "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    invoke-virtual {v2, p1}, Lcom/millennialmedia/android/HandShake$Scheme;->checkAvailability(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 436
    .local v3, "schemeObject":Lorg/json/JSONObject;
    const-string v4, "scheme"

    iget-object v5, v2, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    const-string v4, "schemeid"

    iget v5, v2, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 438
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 440
    .end local v3    # "schemeObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 446
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 426
    .end local v0    # "array":Lorg/json/JSONArray;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized getSchemesList(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemesList:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 404
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 409
    .local v1, "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/HandShake$Scheme;->checkAvailability(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 402
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 414
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    .restart local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    iget v3, v1, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 417
    .end local v1    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 418
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemesList:Ljava/lang/String;

    .line 421
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemesList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method declared-synchronized isAdTypeDownloading(Ljava/lang/String;)Z
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 192
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 193
    iget-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized lockAdTypeDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 202
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    .line 201
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method sendInitRequest()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/HandShake;->requestHandshake(Z)V

    .line 364
    return-void
.end method

.method setMMdid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newMMdid"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/android/HandShake;->setMMdid(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 218
    return-void
.end method

.method declared-synchronized setMMdid(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newMMdid"    # Ljava/lang/String;
    .param p3, "persist"    # Z

    .prologue
    .line 222
    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NULL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    .line 227
    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK;->setMMdid(Ljava/lang/String;)V

    .line 229
    if-eqz p3, :cond_1

    .line 231
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 232
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "handshake_mmdid"

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    monitor-exit p0

    return-void

    .line 225
    :cond_2
    :try_start_1
    iput-object p2, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method startSession()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->startSessionURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->startSessionURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$HttpUtils;->executeUrl(Ljava/lang/String;)V

    .line 924
    :cond_0
    return-void
.end method

.method declared-synchronized unlockAdTypeDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 211
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit p0

    return-void

    .line 210
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 183
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 182
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
