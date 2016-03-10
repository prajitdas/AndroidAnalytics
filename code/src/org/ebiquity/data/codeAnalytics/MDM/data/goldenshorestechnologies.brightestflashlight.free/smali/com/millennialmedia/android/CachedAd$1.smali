.class Lcom/millennialmedia/android/CachedAd$1;
.super Ljava/lang/Object;
.source "CachedAd.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/CachedAd;->delete(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/CachedAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/CachedAd;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/millennialmedia/android/CachedAd$1;->this$0:Lcom/millennialmedia/android/CachedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 160
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/CachedAd$1;->this$0:Lcom/millennialmedia/android/CachedAd;

    # getter for: Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/android/CachedAd;->access$000(Lcom/millennialmedia/android/CachedAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
