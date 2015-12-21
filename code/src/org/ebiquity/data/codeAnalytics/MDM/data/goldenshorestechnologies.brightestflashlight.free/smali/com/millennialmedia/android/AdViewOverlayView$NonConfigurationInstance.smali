.class final Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonConfigurationInstance"
.end annotation


# instance fields
.field controller:Lcom/millennialmedia/android/MMAdImplController;

.field progressDone:Z

.field settings:Lcom/millennialmedia/android/OverlaySettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/android/AdViewOverlayView$1;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;-><init>()V

    return-void
.end method
