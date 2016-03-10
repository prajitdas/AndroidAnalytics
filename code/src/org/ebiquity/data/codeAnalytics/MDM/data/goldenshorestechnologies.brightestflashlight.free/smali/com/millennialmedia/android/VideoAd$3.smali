.class final Lcom/millennialmedia/android/VideoAd$3;
.super Ljava/lang/Object;
.source "VideoAd.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/millennialmedia/android/VideoAd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/VideoAd;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 509
    new-instance v0, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v0, p1}, Lcom/millennialmedia/android/VideoAd;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd$3;->createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/millennialmedia/android/VideoAd;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 515
    new-array v0, p1, [Lcom/millennialmedia/android/VideoAd;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd$3;->newArray(I)[Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    return-object v0
.end method
