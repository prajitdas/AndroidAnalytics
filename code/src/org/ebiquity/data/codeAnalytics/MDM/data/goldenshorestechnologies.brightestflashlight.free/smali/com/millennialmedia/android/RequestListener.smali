.class public interface abstract Lcom/millennialmedia/android/RequestListener;
.super Ljava/lang/Object;
.source "RequestListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/RequestListener$RequestListenerImpl;
    }
.end annotation


# virtual methods
.method public abstract MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
.end method

.method public abstract MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
.end method

.method public abstract requestCompleted(Lcom/millennialmedia/android/MMAd;)V
.end method

.method public abstract requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
.end method
