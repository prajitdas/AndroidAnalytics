.class Lcom/millennialmedia/android/HttpMMHeaders;
.super Ljava/lang/Object;
.source "HttpMMHeaders.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/HttpMMHeaders;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_MM_CUSTOM_CLOSE:Ljava/lang/String; = "X-MM-USE-CUSTOM-CLOSE"

.field private static final HEADER_MM_ENABLE_HARDWARE_ACCEL:Ljava/lang/String; = "X-MM-ENABLE-HARDWARE-ACCELERATION"

.field private static final HEADER_MM_TRANSITION:Ljava/lang/String; = "X-MM-TRANSITION"

.field private static final HEADER_MM_TRANSITION_DURATION:Ljava/lang/String; = "X-MM-TRANSITION-DURATION"

.field private static final HEADER_MM_TRANSPARENT:Ljava/lang/String; = "X-MM-TRANSPARENT"

.field static final serialVersionUID:J = 0xb41d817d0ea16L


# instance fields
.field enableHardwareAccel:Z

.field isTransparent:Z

.field transition:Ljava/lang/String;

.field transitionTimeInMillis:J

.field useCustomClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/millennialmedia/android/HttpMMHeaders$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpMMHeaders$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/HttpMMHeaders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v2, 0x3

    :try_start_0
    new-array v0, v2, [Z

    .line 45
    .local v0, "booleanValues":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 46
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->isTransparent:Z

    .line 47
    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->useCustomClose:Z

    .line 48
    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->enableHardwareAccel:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transitionTimeInMillis:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "booleanValues":[Z
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/http/Header;)V
    .locals 4
    .param p1, "allHeaders"    # [Lorg/apache/http/Header;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 32
    .local v1, "header":Lorg/apache/http/Header;
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/HttpMMHeaders;->checkTransparent(Lorg/apache/http/Header;)V

    .line 33
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/HttpMMHeaders;->checkTransition(Lorg/apache/http/Header;)V

    .line 34
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/HttpMMHeaders;->checkTransitionDuration(Lorg/apache/http/Header;)V

    .line 35
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/HttpMMHeaders;->checkUseCustomClose(Lorg/apache/http/Header;)V

    .line 36
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/HttpMMHeaders;->checkEnableHardwareAccel(Lorg/apache/http/Header;)V

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_0
    return-void
.end method

.method private checkEnableHardwareAccel(Lorg/apache/http/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 100
    const-string v0, "X-MM-ENABLE-HARDWARE-ACCELERATION"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->enableHardwareAccel:Z

    .line 104
    :cond_0
    return-void
.end method

.method private checkTransition(Lorg/apache/http/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 72
    const-string v0, "X-MM-TRANSITION"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    .line 76
    :cond_0
    return-void
.end method

.method private checkTransitionDuration(Lorg/apache/http/Header;)V
    .locals 3
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 80
    const-string v1, "X-MM-TRANSITION-DURATION"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 85
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transitionTimeInMillis:J

    .line 88
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkTransparent(Lorg/apache/http/Header;)V
    .locals 3
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 60
    const-string v1, "X-MM-TRANSPARENT"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->isTransparent:Z

    .line 68
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkUseCustomClose(Lorg/apache/http/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 92
    const-string v0, "X-MM-USE-CUSTOM-CLOSE"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->useCustomClose:Z

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method updateArgumentsWithSettings(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "transparent"

    iget-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->isTransparent:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "transition"

    iget-object v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "transitionDuration"

    iget-wide v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transitionTimeInMillis:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "useCustomClose"

    iget-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->useCustomClose:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "enableHardwareAccel"

    iget-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->enableHardwareAccel:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    const/4 v1, 0x3

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->isTransparent:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->useCustomClose:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->enableHardwareAccel:Z

    aput-boolean v2, v0, v1

    .line 116
    .local v0, "booleanValues":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 117
    iget-object v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-wide v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transitionTimeInMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    return-void
.end method
