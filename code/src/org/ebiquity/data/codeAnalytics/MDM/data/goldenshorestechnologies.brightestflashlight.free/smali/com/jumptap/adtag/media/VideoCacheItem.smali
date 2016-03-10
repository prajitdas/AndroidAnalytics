.class public Lcom/jumptap/adtag/media/VideoCacheItem;
.super Ljava/lang/Object;
.source "VideoCacheItem.java"


# static fields
.field public static final URL_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private adID:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/jumptap/adtag/media/VideoCacheItem;->init(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "adid"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/jumptap/adtag/media/VideoCacheItem;->init(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "adid"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/jumptap/adtag/media/VideoCacheItem;->init(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private init(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "adid"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;

    .prologue
    .line 57
    iput p1, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->id:I

    .line 58
    iput-object p2, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->adID:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->date:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getAdID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->adID:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->id:I

    return v0
.end method

.method public setAdID(Ljava/lang/String;)V
    .locals 0
    .param p1, "adID"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->adID:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->date:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->id:I

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,adID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->adID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   ,date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jumptap/adtag/media/VideoCacheItem;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
