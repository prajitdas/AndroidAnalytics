.class Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;
.super Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;
.source "MMAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMAdImplRedirectionListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdImpl;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 2

    .prologue
    .line 331
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    invoke-direct {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;-><init>()V

    .line 332
    iget-wide v0, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->creatorAdImplInternalId:J

    .line 333
    return-void
.end method


# virtual methods
.method public getAdProperties()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getAdProperties()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public isActivityStartable(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 345
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 346
    .local v1, "c":Landroid/content/Context;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 348
    check-cast v0, Landroid/app/Activity;

    .line 349
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const/4 v2, 0x0

    .line 354
    .end local v0    # "a":Landroid/app/Activity;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public startingActivity(Landroid/net/Uri;)V
    .locals 2
    .param p1, "destinationUri"    # Landroid/net/Uri;

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->startingActivity(Landroid/net/Uri;)V

    .line 361
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->overlayOpened(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 365
    :cond_1
    return-void
.end method

.method public updateLastVideoViewedTime()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->this$0:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method
