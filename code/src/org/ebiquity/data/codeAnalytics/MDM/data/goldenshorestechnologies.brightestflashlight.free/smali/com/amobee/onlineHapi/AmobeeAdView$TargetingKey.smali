.class public final enum Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;
.super Ljava/lang/Enum;
.source "AmobeeAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/amobee/onlineHapi/AmobeeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x4019
	name = "TargetingKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
	value = {
		"Ljava/lang/Enum",
		"<",
		"Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;",
		">;"
	}
.end annotation


# static fields
.field public static final enum AGE:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

.field public static final enum DATE_OF_BIRTH:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

.field private static final synthetic ENUM$VALUES:[Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

.field public static final enum GENDER:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

.field public static final enum POSTAL_CODE:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;


# direct methods
.method static constructor <clinit>()V
	.locals 6

	.prologue
	const/4 v5, 0x3

	const/4 v4, 0x2

	const/4 v3, 0x1

	const/4 v2, 0x0

	.line 376
	new-instance v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	const-string v1, "POSTAL_CODE"

	invoke-direct {v0, v1, v2}, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->POSTAL_CODE:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	new-instance v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	const-string v1, "GENDER"

	invoke-direct {v0, v1, v3}, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->GENDER:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	new-instance v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	const-string v1, "AGE"

	invoke-direct {v0, v1, v4}, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->AGE:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	new-instance v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	const-string v1, "DATE_OF_BIRTH"

	invoke-direct {v0, v1, v5}, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;-><init>(Ljava/lang/String;I)V

	sput-object v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->DATE_OF_BIRTH:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	.line 375
	const/4 v0, 0x4

	new-array v0, v0, [Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	sget-object v1, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->POSTAL_CODE:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	aput-object v1, v0, v2

	sget-object v1, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->GENDER:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	aput-object v1, v0, v3

	sget-object v1, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->AGE:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	aput-object v1, v0, v4

	sget-object v1, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->DATE_OF_BIRTH:Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	aput-object v1, v0, v5

	sput-object v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->ENUM$VALUES:[Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
	.locals 0

	.prologue
	.line 375
	invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

	return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;
	.locals 1

	.prologue
	.line 1
	const-class v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

	move-result-object v0

	check-cast v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	return-object v0
.end method

.method public static values()[Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;
	.locals 4

	.prologue
	const/4 v3, 0x0

	.line 1
	sget-object v0, Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;->ENUM$VALUES:[Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	array-length v1, v0

	new-array v2, v1, [Lcom/amobee/onlineHapi/AmobeeAdView$TargetingKey;

	invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

	return-object v2
.end method
