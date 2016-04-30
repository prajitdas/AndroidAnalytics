.class public final enum Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
.super Ljava/lang/Enum;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x4019
	name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
	value = {
		"Ljava/lang/Enum",
		"<",
		"Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;",
		">;"
	}
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

.field public static final enum FADING_HIDDEN_TO_SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

.field public static final enum FADING_SOLID_TO_HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

.field public static final enum HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

.field public static final enum ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

.field public static final enum SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;


# direct methods
.method static constructor <clinit>()V
	.locals 7

	.prologue
	const/4 v6, 0x4

	const/4 v5, 0x3

	const/4 v4, 0x2

	const/4 v3, 0x1

	const/4 v2, 0x0

	.line 33
	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	const-string v1, "HIDDEN"

	invoke-direct {v0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	const-string v1, "FADING_HIDDEN_TO_SOLID"

	invoke-direct {v0, v1, v3}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_HIDDEN_TO_SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	const-string v1, "SOLID"

	invoke-direct {v0, v1, v4}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	const-string v1, "FADING_SOLID_TO_HIDDEN"

	invoke-direct {v0, v1, v5}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_SOLID_TO_HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	const-string v1, "ITEM_SELECTED"

	invoke-direct {v0, v1, v6}, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	const/4 v0, 0x5

	new-array v0, v0, [Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	aput-object v1, v0, v2

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_HIDDEN_TO_SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	aput-object v1, v0, v3

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	aput-object v1, v0, v4

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->FADING_SOLID_TO_HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	aput-object v1, v0, v5

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ITEM_SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	aput-object v1, v0, v6

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
	.locals 0

	.prologue
	.line 33
	invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

	return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
	.locals 1

	.prologue
	.line 1
	const-class v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

	move-result-object v0

	check-cast v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	return-object v0
.end method

.method public static values()[Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;
	.locals 4

	.prologue
	const/4 v3, 0x0

	.line 1
	sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	array-length v1, v0

	new-array v2, v1, [Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

	return-object v2
.end method
