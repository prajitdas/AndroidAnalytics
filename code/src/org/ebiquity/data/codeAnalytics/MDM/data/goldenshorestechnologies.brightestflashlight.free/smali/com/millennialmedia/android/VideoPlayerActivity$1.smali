.class Lcom/millennialmedia/android/VideoPlayerActivity$1;
.super Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->initRedirectListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdProperties()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->adProperties:Lcom/millennialmedia/android/AdProperties;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->adProperties:Lcom/millennialmedia/android/AdProperties;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdProperties;->getAdProperties()Lorg/json/JSONObject;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverlaySettings()Lcom/millennialmedia/android/OverlaySettings;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "settings":Lcom/millennialmedia/android/OverlaySettings;
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->lastOverlayOrientation:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    new-instance v0, Lcom/millennialmedia/android/OverlaySettings;

    .end local v0    # "settings":Lcom/millennialmedia/android/OverlaySettings;
    invoke-direct {v0}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    .line 133
    .restart local v0    # "settings":Lcom/millennialmedia/android/OverlaySettings;
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->lastOverlayOrientation:Ljava/lang/String;

    iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 135
    :cond_0
    return-object v0
.end method

.method public isHandlingMMVideo(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    new-instance v1, Lcom/millennialmedia/android/VideoPlayerActivity$1$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$1$1;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    # invokes: Lcom/millennialmedia/android/VideoPlayerActivity;->isActionable(Landroid/net/Uri;)Z
    invoke-static {v0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$000(Lcom/millennialmedia/android/VideoPlayerActivity;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->processVideoPlayerUri(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
