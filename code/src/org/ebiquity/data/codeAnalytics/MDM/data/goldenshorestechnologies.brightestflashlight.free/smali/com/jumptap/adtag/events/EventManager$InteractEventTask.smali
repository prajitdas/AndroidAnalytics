.class Lcom/jumptap/adtag/events/EventManager$InteractEventTask;
.super Ljava/util/TimerTask;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jumptap/adtag/events/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteractEventTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/events/EventManager;


# direct methods
.method private constructor <init>(Lcom/jumptap/adtag/events/EventManager;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;->this$0:Lcom/jumptap/adtag/events/EventManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jumptap/adtag/events/EventManager;Lcom/jumptap/adtag/events/EventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jumptap/adtag/events/EventManager;
    .param p2, "x1"    # Lcom/jumptap/adtag/events/EventManager$1;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;-><init>(Lcom/jumptap/adtag/events/EventManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;->this$0:Lcom/jumptap/adtag/events/EventManager;

    # getter for: Lcom/jumptap/adtag/events/EventManager;->adViewListener:Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;
    invoke-static {v0}, Lcom/jumptap/adtag/events/EventManager;->access$400(Lcom/jumptap/adtag/events/EventManager;)Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;

    move-result-object v0

    new-instance v1, Lcom/jumptap/adtag/events/EventManager$InteractEventTask$1;

    invoke-direct {v1, p0}, Lcom/jumptap/adtag/events/EventManager$InteractEventTask$1;-><init>(Lcom/jumptap/adtag/events/EventManager$InteractEventTask;)V

    invoke-interface {v0, v1}, Lcom/jumptap/adtag/listeners/JtAdViewInnerListener;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method
