.class Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;
.super Ljava/lang/Object;
.source "CameraWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraWrapper"

.field public static bGetNumberOfCameras:Z

.field public static bSetDisplayOrientationSupported:Z

.field private static mCamera_setDisplayOrientation:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;->bSetDisplayOrientationSupported:Z

    .line 24
    sput-boolean v0, Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;->bGetNumberOfCameras:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;->mCamera_setDisplayOrientation:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumberOfCameras(Landroid/hardware/Camera;)I
    .locals 5
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x0

    .line 34
    :try_start_0
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "getNumberOfCameras"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;->mCamera_setDisplayOrientation:Ljava/lang/reflect/Method;

    .line 36
    const/4 v1, 0x1

    sput-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;->bGetNumberOfCameras:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return v4

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    sput-boolean v4, Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;->bSetDisplayOrientationSupported:Z

    .line 41
    const-string v1, "CameraWrapper"

    const-string v2, "setDisplayOrientation not supported."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDisplayOrientation(Landroid/hardware/Camera;I)V
    .locals 10
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "rotation"    # I

    .prologue
    const/4 v9, 0x0

    .line 56
    :try_start_0
    const-class v4, Landroid/hardware/Camera;

    const-string v5, "setDisplayOrientation"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;->mCamera_setDisplayOrientation:Ljava/lang/reflect/Method;

    .line 58
    const/4 v4, 0x1

    sput-boolean v4, Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;->bSetDisplayOrientationSupported:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    if-eqz p1, :cond_0

    .line 69
    :try_start_1
    sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;->mCamera_setDisplayOrientation:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v3

    .line 62
    .local v3, "nsme":Ljava/lang/NoSuchMethodException;
    sput-boolean v9, Lgoldenshorestechnologies/brightestflashlight/free/CameraWrapper;->bSetDisplayOrientationSupported:Z

    .line 63
    const-string v4, "CameraWrapper"

    const-string v5, "setDisplayOrientation not supported."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    .end local v3    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 73
    .local v2, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 74
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_1

    .line 75
    const-string v4, "CameraWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_1
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_2

    .line 79
    const-string v4, "CameraWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RuntimeException "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    instance-of v4, v0, Ljava/lang/Error;

    if-eqz v4, :cond_3

    .line 83
    const-string v4, "CameraWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_3
    const-string v4, "CameraWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected Exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 92
    .local v1, "ie":Ljava/lang/IllegalAccessException;
    const-string v4, "CameraWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected Exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
