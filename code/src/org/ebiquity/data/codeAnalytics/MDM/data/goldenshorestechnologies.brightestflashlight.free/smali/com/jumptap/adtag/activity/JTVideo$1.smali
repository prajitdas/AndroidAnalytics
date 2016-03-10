.class final Lcom/jumptap/adtag/activity/JTVideo$1;
.super Ljava/lang/Object;
.source "JTVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jumptap/adtag/activity/JTVideo;->runSaveVideoThread(Lcom/jumptap/adtag/db/DBManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dbManager:Lcom/jumptap/adtag/db/DBManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/jumptap/adtag/db/DBManager;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/jumptap/adtag/activity/JTVideo$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/jumptap/adtag/activity/JTVideo$1;->val$dbManager:Lcom/jumptap/adtag/db/DBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 221
    :try_start_0
    # getter for: Lcom/jumptap/adtag/activity/JTVideo;->isDownLoading:Z
    invoke-static {}, Lcom/jumptap/adtag/activity/JTVideo;->access$000()Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    const/4 v3, 0x1

    # setter for: Lcom/jumptap/adtag/activity/JTVideo;->isDownLoading:Z
    invoke-static {v3}, Lcom/jumptap/adtag/activity/JTVideo;->access$002(Z)Z

    .line 224
    # getter for: Lcom/jumptap/adtag/activity/JTVideo;->videoUrl:Ljava/lang/String;
    invoke-static {}, Lcom/jumptap/adtag/activity/JTVideo;->access$100()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jumptap/adtag/activity/JTVideo$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/jumptap/adtag/activity/JTVideo;->saveVideoToFile(Ljava/lang/String;Landroid/content/Context;)V

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "date":Ljava/lang/String;
    new-instance v2, Lcom/jumptap/adtag/media/VideoCacheItem;

    # getter for: Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;
    invoke-static {}, Lcom/jumptap/adtag/activity/JTVideo;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/jumptap/adtag/media/VideoCacheItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v2, "item":Lcom/jumptap/adtag/media/VideoCacheItem;
    iget-object v3, p0, Lcom/jumptap/adtag/activity/JTVideo$1;->val$dbManager:Lcom/jumptap/adtag/db/DBManager;

    invoke-virtual {v3, v2}, Lcom/jumptap/adtag/db/DBManager;->insertVideoCacheItem(Lcom/jumptap/adtag/media/VideoCacheItem;)J

    .line 232
    const/4 v3, 0x0

    # setter for: Lcom/jumptap/adtag/activity/JTVideo;->isDownLoading:Z
    invoke-static {v3}, Lcom/jumptap/adtag/activity/JTVideo;->access$002(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "item":Lcom/jumptap/adtag/media/VideoCacheItem;
    :cond_0
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "JtAd"

    const-string v4, "cannot save video"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
