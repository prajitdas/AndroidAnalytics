.class Lcom/millennialmedia/android/BridgeMMCachedVideo;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMCachedVideo.java"

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# instance fields
.field private success:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 21
    return-void
.end method

.method private getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;
    .locals 3

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 295
    .local v1, "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/millennialmedia/android/MMActivity;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMActivity;

    .line 298
    .local v0, "mmActivity":Lcom/millennialmedia/android/MMActivity;
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/millennialmedia/android/VideoPlayerActivity;

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v1

    .end local v1    # "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    check-cast v1, Lcom/millennialmedia/android/VideoPlayerActivity;

    .line 303
    .end local v0    # "mmActivity":Lcom/millennialmedia/android/MMActivity;
    .restart local v1    # "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public availableCachedVideos(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 50
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 52
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 54
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 55
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x2

    new-instance v4, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v1, v3, v4}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 69
    new-instance v2, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v2}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 70
    .local v2, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v3, 0x1

    iput v3, v2, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 71
    iput-object v0, v2, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 74
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized cacheVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 14
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
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 121
    .local v0, "context":Landroid/content/Context;
    const-string v10, "url"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 123
    .local v7, "url":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 128
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :try_start_1
    new-instance v10, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v10}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    invoke-virtual {v10, v7}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 132
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v5, :cond_1

    .line 134
    const-string v10, "HTTP response is null"

    invoke-static {v10}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 137
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 145
    .local v3, "httpEntity":Lorg/apache/http/HttpEntity;
    if-nez v3, :cond_2

    .line 147
    :try_start_3
    const-string v10, "Null HTTP entity"

    invoke-static {v10}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 120
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v7    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 139
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 153
    const-string v10, "Millennial ad return failed. Zero content length returned."

    invoke-static {v10}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    .line 158
    .local v4, "httpHeader":Lorg/apache/http/Header;
    if-eqz v4, :cond_0

    .line 160
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 162
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "application/json"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 164
    const/4 v8, 0x0

    .line 169
    .local v8, "videoAd":Lcom/millennialmedia/android/VideoAd;
    :try_start_5
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "json":Ljava/lang/String;
    new-instance v8, Lcom/millennialmedia/android/VideoAd;

    .end local v8    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    invoke-direct {v8, v6}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    .restart local v8    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    if-eqz v8, :cond_0

    :try_start_6
    invoke-virtual {v8}, Lcom/millennialmedia/android/VideoAd;->isValid()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 187
    const/4 v10, 0x3

    iput v10, v8, Lcom/millennialmedia/android/VideoAd;->downloadPriority:I

    .line 188
    const/4 v10, 0x0

    invoke-static {v0, v10, v8, p0}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    .line 192
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 193
    iget-boolean v10, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->success:Z

    if-eqz v10, :cond_4

    .line 194
    const-string v10, "Cached video(%s)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v9

    .line 203
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto/16 :goto_0

    .line 172
    .end local v6    # "json":Ljava/lang/String;
    .end local v8    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :catch_1
    move-exception v2

    .line 174
    .local v2, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 175
    const-string v10, "Millennial ad return failed. Invalid response data."

    invoke-static {v10}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    .end local v2    # "e1":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 180
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    const-string v10, "Millennial ad return failed. Invalid response data."

    invoke-static {v10}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v6    # "json":Ljava/lang/String;
    .restart local v8    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 196
    :catch_3
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_9
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

    .line 199
    const-string v10, "Caching interrupted: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 203
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v9

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v9

    .line 208
    :cond_5
    const-string v9, "Unable to start download for Cached video(%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v9

    goto/16 :goto_0
.end method

.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;
    .param p2, "success"    # Z

    .prologue
    .line 104
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 107
    .local v0, "context":Landroid/content/Context;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    .line 109
    :cond_0
    iput-boolean p2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->success:Z

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 111
    monitor-exit p0

    .line 112
    return-void

    .line 111
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public downloadStart(Lcom/millennialmedia/android/CachedAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    .line 309
    return-void
.end method

.method public endVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
    .line 239
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 240
    .local v0, "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 242
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 252
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pauseVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
    .line 257
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 258
    .local v0, "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 260
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$4;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$4;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playCachedVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 83
    iget-object v6, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 84
    .local v3, "context":Landroid/content/Context;
    const-string v6, "videoId"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 86
    .local v4, "videoId":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 88
    invoke-static {v3, v4}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 89
    .local v0, "ad":Lcom/millennialmedia/android/VideoAd;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v5, v7}, Lcom/millennialmedia/android/VideoAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    const-string v5, "PROPERTY_EXPANDING"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v1

    .line 92
    .local v1, "adImplId":J
    invoke-virtual {v0, v3, v1, v2}, Lcom/millennialmedia/android/VideoAd;->show(Landroid/content/Context;J)V

    .line 93
    const-string v5, "Playing Video(%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 96
    .end local v0    # "ad":Lcom/millennialmedia/android/VideoAd;
    .end local v1    # "adImplId":J
    :cond_0
    return-object v5
.end method

.method public playVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
    .line 221
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 222
    .local v0, "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 224
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$2;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$2;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 234
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public restartVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
    .line 275
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 276
    .local v0, "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 288
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public videoIdExists(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 32
    .local v1, "context":Landroid/content/Context;
    const-string v3, "videoId"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    .local v2, "videoId":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 36
    invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 37
    .local v0, "ad":Lcom/millennialmedia/android/VideoAd;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 40
    .end local v0    # "ad":Lcom/millennialmedia/android/VideoAd;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
