.class Lcom/jumptap/adtag/events/EventManager$LogEvent;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/jumptap/adtag/events/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0xa
	name = "LogEvent"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private event:Lcom/jumptap/adtag/events/JtEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jumptap/adtag/events/JtEvent;)V
	.locals 0
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "event"	# Lcom/jumptap/adtag/events/JtEvent;

	.prologue
	.line 322
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 323
	iput-object p1, p0, Lcom/jumptap/adtag/events/EventManager$LogEvent;->context:Landroid/content/Context;

	.line 324
	iput-object p2, p0, Lcom/jumptap/adtag/events/EventManager$LogEvent;->event:Lcom/jumptap/adtag/events/JtEvent;

	.line 325
	return-void
.end method


# virtual methods
.method public run()V
	.locals 2

	.prologue
	.line 328
	iget-object v1, p0, Lcom/jumptap/adtag/events/EventManager$LogEvent;->context:Landroid/content/Context;

	invoke-static {v1}, Lcom/jumptap/adtag/db/DBManager;->getInstance(Landroid/content/Context;)Lcom/jumptap/adtag/db/DBManager;

	move-result-object v0

	.line 329
	.local v0, "dbManager":Lcom/jumptap/adtag/db/DBManager;
	iget-object v1, p0, Lcom/jumptap/adtag/events/EventManager$LogEvent;->event:Lcom/jumptap/adtag/events/JtEvent;

	invoke-virtual {v0, v1}, Lcom/jumptap/adtag/db/DBManager;->insertEvent(Lcom/jumptap/adtag/events/JtEvent;)J

	.line 330
	iget-object v1, p0, Lcom/jumptap/adtag/events/EventManager$LogEvent;->context:Landroid/content/Context;

	# invokes: Lcom/jumptap/adtag/events/EventManager;->scheduleConversionTask(Landroid/content/Context;)V
	invoke-static {v1}, Lcom/jumptap/adtag/events/EventManager;->access$100(Landroid/content/Context;)V

	.line 331
	return-void
.end method
