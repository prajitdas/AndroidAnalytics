.class Lcom/jumptap/adtag/events/EventManager$InteractEventTask$1;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/events/EventManager$InteractEventTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/events/EventManager$InteractEventTask;)V
	.locals 0

	.prologue
	.line 343
	iput-object p1, p0, Lcom/jumptap/adtag/events/EventManager$InteractEventTask$1;->this$1:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 6

	.prologue
	.line 345
	iget-object v3, p0, Lcom/jumptap/adtag/events/EventManager$InteractEventTask$1;->this$1:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	iget-object v3, v3, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;->this$0:Lcom/jumptap/adtag/events/EventManager;

	# getter for: Lcom/jumptap/adtag/events/EventManager;->eventInteractionInfo:Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;
	invoke-static {v3}, Lcom/jumptap/adtag/events/EventManager;->access$200(Lcom/jumptap/adtag/events/EventManager;)Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;

	move-result-object v3

	invoke-virtual {v3}, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->getDuration()J

	move-result-wide v0

	.line 348
	.local v0, "duration":J
	const-wide/16 v3, 0x0

	cmp-long v3, v0, v3

	if-lez v3, :cond_0

	.line 349
	const-string v3, "JtAd-Tracking"

	const-string v4, "performing Interaction Event Task timer"

	invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 350
	new-instance v2, Ljava/util/HashMap;

	invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

	.line 351
	.local v2, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	const-string v3, "duration"

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

	const-string v5, ""

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 352
	const-string v3, "units"

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

	const-string v5, ""

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	iget-object v5, p0, Lcom/jumptap/adtag/events/EventManager$InteractEventTask$1;->this$1:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	iget-object v5, v5, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;->this$0:Lcom/jumptap/adtag/events/EventManager;

	# getter for: Lcom/jumptap/adtag/events/EventManager;->eventInteractionInfo:Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;
	invoke-static {v5}, Lcom/jumptap/adtag/events/EventManager;->access$200(Lcom/jumptap/adtag/events/EventManager;)Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;

	move-result-object v5

	invoke-virtual {v5}, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->getNumOfInteractions()I

	move-result v5

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 353
	const-string v3, "JtAd-Tracking"

	const-string v4, "reset"

	invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 354
	iget-object v3, p0, Lcom/jumptap/adtag/events/EventManager$InteractEventTask$1;->this$1:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	iget-object v3, v3, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;->this$0:Lcom/jumptap/adtag/events/EventManager;

	# getter for: Lcom/jumptap/adtag/events/EventManager;->eventInteractionInfo:Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;
	invoke-static {v3}, Lcom/jumptap/adtag/events/EventManager;->access$200(Lcom/jumptap/adtag/events/EventManager;)Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;

	move-result-object v3

	invoke-virtual {v3}, Lcom/jumptap/adtag/events/EventManager$EventInteractionInfo;->reset()V

	.line 355
	iget-object v3, p0, Lcom/jumptap/adtag/events/EventManager$InteractEventTask$1;->this$1:Lcom/jumptap/adtag/events/EventManager$InteractEventTask;

	iget-object v3, v3, Lcom/jumptap/adtag/events/EventManager$InteractEventTask;->this$0:Lcom/jumptap/adtag/events/EventManager;

	sget-object v4, Lcom/jumptap/adtag/events/EventType;->interact:Lcom/jumptap/adtag/events/EventType;

	# invokes: Lcom/jumptap/adtag/events/EventManager;->sendReport(Lcom/jumptap/adtag/events/EventType;Ljava/util/Map;)V
	invoke-static {v3, v4, v2}, Lcom/jumptap/adtag/events/EventManager;->access$300(Lcom/jumptap/adtag/events/EventManager;Lcom/jumptap/adtag/events/EventType;Ljava/util/Map;)V

	.line 357
	.end local v2	# "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	:cond_0
	return-void
.end method
