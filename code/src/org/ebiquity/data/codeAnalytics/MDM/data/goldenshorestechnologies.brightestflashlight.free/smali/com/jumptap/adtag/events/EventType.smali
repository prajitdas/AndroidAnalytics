.class public final enum Lcom/jumptap/adtag/events/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
	value = {
		"Ljava/lang/Enum",
		"<",
		"Lcom/jumptap/adtag/events/EventType;",
		">;"
	}
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jumptap/adtag/events/EventType;

.field public static final enum adVideo100:Lcom/jumptap/adtag/events/EventType;

.field public static final enum adVideo25:Lcom/jumptap/adtag/events/EventType;

.field public static final enum adVideo50:Lcom/jumptap/adtag/events/EventType;

.field public static final enum adVideo75:Lcom/jumptap/adtag/events/EventType;

.field public static final enum click:Lcom/jumptap/adtag/events/EventType;

.field public static final enum dismiss:Lcom/jumptap/adtag/events/EventType;

.field public static final enum download:Lcom/jumptap/adtag/events/EventType;

.field public static final enum impression:Lcom/jumptap/adtag/events/EventType;

.field public static final enum interact:Lcom/jumptap/adtag/events/EventType;

.field public static final enum run:Lcom/jumptap/adtag/events/EventType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
	.locals 9

	.prologue
	const/4 v8, 0x4

	const/4 v7, 0x3

	const/4 v6, 0x2

	const/4 v5, 0x1

	const/4 v4, 0x0

	.line 4
	new-instance v0, Lcom/jumptap/adtag/events/EventType;

	const-string v1, "run"

	const-string v2, "run"

	invoke-direct {v0, v1, v4, v2}, Lcom/jumptap/adtag/events/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->run:Lcom/jumptap/adtag/events/EventType;

	.line 5
	new-instance v0, Lcom/jumptap/adtag/events/EventType;

	const-string v1, "download"

	const-string v2, "download"

	invoke-direct {v0, v1, v5, v2}, Lcom/jumptap/adtag/events/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->download:Lcom/jumptap/adtag/events/EventType;

	.line 7
	new-instance v0, Lcom/jumptap/adtag/events/EventType;

	const-string v1, "impression"

	const-string v2, "impression"

	invoke-direct {v0, v1, v6, v2}, Lcom/jumptap/adtag/events/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->impression:Lcom/jumptap/adtag/events/EventType;

	.line 8
	new-instance v0, Lcom/jumptap/adtag/events/EventType;

	const-string v1, "click"

	const-string v2, "click"

	invoke-direct {v0, v1, v7, v2}, Lcom/jumptap/adtag/events/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->click:Lcom/jumptap/adtag/events/EventType;

	.line 10
	new-instance v0, Lcom/jumptap/adtag/events/EventType;

	const-string v1, "interact"

	const-string v2, "interact"

	invoke-direct {v0, v1, v8, v2}, Lcom/jumptap/adtag/events/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->interact:Lcom/jumptap/adtag/events/EventType;

	.line 12
	new-instance v0, Lcom/jumptap/adtag/events/EventType;

	const-string v1, "adVideo25"

	const/4 v2, 0x5

	const-string v3, "25view"

	invoke-direct {v0, v1, v2, v3}, Lcom/jumptap/adtag/events/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->adVideo25:Lcom/jumptap/adtag/events/EventType;

	.line 13
	new-instance v0, Lcom/jumptap/adtag/events/EventType;

	const-string v1, "adVideo50"

	const/4 v2, 0x6

	const-string v3, "50view"

	invoke-direct {v0, v1, v2, v3}, Lcom/jumptap/adtag/events/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->adVideo50:Lcom/jumptap/adtag/events/EventType;

	.line 14
	new-instance v0, Lcom/jumptap/adtag/events/EventType;

	const-string v1, "adVideo75"

	const/4 v2, 0x7

	const-string v3, "75view"

	invoke-direct {v0, v1, v2, v3}, Lcom/jumptap/adtag/events/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->adVideo75:Lcom/jumptap/adtag/events/EventType;

	.line 15
	new-instance v0, Lcom/jumptap/adtag/events/EventType;

	const-string v1, "adVideo100"

	const/16 v2, 0x8

	const-string v3, "100view"

	invoke-direct {v0, v1, v2, v3}, Lcom/jumptap/adtag/events/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->adVideo100:Lcom/jumptap/adtag/events/EventType;

	.line 16
	new-instance v0, Lcom/jumptap/adtag/events/EventType;

	const-string v1, "dismiss"

	const/16 v2, 0x9

	const-string v3, "dismiss"

	invoke-direct {v0, v1, v2, v3}, Lcom/jumptap/adtag/events/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->dismiss:Lcom/jumptap/adtag/events/EventType;

	.line 3
	const/16 v0, 0xa

	new-array v0, v0, [Lcom/jumptap/adtag/events/EventType;

	sget-object v1, Lcom/jumptap/adtag/events/EventType;->run:Lcom/jumptap/adtag/events/EventType;

	aput-object v1, v0, v4

	sget-object v1, Lcom/jumptap/adtag/events/EventType;->download:Lcom/jumptap/adtag/events/EventType;

	aput-object v1, v0, v5

	sget-object v1, Lcom/jumptap/adtag/events/EventType;->impression:Lcom/jumptap/adtag/events/EventType;

	aput-object v1, v0, v6

	sget-object v1, Lcom/jumptap/adtag/events/EventType;->click:Lcom/jumptap/adtag/events/EventType;

	aput-object v1, v0, v7

	sget-object v1, Lcom/jumptap/adtag/events/EventType;->interact:Lcom/jumptap/adtag/events/EventType;

	aput-object v1, v0, v8

	const/4 v1, 0x5

	sget-object v2, Lcom/jumptap/adtag/events/EventType;->adVideo25:Lcom/jumptap/adtag/events/EventType;

	aput-object v2, v0, v1

	const/4 v1, 0x6

	sget-object v2, Lcom/jumptap/adtag/events/EventType;->adVideo50:Lcom/jumptap/adtag/events/EventType;

	aput-object v2, v0, v1

	const/4 v1, 0x7

	sget-object v2, Lcom/jumptap/adtag/events/EventType;->adVideo75:Lcom/jumptap/adtag/events/EventType;

	aput-object v2, v0, v1

	const/16 v1, 0x8

	sget-object v2, Lcom/jumptap/adtag/events/EventType;->adVideo100:Lcom/jumptap/adtag/events/EventType;

	aput-object v2, v0, v1

	const/16 v1, 0x9

	sget-object v2, Lcom/jumptap/adtag/events/EventType;->dismiss:Lcom/jumptap/adtag/events/EventType;

	aput-object v2, v0, v1

	sput-object v0, Lcom/jumptap/adtag/events/EventType;->$VALUES:[Lcom/jumptap/adtag/events/EventType;

	return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
	.locals 0
	.param p3, "value"	# Ljava/lang/String;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/lang/String;",
			")V"
		}
	.end annotation

	.prologue
	.line 20
	invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

	.line 21
	iput-object p3, p0, Lcom/jumptap/adtag/events/EventType;->value:Ljava/lang/String;

	.line 22
	return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jumptap/adtag/events/EventType;
	.locals 1
	.param p0, "name"	# Ljava/lang/String;

	.prologue
	.line 3
	const-class v0, Lcom/jumptap/adtag/events/EventType;

	invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

	move-result-object v0

	check-cast v0, Lcom/jumptap/adtag/events/EventType;

	return-object v0
.end method

.method public static values()[Lcom/jumptap/adtag/events/EventType;
	.locals 1

	.prologue
	.line 3
	sget-object v0, Lcom/jumptap/adtag/events/EventType;->$VALUES:[Lcom/jumptap/adtag/events/EventType;

	invoke-virtual {v0}, [Lcom/jumptap/adtag/events/EventType;->clone()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, [Lcom/jumptap/adtag/events/EventType;

	return-object v0
.end method


# virtual methods
.method public final value()Ljava/lang/String;
	.locals 1

	.prologue
	.line 24
	iget-object v0, p0, Lcom/jumptap/adtag/events/EventType;->value:Ljava/lang/String;

	return-object v0
.end method
