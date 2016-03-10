.class Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;
.super Ljava/lang/Object;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdView$BannerBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundsResult"
.end annotation


# instance fields
.field size:I

.field final synthetic this$1:Lcom/millennialmedia/android/MMAdView$BannerBounds;

.field translation:I


# direct methods
.method private constructor <init>(Lcom/millennialmedia/android/MMAdView$BannerBounds;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->this$1:Lcom/millennialmedia/android/MMAdView$BannerBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/MMAdView$BannerBounds;Lcom/millennialmedia/android/MMAdView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/android/MMAdView$BannerBounds;
    .param p2, "x1"    # Lcom/millennialmedia/android/MMAdView$1;

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;-><init>(Lcom/millennialmedia/android/MMAdView$BannerBounds;)V

    return-void
.end method
