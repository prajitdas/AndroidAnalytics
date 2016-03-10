.class public Lcom/amobee/onlineHapi/AmobeeScheduler;
.super Ljava/lang/Object;
.source "AmobeeScheduler.java"


# static fields
.field private static instance:Lcom/amobee/onlineHapi/AmobeeScheduler;


# instance fields
.field private timer:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeScheduler;->timer:Ljava/util/Timer;

    .line 19
    return-void
.end method

.method static getInstance()Lcom/amobee/onlineHapi/AmobeeScheduler;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/amobee/onlineHapi/AmobeeScheduler;->instance:Lcom/amobee/onlineHapi/AmobeeScheduler;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/amobee/onlineHapi/AmobeeScheduler;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/amobee/onlineHapi/AmobeeScheduler;->instance:Lcom/amobee/onlineHapi/AmobeeScheduler;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/amobee/onlineHapi/AmobeeScheduler;

    invoke-direct {v0}, Lcom/amobee/onlineHapi/AmobeeScheduler;-><init>()V

    sput-object v0, Lcom/amobee/onlineHapi/AmobeeScheduler;->instance:Lcom/amobee/onlineHapi/AmobeeScheduler;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/amobee/onlineHapi/AmobeeScheduler;->instance:Lcom/amobee/onlineHapi/AmobeeScheduler;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized scheduleTask(Ljava/util/TimerTask;I)V
    .locals 3
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "timeInterval"    # I

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeScheduler;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeScheduler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeScheduler;->timer:Ljava/util/Timer;

    .line 47
    :cond_0
    if-lez p2, :cond_1

    .line 48
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amobee/onlineHapi/AmobeeScheduler;->timer:Ljava/util/Timer;

    .line 49
    iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeScheduler;->timer:Ljava/util/Timer;

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
