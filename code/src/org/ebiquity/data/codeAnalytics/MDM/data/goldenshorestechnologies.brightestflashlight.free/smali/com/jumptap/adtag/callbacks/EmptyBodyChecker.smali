.class public Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;
.super Ljava/lang/Object;
.source "EmptyBodyChecker.java"


# instance fields
.field private eventManager:Lcom/jumptap/adtag/events/EventManager;

.field private innerListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;


# direct methods
.method public constructor <init>(Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;Lcom/jumptap/adtag/events/EventManager;)V
    .locals 1
    .param p1, "innerListener"    # Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;
    .param p2, "eventManager"    # Lcom/jumptap/adtag/events/EventManager;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;->innerListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

    .line 16
    iput-object v0, p0, Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;->eventManager:Lcom/jumptap/adtag/events/EventManager;

    .line 20
    iput-object p2, p0, Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;->eventManager:Lcom/jumptap/adtag/events/EventManager;

    .line 21
    iput-object p1, p0, Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;->innerListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

    .line 22
    return-void
.end method


# virtual methods
.method public checkBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "bodyHtml"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 29
    const-string v0, "JtAd"

    const-string v1, "Ad was not found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;->innerListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;->innerListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

    invoke-interface {v0}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->onNoAdFound()V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;->innerListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/jumptap/adtag/callbacks/EmptyBodyChecker;->innerListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

    invoke-interface {v0}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->onNewAd()V

    goto :goto_0
.end method
