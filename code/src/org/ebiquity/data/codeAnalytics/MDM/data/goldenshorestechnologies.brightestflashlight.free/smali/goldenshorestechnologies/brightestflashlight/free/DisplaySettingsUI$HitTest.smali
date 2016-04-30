.class final enum Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
.super Ljava/lang/Enum;
.source "DisplaySettingsUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x401a
	name = "HitTest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
	value = {
		"Ljava/lang/Enum",
		"<",
		"Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;",
		">;"
	}
.end annotation


# static fields
.field public static final enum CAMERA_LED:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

.field private static final synthetic ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

.field public static final enum NONE:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

.field public static final enum OTHER_LIGHTS:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

.field public static final enum RETURN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

.field public static final enum SCREEN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;


# direct methods
.method static constructor <clinit>()V
	.locals 7

	.prologue
	const/4 v6, 0x4

	const/4 v5, 0x3

	const/4 v4, 0x2

	const/4 v3, 0x1

	const/4 v2, 0x0

	.line 36
	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	const-string v1, "NONE"

	invoke-direct {v0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	const-string v1, "CAMERA_LED"

	invoke-direct {v0, v1, v3}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->CAMERA_LED:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	const-string v1, "SCREEN"

	invoke-direct {v0, v1, v4}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->SCREEN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	const-string v1, "OTHER_LIGHTS"

	invoke-direct {v0, v1, v5}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->OTHER_LIGHTS:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	const-string v1, "RETURN"

	invoke-direct {v0, v1, v6}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	const/4 v0, 0x5

	new-array v0, v0, [Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	aput-object v1, v0, v2

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->CAMERA_LED:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	aput-object v1, v0, v3

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->SCREEN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	aput-object v1, v0, v4

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->OTHER_LIGHTS:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	aput-object v1, v0, v5

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	aput-object v1, v0, v6

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
	.locals 0

	.prologue
	.line 36
	invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

	return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	.locals 1

	.prologue
	.line 1
	const-class v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

	move-result-object v0

	check-cast v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	return-object v0
.end method

.method public static values()[Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;
	.locals 4

	.prologue
	const/4 v3, 0x0

	.line 1
	sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;->ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	array-length v1, v0

	new-array v2, v1, [Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI$HitTest;

	invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

	return-object v2
.end method
