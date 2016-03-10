.class Lcom/millennialmedia/android/VideoAd$2;
.super Ljava/lang/Object;
.source "VideoAd.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoAd;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/millennialmedia/android/VideoAd$2;->this$0:Lcom/millennialmedia/android/VideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd$2;->this$0:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 412
    const/4 v1, 0x0

    .line 413
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd$2;->this$0:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
