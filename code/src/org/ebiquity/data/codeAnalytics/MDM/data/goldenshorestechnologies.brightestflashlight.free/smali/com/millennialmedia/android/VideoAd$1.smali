.class Lcom/millennialmedia/android/VideoAd$1;
.super Lcom/millennialmedia/android/AdCache$Iterator;
.source "VideoAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoAd;->handleSharedVideoFile(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasSharedVideoFile:Z

.field final synthetic this$0:Lcom/millennialmedia/android/VideoAd;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lcom/millennialmedia/android/VideoAd$1;->this$0:Lcom/millennialmedia/android/VideoAd;

    iput-object p2, p0, Lcom/millennialmedia/android/VideoAd$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd$1;->hasSharedVideoFile:Z

    return-void
.end method


# virtual methods
.method callback(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 3
    .param p1, "cachedAd"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    .line 361
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/millennialmedia/android/VideoAd;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 363
    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 364
    .local v0, "videoAd":Lcom/millennialmedia/android/VideoAd;
    # getter for: Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->access$000(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/VideoAd$1;->this$0:Lcom/millennialmedia/android/VideoAd;

    # getter for: Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;
    invoke-static {v2}, Lcom/millennialmedia/android/VideoAd;->access$000(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoAd$1;->hasSharedVideoFile:Z

    .line 369
    .end local v0    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_0
    invoke-super {p0, p1}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Lcom/millennialmedia/android/CachedAd;)Z

    move-result v1

    return v1
.end method

.method done()V
    .locals 2

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoAd$1;->hasSharedVideoFile:Z

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd$1;->this$0:Lcom/millennialmedia/android/VideoAd;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/millennialmedia/android/VideoAd;->deleteVideoFile(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoAd;->access$100(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)V

    .line 379
    :cond_0
    invoke-super {p0}, Lcom/millennialmedia/android/AdCache$Iterator;->done()V

    .line 380
    return-void
.end method
