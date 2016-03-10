.class final enum Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;
.super Ljava/lang/Enum;
.source "MainSettingsUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

.field public static final enum FADING_INVISIBLE_TO_TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

.field public static final enum FADING_SOLID_TO_INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

.field public static final enum FADING_SOLID_TO_TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

.field public static final enum FADING_TRANSPARENT_TO_SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

.field public static final enum INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

.field public static final enum SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

.field public static final enum SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

.field public static final enum TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v3}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    const-string v1, "FADING_INVISIBLE_TO_TRANSPARENT"

    invoke-direct {v0, v1, v4}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_INVISIBLE_TO_TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    const-string v1, "TRANSPARENT"

    invoke-direct {v0, v1, v5}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    const-string v1, "FADING_TRANSPARENT_TO_SOLID"

    invoke-direct {v0, v1, v6}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_TRANSPARENT_TO_SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 55
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    const-string v1, "SOLID"

    invoke-direct {v0, v1, v7}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    const-string v1, "FADING_SOLID_TO_TRANSPARENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_SOLID_TO_TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    const-string v1, "SELECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    const-string v1, "FADING_SOLID_TO_INVISIBLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_SOLID_TO_INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    aput-object v1, v0, v3

    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_INVISIBLE_TO_TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    aput-object v1, v0, v4

    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    aput-object v1, v0, v5

    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_TRANSPARENT_TO_SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    aput-object v1, v0, v6

    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SOLID:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_SOLID_TO_TRANSPARENT:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->SELECTED:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->FADING_SOLID_TO_INVISIBLE:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    aput-object v2, v0, v1

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    return-object v0
.end method

.method public static values()[Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;->ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    array-length v1, v0

    new-array v2, v1, [Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
