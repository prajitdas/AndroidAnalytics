.class final Lcom/millennialmedia/android/AdCache$3;
.super Ljava/lang/Object;
.source "AdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdCache;->cleanCache(Landroid/content/Context;)V
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
    .line 427
    iput-object p1, p0, Lcom/millennialmedia/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 431
    const-string v0, "AdCache"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->cleanUpExpiredAds(Landroid/content/Context;)V

    .line 433
    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->cleanupCache(Landroid/content/Context;)V

    .line 434
    return-void
.end method
