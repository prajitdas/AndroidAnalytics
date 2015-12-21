.class Lcom/millennialmedia/android/AdViewOverlayView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/AdViewOverlayView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public customInlineLayoutParams:Ljava/lang/Object;

.field gson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$SavedState$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->gson:Ljava/lang/String;

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/millennialmedia/android/AdViewOverlayView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/millennialmedia/android/AdViewOverlayView$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 205
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 217
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->gson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    return-void
.end method
