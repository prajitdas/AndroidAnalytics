.class Lcom/jumptap/adtag/JtAdInterstitial$InterstitialOnTouchListener;
.super Lcom/jumptap/adtag/JtAdView$JtAdListener;
.source "JtAdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jumptap/adtag/JtAdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterstitialOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdInterstitial;


# direct methods
.method public constructor <init>(Lcom/jumptap/adtag/JtAdInterstitial;Lcom/jumptap/adtag/JtAdView;I)V
    .locals 0
    .param p2, "widget"    # Lcom/jumptap/adtag/JtAdView;
    .param p3, "widgetId"    # I

    .prologue
    .line 204
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdInterstitial$InterstitialOnTouchListener;->this$0:Lcom/jumptap/adtag/JtAdInterstitial;

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/jumptap/adtag/JtAdView$JtAdListener;-><init>(Lcom/jumptap/adtag/JtAdView;Lcom/jumptap/adtag/JtAdView;I)V

    .line 206
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    invoke-super {p0, p1, p2}, Lcom/jumptap/adtag/JtAdView$JtAdListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 211
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial$InterstitialOnTouchListener;->this$0:Lcom/jumptap/adtag/JtAdInterstitial;

    # invokes: Lcom/jumptap/adtag/JtAdInterstitial;->restartTimer()V
    invoke-static {v0}, Lcom/jumptap/adtag/JtAdInterstitial;->access$100(Lcom/jumptap/adtag/JtAdInterstitial;)V

    .line 212
    const/4 v0, 0x0

    return v0
.end method
