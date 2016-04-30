.class public Lcom/jumptap/adtag/events/JtEvent;
.super Ljava/lang/Object;
.source "JtEvent.java"


# instance fields
.field private date:Ljava/lang/String;

.field private eventType:Lcom/jumptap/adtag/events/EventType;

.field private id:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
	.locals 2

	.prologue
	const/4 v1, 0x0

	.line 13
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 14
	const/4 v0, -0x1

	invoke-direct {p0, v0, v1, v1, v1}, Lcom/jumptap/adtag/events/JtEvent;->initEvent(ILjava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V

	.line 15
	return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V
	.locals 0
	.param p1, "id"	# I
	.param p2, "url"	# Ljava/lang/String;
	.param p3, "eventType"	# Lcom/jumptap/adtag/events/EventType;
	.param p4, "date"	# Ljava/lang/String;

	.prologue
	.line 21
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 22
	invoke-direct {p0, p1, p2, p3, p4}, Lcom/jumptap/adtag/events/JtEvent;->initEvent(ILjava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V

	.line 23
	return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V
	.locals 1
	.param p1, "url"	# Ljava/lang/String;
	.param p2, "eventType"	# Lcom/jumptap/adtag/events/EventType;
	.param p3, "date"	# Ljava/lang/String;

	.prologue
	.line 17
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 18
	const/4 v0, -0x1

	invoke-direct {p0, v0, p1, p2, p3}, Lcom/jumptap/adtag/events/JtEvent;->initEvent(ILjava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V

	.line 19
	return-void
.end method

.method private initEvent(ILjava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V
	.locals 0
	.param p1, "id"	# I
	.param p2, "url"	# Ljava/lang/String;
	.param p3, "eventType"	# Lcom/jumptap/adtag/events/EventType;
	.param p4, "date"	# Ljava/lang/String;

	.prologue
	.line 63
	iput p1, p0, Lcom/jumptap/adtag/events/JtEvent;->id:I

	.line 64
	iput-object p2, p0, Lcom/jumptap/adtag/events/JtEvent;->url:Ljava/lang/String;

	.line 65
	iput-object p3, p0, Lcom/jumptap/adtag/events/JtEvent;->eventType:Lcom/jumptap/adtag/events/EventType;

	.line 66
	iput-object p4, p0, Lcom/jumptap/adtag/events/JtEvent;->date:Ljava/lang/String;

	.line 67
	return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
	.locals 1

	.prologue
	.line 50
	iget-object v0, p0, Lcom/jumptap/adtag/events/JtEvent;->date:Ljava/lang/String;

	return-object v0
.end method

.method public getEventType()Lcom/jumptap/adtag/events/EventType;
	.locals 1

	.prologue
	.line 42
	iget-object v0, p0, Lcom/jumptap/adtag/events/JtEvent;->eventType:Lcom/jumptap/adtag/events/EventType;

	return-object v0
.end method

.method public getId()I
	.locals 1

	.prologue
	.line 26
	iget v0, p0, Lcom/jumptap/adtag/events/JtEvent;->id:I

	return v0
.end method

.method public getUrl()Ljava/lang/String;
	.locals 1

	.prologue
	.line 34
	iget-object v0, p0, Lcom/jumptap/adtag/events/JtEvent;->url:Ljava/lang/String;

	return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
	.locals 0
	.param p1, "date"	# Ljava/lang/String;

	.prologue
	.line 54
	iput-object p1, p0, Lcom/jumptap/adtag/events/JtEvent;->date:Ljava/lang/String;

	.line 55
	return-void
.end method

.method public setEventType(Lcom/jumptap/adtag/events/EventType;)V
	.locals 0
	.param p1, "eventType"	# Lcom/jumptap/adtag/events/EventType;

	.prologue
	.line 46
	iput-object p1, p0, Lcom/jumptap/adtag/events/JtEvent;->eventType:Lcom/jumptap/adtag/events/EventType;

	.line 47
	return-void
.end method

.method public setId(I)V
	.locals 0
	.param p1, "id"	# I

	.prologue
	.line 30
	iput p1, p0, Lcom/jumptap/adtag/events/JtEvent;->id:I

	.line 31
	return-void
.end method

.method public setUrl(Ljava/lang/String;)V
	.locals 0
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 38
	iput-object p1, p0, Lcom/jumptap/adtag/events/JtEvent;->url:Ljava/lang/String;

	.line 39
	return-void
.end method

.method public toString()Ljava/lang/String;
	.locals 2

	.prologue
	.line 59
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	const-string v1, "id="

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget v1, p0, Lcom/jumptap/adtag/events/JtEvent;->id:I

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, " ,eventType="

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/events/JtEvent;->eventType:Lcom/jumptap/adtag/events/EventType;

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, " ,date="

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/events/JtEvent;->date:Ljava/lang/String;

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	const-string v1, " ,url="

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/events/JtEvent;->url:Ljava/lang/String;

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method
