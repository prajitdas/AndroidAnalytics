.class public Lcom/jumptap/adtag/utils/JtLocation;
.super Ljava/lang/Object;
.source "JtLocation.java"


# static fields
.field private static currentLocation:Landroid/location/Location;

.field private static jtLocationInstance:Lcom/jumptap/adtag/utils/JtLocation;

.field private static locationManager:Landroid/location/LocationManager;


# instance fields
.field private listenerCoarse:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/jumptap/adtag/utils/JtLocation;->jtLocationInstance:Lcom/jumptap/adtag/utils/JtLocation;

    .line 17
    sput-object v0, Lcom/jumptap/adtag/utils/JtLocation;->currentLocation:Landroid/location/Location;

    .line 19
    sput-object v0, Lcom/jumptap/adtag/utils/JtLocation;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jumptap/adtag/utils/JtLocation;->listenerCoarse:Landroid/location/LocationListener;

    .line 25
    return-void
.end method

.method static synthetic access$000(Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/jumptap/adtag/utils/JtLocation;->setCurrentLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/jumptap/adtag/utils/JtLocation;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method private createLocationListeners()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/jumptap/adtag/utils/JtLocation$1;

    invoke-direct {v0, p0}, Lcom/jumptap/adtag/utils/JtLocation$1;-><init>(Lcom/jumptap/adtag/utils/JtLocation;)V

    iput-object v0, p0, Lcom/jumptap/adtag/utils/JtLocation;->listenerCoarse:Landroid/location/LocationListener;

    .line 110
    return-void
.end method

.method public static getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/jumptap/adtag/utils/JtLocation;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method protected static getInstance()Lcom/jumptap/adtag/utils/JtLocation;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/jumptap/adtag/utils/JtLocation;->jtLocationInstance:Lcom/jumptap/adtag/utils/JtLocation;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/jumptap/adtag/utils/JtLocation;

    invoke-direct {v0}, Lcom/jumptap/adtag/utils/JtLocation;-><init>()V

    sput-object v0, Lcom/jumptap/adtag/utils/JtLocation;->jtLocationInstance:Lcom/jumptap/adtag/utils/JtLocation;

    .line 33
    :cond_0
    sget-object v0, Lcom/jumptap/adtag/utils/JtLocation;->jtLocationInstance:Lcom/jumptap/adtag/utils/JtLocation;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lcom/jumptap/adtag/utils/JtLocation;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/jumptap/adtag/utils/JtLocation;->getInstance()Lcom/jumptap/adtag/utils/JtLocation;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/jumptap/adtag/utils/JtLocation;->registerLocationListeners(Landroid/content/Context;)V

    .line 40
    :cond_0
    return-void
.end method

.method private registerLocationListeners(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    :try_start_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    .line 48
    .local v7, "isCoarseLocationPermissionGranted":I
    if-nez v7, :cond_1

    .line 52
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/jumptap/adtag/utils/JtLocation;->locationManager:Landroid/location/LocationManager;

    .line 57
    sget-object v0, Lcom/jumptap/adtag/utils/JtLocation;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/jumptap/adtag/utils/JtLocation;->setCurrentLocation(Landroid/location/Location;)V

    .line 59
    iget-object v0, p0, Lcom/jumptap/adtag/utils/JtLocation;->listenerCoarse:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/jumptap/adtag/utils/JtLocation;->createLocationListeners()V

    .line 65
    :cond_0
    sget-object v0, Lcom/jumptap/adtag/utils/JtLocation;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x1f4

    const/high16 v4, 0x447a0000    # 1000.0f

    iget-object v5, p0, Lcom/jumptap/adtag/utils/JtLocation;->listenerCoarse:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 87
    .end local v7    # "isCoarseLocationPermissionGranted":I
    :goto_0
    return-void

    .line 70
    .restart local v7    # "isCoarseLocationPermissionGranted":I
    :cond_1
    const-string v0, "JtAd"

    const-string v1, "Requires ACCESS_COARSE_LOCATION permission"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 73
    .end local v7    # "isCoarseLocationPermissionGranted":I
    :catch_0
    move-exception v8

    .line 74
    .local v8, "secExp":Ljava/lang/SecurityException;
    const-string v0, "JtAd"

    const-string v1, "Requires ACCESS_COARSE_LOCATION permission"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v8    # "secExp":Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 80
    .local v6, "illArg":Ljava/lang/IllegalArgumentException;
    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    :cond_2
    const-string v0, "JtAd"

    const-string v1, "Emulator is not sending location updates."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_3
    throw v6
.end method

.method private static setCurrentLocation(Landroid/location/Location;)V
    .locals 0
    .param p0, "currentLocation"    # Landroid/location/Location;

    .prologue
    .line 113
    sput-object p0, Lcom/jumptap/adtag/utils/JtLocation;->currentLocation:Landroid/location/Location;

    .line 114
    return-void
.end method
