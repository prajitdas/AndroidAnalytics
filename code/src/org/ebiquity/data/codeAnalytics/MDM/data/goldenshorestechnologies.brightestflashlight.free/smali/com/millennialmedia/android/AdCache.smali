.class final Lcom/millennialmedia/android/AdCache;
.super Ljava/lang/Object;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/AdCache$Iterator;,
        Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;
    }
.end annotation


# static fields
.field private static final CACHED_AD_FILE:Ljava/lang/String; = "ad.dat"

.field private static final CACHE_INCOMPLETE_PREFIX:Ljava/lang/String; = "incompleteDownload_"

.field private static final CACHE_PREFIX:Ljava/lang/String; = "nextCachedAd_"

.field private static final CACHE_PREFIX_APID:Ljava/lang/String; = "nextCachedAd_apids"

.field private static final LOCK_FILE:Ljava/lang/String; = "ad.lock"

.field static final PRIORITY_FETCH:I = 0x3

.field static final PRIORITY_PRECACHE:I = 0x1

.field static final PRIORITY_REFRESH:I = 0x2

.field static final PRIVATE_CACHE_DIR:Ljava/lang/String; = ".mmsyscache"

.field private static apidListSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedVideoList:Ljava/lang/String;

.field private static cachedVideoListLoaded:Z

.field private static cachedVideoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static incompleteDownloadHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static incompleteDownloadHashMapLoaded:Z

.field static isExternalEnabled:Z

.field private static nextCachedAdHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static nextCachedAdHashMapLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/AdCache;->isExternalEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static declared-synchronized cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acid"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    if-eqz p1, :cond_2

    .line 76
    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    .line 78
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    .line 80
    :cond_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_2
    monitor-exit v1

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized cachedVideoWasRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acid"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    if-eqz p1, :cond_1

    .line 95
    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    .line 97
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    monitor-exit v1

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static cleanCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    new-instance v0, Lcom/millennialmedia/android/AdCache$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdCache$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 436
    return-void
.end method

.method static cleanUpExpiredAds(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 441
    const/4 v0, 0x1

    new-instance v1, Lcom/millennialmedia/android/AdCache$4;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/AdCache$4;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 465
    return-void
.end method

.method static cleanupCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 469
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->cleanupInternalCache(Landroid/content/Context;)V

    .line 470
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->cleanupExternalCache(Landroid/content/Context;)V

    .line 474
    :cond_0
    return-void
.end method

.method static cleanupDirectory(Ljava/io/File;J)V
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "timeout"    # J

    .prologue
    .line 503
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 505
    .local v1, "entries":[Ljava/io/File;
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 507
    .local v2, "entry":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v5, v5, p1

    if-lez v5, :cond_0

    .line 510
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 505
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 512
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 516
    :try_start_0
    invoke-static {v2, p1, p2}, Lcom/millennialmedia/android/AdCache;->cleanupDirectory(Ljava/io/File;J)V

    .line 517
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    .line 518
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 520
    :catch_0
    move-exception v5

    goto :goto_1

    .line 525
    .end local v2    # "entry":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static cleanupExternalCache(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 490
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 491
    .local v0, "externalCacheDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 496
    .local v1, "handShake":Lcom/millennialmedia/android/HandShake;
    iget-wide v2, v1, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/android/AdCache;->cleanupDirectory(Ljava/io/File;J)V

    goto :goto_0
.end method

.method private static cleanupInternalCache(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 479
    .local v1, "internalCacheDir":Ljava/io/File;
    if-nez v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    .line 484
    .local v0, "handShake":Lcom/millennialmedia/android/HandShake;
    iget-wide v2, v0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->cleanupDirectory(Ljava/io/File;J)V

    goto :goto_0
.end method

.method static deleteFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 933
    .local v0, "deleteFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 937
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z
    .locals 19
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 717
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 719
    const-string v15, "No Url ..."

    invoke-static {v15}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 720
    const/4 v15, 0x0

    .line 804
    :cond_0
    :goto_0
    return v15

    .line 722
    :cond_1
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 724
    .local v9, "file":Ljava/io/File;
    const-string v15, "Downloading Component: %s from %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const/16 v17, 0x1

    aput-object p0, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_2

    .line 728
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " already exists, skipping..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 729
    const/4 v15, 0x1

    goto :goto_0

    .line 732
    :cond_2
    const/4 v10, 0x0

    .line 733
    .local v10, "inStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 734
    .local v12, "out":Ljava/io/FileOutputStream;
    const-wide/16 v5, -0x1

    .line 737
    .local v5, "contentLength":J
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 738
    .local v4, "connectURL":Ljava/net/URL;
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 739
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 740
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v15, 0x7530

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 741
    const-string v15, "GET"

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 743
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 744
    const-string v15, "Content-Length"

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 745
    .local v14, "temp":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 746
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 747
    :cond_3
    if-nez v10, :cond_6

    .line 749
    const-string v15, "Connection stream is null downloading %s."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    const/4 v15, 0x0

    .line 789
    if-eqz v10, :cond_4

    .line 790
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 791
    :cond_4
    if-eqz v12, :cond_0

    .line 792
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 794
    :catch_0
    move-exception v8

    .line 796
    .local v8, "ex":Ljava/io/IOException;
    const-string v15, "Content caching error: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    if-eqz v9, :cond_5

    .line 798
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 799
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 754
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_6
    :try_start_2
    invoke-static/range {p3 .. p3}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-static {v0, v15}, Lcom/millennialmedia/android/AdCache;->isInternalDir(Landroid/content/Context;Ljava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 756
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v12

    .line 760
    :goto_1
    const/16 v15, 0x1000

    new-array v2, v15, [B

    .line 762
    .local v2, "buf":[B
    :goto_2
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "numread":I
    if-lez v11, :cond_b

    .line 763
    const/4 v15, 0x0

    invoke-virtual {v12, v2, v15, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 781
    .end local v2    # "buf":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v11    # "numread":I
    .end local v14    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 783
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v15, "Exception downloading component %s: %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 789
    if-eqz v10, :cond_7

    .line 790
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 791
    :cond_7
    if-eqz v12, :cond_8

    .line 792
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 802
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_3
    if-eqz v9, :cond_9

    .line 803
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 804
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 759
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v14    # "temp":Ljava/lang/String;
    :cond_a
    :try_start_5
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .local v13, "out":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 765
    .restart local v2    # "buf":[B
    .restart local v11    # "numread":I
    :cond_b
    if-eqz v9, :cond_10

    .line 770
    :try_start_6
    invoke-virtual {v9}, Ljava/io/File;->length()J
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v15

    cmp-long v15, v15, v5

    if-eqz v15, :cond_c

    const-wide/16 v15, -0x1

    cmp-long v15, v5, v15

    if-nez v15, :cond_f

    .line 771
    :cond_c
    const/4 v15, 0x1

    .line 789
    if-eqz v10, :cond_d

    .line 790
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 791
    :cond_d
    if-eqz v12, :cond_0

    .line 792
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 794
    :catch_2
    move-exception v8

    .line 796
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v15, "Content caching error: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    if-eqz v9, :cond_e

    .line 798
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 799
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 773
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_f
    :try_start_8
    const-string v15, "Content-Length does not match actual length."

    invoke-static {v15}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 789
    :cond_10
    :goto_4
    if-eqz v10, :cond_11

    .line 790
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 791
    :cond_11
    if-eqz v12, :cond_8

    .line 792
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 794
    :catch_3
    move-exception v8

    .line 796
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v15, "Content caching error: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    if-eqz v9, :cond_12

    .line 798
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 799
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 775
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 777
    .local v7, "e":Ljava/lang/SecurityException;
    :try_start_a
    const-string v15, "Exception downloading component %s: %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 787
    .end local v2    # "buf":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v7    # "e":Ljava/lang/SecurityException;
    .end local v11    # "numread":I
    .end local v14    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v15

    .line 789
    if-eqz v10, :cond_13

    .line 790
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 791
    :cond_13
    if-eqz v12, :cond_14

    .line 792
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 799
    :cond_14
    throw v15

    .line 794
    .local v7, "e":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    .line 796
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v15, "Content caching error: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    if-eqz v9, :cond_15

    .line 798
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 799
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 794
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 796
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v15, "Content caching error: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    if-eqz v9, :cond_16

    .line 798
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 799
    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method static downloadComponentToCache(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 704
    invoke-static {p2}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/millennialmedia/android/AdCache;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 591
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 636
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ad.dat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 637
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v7

    .line 638
    .local v7, "isExternalStateMounted":Z
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 639
    .local v2, "cacheDir":Ljava/io/File;
    const/4 v0, 0x0

    .line 643
    .local v0, "adFile":Ljava/io/File;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 645
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v0    # "adFile":Ljava/io/File;
    .local v1, "adFile":Ljava/io/File;
    move-object v0, v1

    .line 647
    .end local v1    # "adFile":Ljava/io/File;
    .restart local v0    # "adFile":Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 650
    :cond_1
    if-nez v7, :cond_2

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 654
    .local v5, "internalCacheDir":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 656
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ".mmsyscache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 657
    .local v6, "internalFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 670
    .end local v5    # "internalCacheDir":Ljava/io/File;
    .end local v6    # "internalFile":Ljava/io/File;
    :goto_0
    return-object v6

    .line 665
    :catch_0
    move-exception v3

    .line 667
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

    .line 668
    const/4 v6, 0x0

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v6, v0

    .line 670
    goto :goto_0
.end method

.method static declared-synchronized getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const-class v5, Lcom/millennialmedia/android/AdCache;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 114
    sget-boolean v4, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v4, :cond_0

    .line 116
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 118
    .local v1, "hashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x2

    new-instance v6, Lcom/millennialmedia/android/AdCache$1;

    invoke-direct {v6, p0, v1}, Lcom/millennialmedia/android/AdCache$1;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    invoke-static {p0, v4, v6}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 128
    sput-object v1, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    .line 129
    const/4 v4, 0x1

    sput-boolean v4, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    .line 132
    .end local v1    # "hashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "acid":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v0, Ljava/lang/String;

    .end local v0    # "acid":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 140
    .restart local v0    # "acid":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    check-cast v0, Ljava/lang/String;

    .end local v0    # "acid":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;

    .line 145
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4
.end method

.method static getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 575
    .local v0, "dir":Ljava/io/File;
    const/4 v1, 0x0

    .line 576
    .local v1, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 578
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 580
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method private static getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "extCacheDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 602
    .local v1, "externalStorageDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 604
    new-instance v0, Ljava/io/File;

    .end local v0    # "extCacheDir":Ljava/io/File;
    const-string v2, ".mmsyscache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 605
    .restart local v0    # "extCacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 611
    :cond_0
    return-object v0
.end method

.method static declared-synchronized getIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 247
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 248
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadIncompleteDownloadHashMap(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 617
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    const/4 v0, 0x0

    .line 622
    :cond_0
    return-object v0
.end method

.method static declared-synchronized getNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 187
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 188
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAdHashMap(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hasDownloadFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 586
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isExternalStorageAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 949
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->isExternalEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isInternalDir(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 943
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 944
    .local v0, "internalDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "iterator"    # Lcom/millennialmedia/android/AdCache$Iterator;

    .prologue
    .line 341
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    .line 343
    .local v13, "cachedDir":Ljava/io/File;
    const/4 v8, 0x0

    .line 348
    .local v8, "objectInputStream":Ljava/io/ObjectInputStream;
    const/4 v9, 0x0

    .line 350
    .local v9, "ad":Lcom/millennialmedia/android/CachedAd;
    if-eqz v13, :cond_3

    .line 352
    new-instance v1, Lcom/millennialmedia/android/AdCache$2;

    invoke-direct {v1}, Lcom/millennialmedia/android/AdCache$2;-><init>()V

    invoke-virtual {v13, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v11

    .line 360
    .local v11, "adFiles":[Ljava/io/File;
    move-object v12, v11

    .local v12, "arr$":[Ljava/io/File;
    array-length v0, v12

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    move-object/from16 v17, v8

    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v17, "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    aget-object v10, v12, v15

    .line 364
    .local v10, "adFile":Ljava/io/File;
    if-eqz v10, :cond_0

    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 409
    :cond_0
    if-eqz v17, :cond_9

    .line 411
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 412
    const/4 v8, 0x0

    .line 360
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v17, v8

    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    move-object/from16 v8, v17

    .line 417
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 366
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_2
    if-nez p1, :cond_5

    .line 368
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 409
    if-eqz v17, :cond_a

    .line 411
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 412
    const/4 v8, 0x0

    .line 421
    .end local v10    # "adFile":Ljava/io/File;
    .end local v11    # "adFiles":[Ljava/io/File;
    .end local v12    # "arr$":[Ljava/io/File;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_3
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/millennialmedia/android/AdCache$Iterator;->done()V

    .line 422
    return-void

    .line 415
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "adFile":Ljava/io/File;
    .restart local v11    # "adFiles":[Ljava/io/File;
    .restart local v12    # "arr$":[Ljava/io/File;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    move-object/from16 v8, v17

    .line 417
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 409
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_4
    if-eqz v17, :cond_9

    .line 411
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 412
    const/4 v8, 0x0

    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 415
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v1

    move-object/from16 v8, v17

    .line 417
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 373
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_5
    :try_start_5
    new-instance v8, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 375
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 376
    .local v3, "type":I
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    .line 377
    .local v4, "expiration":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 378
    .local v5, "acid":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v6

    .line 379
    .local v6, "deferredViewStart":J
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 381
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 383
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 384
    const/4 v8, 0x0

    .line 409
    if-eqz v8, :cond_3

    .line 411
    :try_start_7
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 412
    const/4 v8, 0x0

    goto :goto_2

    .line 391
    :cond_6
    :try_start_8
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/millennialmedia/android/CachedAd;

    move-object v9, v0

    .line 392
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Lcom/millennialmedia/android/CachedAd;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 394
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 395
    const/4 v8, 0x0

    .line 409
    if-eqz v8, :cond_3

    .line 411
    :try_start_9
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 412
    const/4 v8, 0x0

    goto :goto_2

    .line 409
    :cond_7
    if-eqz v8, :cond_1

    .line 411
    :try_start_a
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 412
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 400
    .end local v3    # "type":I
    .end local v4    # "expiration":Ljava/util/Date;
    .end local v5    # "acid":Ljava/lang/String;
    .end local v6    # "deferredViewStart":J
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v14

    move-object/from16 v8, v17

    .line 402
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v14, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_b
    const-string v1, "There was a problem reading the cached ad %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-static {v14}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 409
    if-eqz v8, :cond_1

    .line 411
    :try_start_c
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 412
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 407
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v1

    move-object/from16 v8, v17

    .line 409
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_4
    if-eqz v8, :cond_8

    .line 411
    :try_start_d
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 412
    const/4 v8, 0x0

    .line 417
    :cond_8
    :goto_5
    throw v1

    .line 415
    .restart local v3    # "type":I
    .restart local v4    # "expiration":Ljava/util/Date;
    .restart local v5    # "acid":Ljava/lang/String;
    .restart local v6    # "deferredViewStart":J
    :catch_4
    move-exception v1

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto/16 :goto_2

    :catch_6
    move-exception v1

    goto/16 :goto_1

    .end local v3    # "type":I
    .end local v4    # "expiration":Ljava/util/Date;
    .end local v5    # "acid":Ljava/lang/String;
    .end local v6    # "deferredViewStart":J
    .restart local v14    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    goto/16 :goto_1

    .end local v14    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v2

    goto :goto_5

    .line 407
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 400
    :catch_9
    move-exception v14

    goto :goto_3

    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_9
    move-object/from16 v8, v17

    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto/16 :goto_1

    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v10    # "adFile":Ljava/io/File;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_a
    move-object/from16 v8, v17

    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto/16 :goto_2
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 814
    if-eqz p1, :cond_0

    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    move-object v1, v10

    .line 860
    :cond_1
    :goto_0
    return-object v1

    .line 817
    :cond_2
    const/4 v2, 0x0

    .line 818
    .local v2, "cachedAdFile":Ljava/io/File;
    const/4 v8, 0x0

    .line 821
    .local v8, "objectInputStream":Ljava/io/ObjectInputStream;
    const/4 v1, 0x0

    .line 823
    .local v1, "ad":Lcom/millennialmedia/android/CachedAd;
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 824
    if-nez v2, :cond_3

    move-object v1, v10

    .line 825
    goto :goto_0

    .line 829
    :cond_3
    :try_start_0
    new-instance v9, Ljava/io/ObjectInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v9, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readInt()I

    .line 832
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    .line 833
    .local v6, "expiration":Ljava/util/Date;
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 834
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    .line 836
    .local v3, "deferredViewStart":J
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/millennialmedia/android/CachedAd;

    move-object v1, v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 852
    if-eqz v9, :cond_4

    .line 853
    :try_start_2
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v8, v9

    .line 857
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 855
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v10

    move-object v8, v9

    .line 858
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 838
    .end local v3    # "deferredViewStart":J
    .end local v6    # "expiration":Ljava/util/Date;
    :catch_1
    move-exception v7

    .line 840
    .local v7, "fe":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v10, "There was a problem loading up the cached ad %s. Ad is not on disk."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 852
    if-eqz v8, :cond_1

    .line 853
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 855
    :catch_2
    move-exception v10

    goto :goto_0

    .line 842
    .end local v7    # "fe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 844
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v10, "There was a problem loading up the cached ad %s."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 846
    invoke-static {v5}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 852
    if-eqz v8, :cond_1

    .line 853
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 855
    :catch_4
    move-exception v10

    goto :goto_0

    .line 850
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 852
    :goto_3
    if-eqz v8, :cond_5

    .line 853
    :try_start_7
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 857
    :cond_5
    :goto_4
    throw v10

    .line 855
    :catch_5
    move-exception v11

    goto :goto_4

    .line 850
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 842
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v5

    move-object v8, v9

    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 838
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v7

    move-object v8, v9

    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private static loadApidListSet(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p0, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 272
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    .line 273
    const-string v6, "nextCachedAd_apids"

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "apids":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 276
    sget-object v6, Lcom/millennialmedia/android/MMSDK;->COMMA:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "apidArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v6, v1

    if-lez v6, :cond_0

    .line 278
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 280
    .local v0, "apid":Ljava/lang/String;
    sget-object v6, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "apid":Ljava/lang/String;
    .end local v1    # "apidArray":[Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-void
.end method

.method static loadIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "nextIncompleteAd":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadIncompleteDownloadHashMap(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x5f

    .line 214
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 215
    .local v7, "settings":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v8, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    .line 218
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    if-nez v8, :cond_0

    .line 219
    invoke-static {v7}, Lcom/millennialmedia/android/AdCache;->loadApidListSet(Landroid/content/SharedPreferences;)V

    .line 221
    :cond_0
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    .local v1, "apid":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/android/MMAdImpl;->getAdTypes()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 225
    .local v0, "adType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "incompleteDownload_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "result":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 227
    sget-object v8, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "adType":Ljava/lang/String;
    .end local v1    # "apid":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    .line 231
    return-void
.end method

.method static loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "nextAd":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadNextCachedAdHashMap(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x5f

    .line 154
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 155
    .local v7, "settings":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v8, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    .line 157
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    if-nez v8, :cond_0

    .line 158
    invoke-static {v7}, Lcom/millennialmedia/android/AdCache;->loadApidListSet(Landroid/content/SharedPreferences;)V

    .line 160
    :cond_0
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    .local v1, "apid":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/android/MMAdImpl;->getAdTypes()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 164
    .local v0, "adType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nextCachedAd_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "result":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 166
    sget-object v8, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "adType":Ljava/lang/String;
    .end local v1    # "apid":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMapLoaded:Z

    .line 170
    return-void
.end method

.method static resetCache(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 533
    const/4 v2, 0x2

    new-instance v3, Lcom/millennialmedia/android/AdCache$5;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/AdCache$5;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v2, v3}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 546
    sput-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    .line 547
    sput-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;

    .line 548
    const/4 v2, 0x0

    sput-boolean v2, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    .line 550
    sget-object v2, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 552
    sget-object v2, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 553
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0, v1, v4}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 558
    sget-object v2, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 559
    .restart local v1    # "key":Ljava/lang/String;
    invoke-static {p0, v1, v4}, Lcom/millennialmedia/android/AdCache;->setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 561
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, "cachedAdFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 870
    .local v2, "lockFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 872
    .local v4, "objectOutputStream":Ljava/io/ObjectOutputStream;
    if-nez p1, :cond_1

    .line 927
    :cond_0
    :goto_0
    return v6

    .line 875
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/millennialmedia/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_0

    .line 879
    const-string v8, "Saving CachedAd %s to %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    aput-object v0, v9, v7

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ad.lock"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    .end local v2    # "lockFile":Ljava/io/File;
    .local v3, "lockFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_3

    .line 887
    const-string v7, "Could not save the cached ad %s. Ad was locked."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 911
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 912
    if-eqz v4, :cond_2

    .line 913
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_2
    :goto_1
    move-object v2, v3

    .line 917
    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto :goto_0

    .line 891
    .end local v2    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    :cond_3
    :try_start_3
    new-instance v5, Ljava/io/ObjectOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 893
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_4
    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getType()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 894
    iget-object v8, p1, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 895
    iget-object v8, p1, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 896
    iget-wide v8, p1, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    invoke-virtual {v5, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 898
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 911
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 912
    if-eqz v5, :cond_4

    .line 913
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 921
    :cond_4
    :goto_2
    invoke-virtual {p1, p0}, Lcom/millennialmedia/android/CachedAd;->saveAssets(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 923
    invoke-virtual {p1, p0}, Lcom/millennialmedia/android/CachedAd;->delete(Landroid/content/Context;)V

    move-object v4, v5

    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .line 924
    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto/16 :goto_0

    .line 900
    :catch_0
    move-exception v1

    .line 902
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v7, "There was a problem saving the cached ad %s."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 904
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 911
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 912
    if-eqz v4, :cond_0

    .line 913
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 915
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 909
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 911
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 912
    if-eqz v4, :cond_5

    .line 913
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 917
    :cond_5
    :goto_5
    throw v6

    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "lockFile":Ljava/io/File;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :cond_6
    move-object v4, v5

    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    move v6, v7

    .line 927
    goto/16 :goto_0

    .line 915
    :catch_2
    move-exception v7

    goto :goto_5

    .line 909
    .end local v2    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto :goto_4

    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "lockFile":Ljava/io/File;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto :goto_4

    .line 900
    .end local v2    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto :goto_3

    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "lockFile":Ljava/io/File;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto :goto_3

    .line 915
    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "lockFile":Ljava/io/File;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v8

    goto :goto_2

    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v7

    goto/16 :goto_1
.end method

.method private static saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 7
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 287
    const/16 v4, 0x5f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 288
    .local v3, "start":I
    if-ltz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 290
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "apid":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 293
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, "builder":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 299
    .local v1, "apidIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/millennialmedia/android/MMSDK;->COMMA:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 305
    .end local v1    # "apidIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    const-string v5, "nextCachedAd_apids"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_2

    const-string v4, ""

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v0    # "apid":Ljava/lang/String;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 305
    .restart local v0    # "apid":Ljava/lang/String;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static saveIncompleteDownloadHashMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 237
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 238
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incompleteDownload_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private static saveNextCachedAdHashMapValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 177
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextCachedAd_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method static setEnableExternalStorage(Z)V
    .locals 0
    .param p0, "on"    # Z

    .prologue
    .line 956
    sput-boolean p0, Lcom/millennialmedia/android/AdCache;->isExternalEnabled:Z

    .line 957
    return-void
.end method

.method static declared-synchronized setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 260
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 261
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadIncompleteDownloadHashMap(Landroid/content/Context;)V

    .line 262
    :cond_0
    if-eqz p1, :cond_2

    .line 264
    sget-object v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "id":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->saveIncompleteDownloadHashMap(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_2
    monitor-exit v1

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 200
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 201
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAdHashMap(Landroid/content/Context;)V

    .line 202
    :cond_0
    if-eqz p1, :cond_2

    .line 204
    sget-object v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "id":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->saveNextCachedAdHashMapValue(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_2
    monitor-exit v1

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/millennialmedia/android/CachedAd;
    .param p3, "listener"    # Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;

    .prologue
    .line 59
    invoke-static {}, Lcom/millennialmedia/android/AdCacheThreadPool;->sharedThreadPool()Lcom/millennialmedia/android/AdCacheThreadPool;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/millennialmedia/android/AdCacheThreadPool;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z

    move-result v0

    return v0
.end method
