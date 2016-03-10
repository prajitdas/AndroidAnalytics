.class final enum Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
.super Ljava/lang/Enum;
.source "SoundSettingsUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HitTest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

.field public static final enum MUTE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

.field public static final enum NONE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

.field public static final enum RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    const-string v1, "MUTE"

    invoke-direct {v0, v1, v3}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->MUTE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    const-string v1, "RETURN"

    invoke-direct {v0, v1, v4}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    const/4 v0, 0x3

    new-array v0, v0, [Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->NONE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    aput-object v1, v0, v2

    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->MUTE:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    aput-object v1, v0, v3

    sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->RETURN:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    aput-object v1, v0, v4

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    return-object v0
.end method

.method public static values()[Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;->ENUM$VALUES:[Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    array-length v1, v0

    new-array v2, v1, [Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI$HitTest;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
