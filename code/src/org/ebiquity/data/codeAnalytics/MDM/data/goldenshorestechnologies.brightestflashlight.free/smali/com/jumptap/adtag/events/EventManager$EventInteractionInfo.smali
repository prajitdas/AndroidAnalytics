.class Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jumptap/adtag/events/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventInteractionInfo"
.end annotation


# instance fields
.field private endInteractionTime:J

.field private numOfInteractions:I

.field private startInteractionTime:J

.field final synthetic this$0:Lcom/jumptap/adtag/events/EventManager;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/events/EventManager;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->this$0:Lcom/jumptap/adtag/events/EventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    invoke-virtual {p0}, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->reset()V

    .line 374
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 4

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->endInteractionTime:J

    iget-wide v2, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->startInteractionTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNumOfInteractions()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->numOfInteractions:I

    return v0
.end method

.method public interactionEnded()V
    .locals 4

    .prologue
    .line 385
    iget-wide v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->startInteractionTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->endInteractionTime:J

    .line 388
    :cond_0
    const-string v0, "JtAd-Tracking"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interactionEnded: startInteractionTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->startInteractionTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endInteractionTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->endInteractionTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method

.method public interactionStarted()V
    .locals 4

    .prologue
    .line 377
    iget-wide v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->startInteractionTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->startInteractionTime:J

    .line 380
    :cond_0
    const-string v0, "JtAd-Tracking"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interactionStarted: startInteractionTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->startInteractionTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endInteractionTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->endInteractionTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->numOfInteractions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->numOfInteractions:I

    .line 382
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 392
    iput-wide v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->startInteractionTime:J

    .line 393
    iput-wide v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->endInteractionTime:J

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->numOfInteractions:I

    .line 395
    return-void
.end method
