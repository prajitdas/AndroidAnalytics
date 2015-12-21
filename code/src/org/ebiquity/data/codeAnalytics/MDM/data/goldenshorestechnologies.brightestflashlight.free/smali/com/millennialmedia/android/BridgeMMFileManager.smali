.class Lcom/millennialmedia/android/BridgeMMFileManager;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMFileManager.java"


# instance fields
.field private root:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 24
    return-void
.end method

.method private hasCreativeDirectory()Z
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 29
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 31
    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->root:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 32
    const/4 v1, 0x1

    .line 34
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanupCache(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 284
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 285
    .local v0, "clear":Z
    const-wide/32 v3, 0xf731400

    .line 287
    .local v3, "timeout":J
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMFileManager;->hasCreativeDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    const-string v5, "clear"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    const-string v5, "clear"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 291
    :cond_0
    if-eqz v0, :cond_3

    .line 293
    const-wide/16 v3, 0x0

    .line 306
    :cond_1
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->root:Ljava/io/File;

    invoke-static {v5, v3, v4}, Lcom/millennialmedia/android/AdCache;->cleanupDirectory(Ljava/io/File;J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_2
    :goto_1
    const/4 v5, 0x0

    return-object v5

    .line 297
    :cond_3
    iget-object v5, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "context":Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 298
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 300
    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    .line 301
    .local v2, "handShake":Lcom/millennialmedia/android/HandShake;
    iget-wide v3, v2, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    goto :goto_0

    .line 308
    .end local v2    # "handShake":Lcom/millennialmedia/android/HandShake;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public downloadFile(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 185
    .local v0, "context":Landroid/content/Context;
    const-string v3, "url"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 189
    const-string v3, "path"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const-string v3, "path"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v2, v1, v0}, Lcom/millennialmedia/android/AdCache;->downloadComponentToCache(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 199
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 192
    :cond_0
    const-string v3, "url"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getDirectoryContents(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMFileManager;->hasCreativeDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 65
    const-string v8, "path"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 66
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->root:Ljava/io/File;

    const-string v8, "path"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v1, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v1, "dir":Ljava/io/File;
    :goto_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 70
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v2, v0, v4

    .line 72
    .local v2, "file":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "len$":I
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->root:Ljava/io/File;

    .restart local v1    # "dir":Ljava/io/File;
    goto :goto_0

    .line 74
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "files":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "len$":I
    :cond_1
    new-instance v7, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v7}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 75
    .local v7, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v8, 0x1

    iput v8, v7, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 76
    iput-object v5, v7, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 79
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "len$":I
    .end local v7    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_2
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getFileContents(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMFileManager;->hasCreativeDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "fileStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 95
    .local v0, "contents":[B
    const-string v6, "path"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->root:Ljava/io/File;

    const-string v6, "path"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v2, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .local v4, "fileStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 102
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    if-eqz v4, :cond_0

    .line 113
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 120
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 122
    new-instance v5, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v5}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 123
    .local v5, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v6, 0x1

    iput v6, v5, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 124
    iput-object v0, v5, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B

    .line 129
    .end local v0    # "contents":[B
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .end local v5    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_1
    return-object v5

    .line 115
    .restart local v0    # "contents":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 118
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 104
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 112
    if-eqz v3, :cond_1

    .line 113
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 115
    :catch_2
    move-exception v6

    goto :goto_0

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 112
    :goto_3
    if-eqz v3, :cond_2

    .line 113
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 117
    :cond_2
    :goto_4
    throw v6

    .line 129
    .end local v0    # "contents":[B
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 115
    .restart local v0    # "contents":[B
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 110
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 104
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public getFreeDiskSpace(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMFileManager;->hasCreativeDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 47
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 48
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->root:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "stat":Landroid/os/StatFs;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 52
    .end local v0    # "response":Lcom/millennialmedia/android/MMJSResponse;
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeType(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMFileManager;->hasCreativeDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const-string v4, "path"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    .local v2, "path":Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "components":[Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "mime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 268
    new-instance v3, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 269
    .local v3, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v4, 0x1

    iput v4, v3, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 270
    iput-object v1, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 274
    .end local v0    # "components":[Ljava/lang/String;
    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public moveFile(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMFileManager;->hasCreativeDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    :try_start_0
    const-string v4, "fromPath"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "fromPath":Ljava/lang/String;
    const-string v4, "toPath"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 215
    .local v3, "toPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 217
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->root:Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v0, "fromFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->root:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .local v2, "toFile":Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    const-string v4, "File moved successfully"

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 227
    .end local v0    # "fromFile":Ljava/io/File;
    .end local v1    # "fromPath":Ljava/lang/String;
    .end local v2    # "toFile":Ljava/io/File;
    .end local v3    # "toPath":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 223
    :catch_0
    move-exception v4

    .line 227
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public removeAtPath(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMFileManager;->hasCreativeDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    :try_start_0
    const-string v2, "path"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 243
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->root:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const-string v2, "File removed successfully"

    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 252
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 248
    :catch_0
    move-exception v2

    .line 252
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public writeData(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMFileManager;->hasCreativeDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "fileStream":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 143
    .local v0, "contents":[B
    const/4 v4, 0x0

    .line 145
    .local v4, "success":Z
    const-string v5, "path"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "data"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/millennialmedia/android/BridgeMMFileManager;->root:Ljava/io/File;

    const-string v5, "path"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v1, "file":Ljava/io/File;
    const-string v5, "data"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/millennialmedia/android/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 151
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .local v3, "fileStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    const/4 v4, 0x1

    .line 162
    if-eqz v3, :cond_0

    .line 163
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 170
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    if-eqz v4, :cond_3

    .line 171
    const-string v5, "File written successfully"

    invoke-static {v5}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 174
    .end local v0    # "contents":[B
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .end local v4    # "success":Z
    :goto_1
    return-object v5

    .line 165
    .restart local v0    # "contents":[B
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v4    # "success":Z
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 168
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 155
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 162
    :goto_2
    if-eqz v2, :cond_1

    .line 163
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 165
    :catch_2
    move-exception v5

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v5

    .line 162
    :goto_3
    if-eqz v2, :cond_2

    .line 163
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 167
    :cond_2
    :goto_4
    throw v5

    .line 174
    .end local v0    # "contents":[B
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .end local v4    # "success":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 165
    .restart local v0    # "contents":[B
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v4    # "success":Z
    :catch_3
    move-exception v6

    goto :goto_4

    .line 160
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 155
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
