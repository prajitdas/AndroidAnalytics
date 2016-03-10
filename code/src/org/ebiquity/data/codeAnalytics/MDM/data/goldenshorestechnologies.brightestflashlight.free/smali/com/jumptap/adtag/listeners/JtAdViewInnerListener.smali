.class public interface abstract Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;
.super Ljava/lang/Object;
.source "JtAdViewInnerListener.java"


# virtual methods
.method public abstract getAdRequestId()Ljava/lang/String;
.end method

.method public abstract getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;
.end method

.method public abstract handleClicks(Ljava/lang/String;)V
.end method

.method public abstract hide()V
.end method

.method public abstract onAdError(I)V
.end method

.method public abstract onBeginAdInteraction()V
.end method

.method public abstract onEndAdInteraction()V
.end method

.method public abstract onInterstitialDismissed()V
.end method

.method public abstract onNewAd()V
.end method

.method public abstract onNoAdFound()V
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract resize(IIZ)V
.end method

.method public abstract resizeWithCallback(ZIILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setContent(Ljava/lang/String;Ljava/lang/String;)V
.end method
