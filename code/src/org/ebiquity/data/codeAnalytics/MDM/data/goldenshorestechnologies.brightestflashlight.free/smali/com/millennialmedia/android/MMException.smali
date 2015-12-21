.class public final Lcom/millennialmedia/android/MMException;
.super Ljava/lang/RuntimeException;
.source "MMException.java"


# static fields
.field public static final AD_BROKEN_REFERENCE:I = 0x19

.field public static final AD_NO_ACTIVITY:I = 0x1a

.field public static final CACHE_NOT_EMPTY:I = 0x11

.field public static final DISPLAY_AD_ALREADY_DISPLAYED:I = 0x17

.field public static final DISPLAY_AD_EXPIRED:I = 0x15

.field public static final DISPLAY_AD_NOT_FOUND:I = 0x16

.field public static final DISPLAY_AD_NOT_PERMITTED:I = 0x18

.field public static final DISPLAY_AD_NOT_READY:I = 0x14

.field public static final INNER_EXCEPTION:I = 0x2

.field public static final INVALID_PARAMETER:I = 0x1

.field public static final MAIN_THREAD_REQUIRED:I = 0x3

.field static final MISSING_MMJS:Ljava/lang/String; = "MMJS is not downloaded"

.field public static final REQUEST_ALREADY_CACHING:I = 0xd

.field public static final REQUEST_BAD_RESPONSE:I = 0xf

.field public static final REQUEST_IN_PROGRESS:I = 0xc

.field public static final REQUEST_NOT_FILLED:I = 0xe

.field public static final REQUEST_NOT_PERMITTED:I = 0x10

.field public static final REQUEST_NO_NETWORK:I = 0xb

.field public static final REQUEST_TIMEOUT:I = 0xa

.field public static final UNKNOWN_ERROR:I = 0x64


# instance fields
.field private code:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 65
    invoke-static {p1}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    iput p1, p0, Lcom/millennialmedia/android/MMException;->code:I

    .line 67
    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/MMException;->code:I

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    iput p2, p0, Lcom/millennialmedia/android/MMException;->code:I

    .line 73
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/MMException;->code:I

    .line 61
    return-void
.end method

.method static getErrorCodeMessage(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 82
    sparse-switch p0, :sswitch_data_0

    .line 121
    const-string v0, "No error."

    :goto_0
    return-object v0

    .line 85
    :sswitch_0
    const-string v0, "An invalid parameter was given."

    goto :goto_0

    .line 87
    :sswitch_1
    const-string v0, "Requires the main thread."

    goto :goto_0

    .line 89
    :sswitch_2
    const-string v0, "The request timed out."

    goto :goto_0

    .line 91
    :sswitch_3
    const-string v0, "There is no network available."

    goto :goto_0

    .line 93
    :sswitch_4
    const-string v0, "A request is already in progress."

    goto :goto_0

    .line 95
    :sswitch_5
    const-string v0, "A request is already being cached."

    goto :goto_0

    .line 97
    :sswitch_6
    const-string v0, "The request was not filled by the server."

    goto :goto_0

    .line 99
    :sswitch_7
    const-string v0, "The server replied with unknown or bad content."

    goto :goto_0

    .line 101
    :sswitch_8
    const-string v0, "The system is not permitting a request at this time, try again later."

    goto :goto_0

    .line 103
    :sswitch_9
    const-string v0, "Previously fetched ad exists in the playback queue"

    goto :goto_0

    .line 105
    :sswitch_a
    const-string v0, "There is no fetched ad to display."

    goto :goto_0

    .line 107
    :sswitch_b
    const-string v0, "The ad to display has expired."

    goto :goto_0

    .line 109
    :sswitch_c
    const-string v0, "The ad could not be found on disk."

    goto :goto_0

    .line 111
    :sswitch_d
    const-string v0, "The ad has already been displayed."

    goto :goto_0

    .line 113
    :sswitch_e
    const-string v0, "The ad has already been displayed."

    goto :goto_0

    .line 115
    :sswitch_f
    const-string v0, "The reference to the ad view was broken."

    goto :goto_0

    .line 117
    :sswitch_10
    const-string v0, "The ad view does not have a parent activity."

    goto :goto_0

    .line 119
    :sswitch_11
    const-string v0, "An unknown error occured."

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x14 -> :sswitch_a
        0x15 -> :sswitch_b
        0x16 -> :sswitch_c
        0x17 -> :sswitch_d
        0x18 -> :sswitch_e
        0x19 -> :sswitch_f
        0x1a -> :sswitch_10
        0x64 -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/millennialmedia/android/MMException;->code:I

    return v0
.end method
