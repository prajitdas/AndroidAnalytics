.class final Lcom/millennialmedia/android/AdCache$5;
.super Lcom/millennialmedia/android/AdCache$Iterator;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdCache;->resetCache(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/millennialmedia/android/AdCache$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    return-void
.end method


# virtual methods
.method callback(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 5
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    const/4 v4, 0x1

    .line 539
    const-string v0, "Deleting ad %s."

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$5;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/CachedAd;->delete(Landroid/content/Context;)V

    .line 541
    return v4
.end method
