.class interface abstract Lcom/millennialmedia/android/HttpRedirection$Listener;
.super Ljava/lang/Object;
.source "HttpRedirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/HttpRedirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Listener"
.end annotation


# virtual methods
.method public abstract canOpenOverlay()Z
.end method

.method public abstract getOverlaySettings()Lcom/millennialmedia/android/OverlaySettings;
.end method

.method public abstract isActivityStartable(Landroid/net/Uri;)Z
.end method

.method public abstract isExpandingToUrl()Z
.end method

.method public abstract isHandlingMMVideo(Landroid/net/Uri;)Z
.end method

.method public abstract startingActivity(Landroid/net/Uri;)V
.end method

.method public abstract startingVideo()V
.end method

.method public abstract updateLastVideoViewedTime()V
.end method
