.class public Lcom/millennialmedia/location/LocationValet;
.super Ljava/lang/Object;
.source "LocationValet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/location/LocationValet$ILocationValetListener;,
        Lcom/millennialmedia/location/LocationValet$ValetLocationListener;
    }
.end annotation


# static fields
.field private static final TWO_MINUTES:I = 0x1d4c0


# instance fields
.field private _lastGoodLocation:Landroid/location/Location;

.field private _listener:Landroid/location/LocationListener;

.field private final _locationManager:Landroid/location/LocationManager;

.field private final _valetListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/location/LocationValet$ILocationValetListener;",
            ">;"
        }
    .end annotation
.end field

.field private hasGpsPermission:Z

.field private hasNetworkPermission:Z

.field public mParentActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/millennialmedia/location/LocationValet$ILocationValetListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Lcom/millennialmedia/location/LocationValet$ILocationValetListener;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v3, p0, Lcom/millennialmedia/location/LocationValet;->mParentActivity:Landroid/app/Activity;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_valetListener:Ljava/lang/ref/WeakReference;

    .line 39
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_locationManager:Landroid/location/LocationManager;

    .line 40
    new-instance v0, Lcom/millennialmedia/location/LocationValet$ValetLocationListener;

    invoke-direct {v0, p0, v3}, Lcom/millennialmedia/location/LocationValet$ValetLocationListener;-><init>(Lcom/millennialmedia/location/LocationValet;Lcom/millennialmedia/location/LocationValet$ValetLocationListener;)V

    iput-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_listener:Landroid/location/LocationListener;

    .line 42
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/millennialmedia/location/LocationValet;->hasNetworkPermission:Z

    .line 43
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/millennialmedia/location/LocationValet;->hasGpsPermission:Z

    .line 44
    iput-object p2, p0, Lcom/millennialmedia/location/LocationValet;->mParentActivity:Landroid/app/Activity;

    .line 45
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    :cond_1
    move v1, v2

    .line 43
    goto :goto_1
.end method

.method static synthetic access$0(Lcom/millennialmedia/location/LocationValet;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_lastGoodLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1(Lcom/millennialmedia/location/LocationValet;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/millennialmedia/location/LocationValet;->updateValetListeners(Landroid/location/Location;)V

    return-void
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider1"    # Ljava/lang/String;
    .param p2, "provider2"    # Ljava/lang/String;

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 169
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateValetListeners(Landroid/location/Location;)V
    .locals 2
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/millennialmedia/location/LocationValet;->_lastGoodLocation:Landroid/location/Location;

    .line 76
    iget-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_valetListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_valetListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/location/LocationValet$ILocationValetListener;

    iget-object v1, p0, Lcom/millennialmedia/location/LocationValet;->mParentActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/millennialmedia/location/LocationValet$ILocationValetListener;->onBetterLocationFound(Landroid/app/Activity;Landroid/location/Location;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method protected isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 115
    if-nez p2, :cond_0

    .line 118
    const/4 v10, 0x1

    .line 161
    :goto_0
    return v10

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 123
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 124
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 125
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 129
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 131
    const/4 v10, 0x1

    goto :goto_0

    .line 123
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 124
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 125
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 134
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 136
    const/4 v10, 0x0

    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 141
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 142
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 143
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 146
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/millennialmedia/location/LocationValet;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 149
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    .line 151
    const/4 v10, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 142
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 143
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 153
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 155
    const/4 v10, 0x1

    goto :goto_0

    .line 157
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 159
    const/4 v10, 0x1

    goto :goto_0

    .line 161
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public startAquire(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "immediateResult"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-boolean v0, p0, Lcom/millennialmedia/location/LocationValet;->hasGpsPermission:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/location/LocationValet;->updateValetListeners(Landroid/location/Location;)V

    .line 58
    :cond_0
    :goto_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/millennialmedia/location/LocationValet;->hasNetworkPermission:Z

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0xbb8

    iget-object v5, p0, Lcom/millennialmedia/location/LocationValet;->_listener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 64
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    return-object v0

    .line 54
    :cond_1
    iget-boolean v0, p0, Lcom/millennialmedia/location/LocationValet;->hasNetworkPermission:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/location/LocationValet;->updateValetListeners(Landroid/location/Location;)V

    goto :goto_0

    .line 60
    :cond_2
    iget-boolean v0, p0, Lcom/millennialmedia/location/LocationValet;->hasGpsPermission:Z

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/millennialmedia/location/LocationValet;->_listener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    .line 63
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2
.end method

.method public stopAquire()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/millennialmedia/location/LocationValet;->_locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/millennialmedia/location/LocationValet;->_listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 70
    return-void
.end method
