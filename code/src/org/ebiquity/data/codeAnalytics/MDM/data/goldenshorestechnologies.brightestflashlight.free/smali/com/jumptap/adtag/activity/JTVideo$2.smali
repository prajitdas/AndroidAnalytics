.class final Lcom/jumptap/adtag/activity/JTVideo$2;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "JTVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jumptap/adtag/activity/JTVideo;->parseAdContent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private isAdID:Z

.field private isClickThrough:Z

.field private isImpression:Z

.field private isMediaFile:Z

.field private isUrl:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 356
    iput-boolean v0, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isImpression:Z

    .line 357
    iput-boolean v0, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isClickThrough:Z

    .line 358
    iput-boolean v0, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isMediaFile:Z

    .line 359
    iput-boolean v0, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isUrl:Z

    .line 360
    iput-boolean v0, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isAdID:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 398
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 399
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isUrl:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 401
    iget-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isImpression:Z

    if-eqz v1, :cond_1

    .line 402
    # getter for: Lcom/jumptap/adtag/activity/JTVideo;->trackingUrlArr:Ljava/util/List;
    invoke-static {}, Lcom/jumptap/adtag/activity/JTVideo;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isClickThrough:Z

    if-eqz v1, :cond_2

    .line 404
    # setter for: Lcom/jumptap/adtag/activity/JTVideo;->clickThroughUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/jumptap/adtag/activity/JTVideo;->access$402(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 405
    :cond_2
    iget-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isMediaFile:Z

    if-eqz v1, :cond_0

    .line 406
    # setter for: Lcom/jumptap/adtag/activity/JTVideo;->videoUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/jumptap/adtag/activity/JTVideo;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 408
    :cond_3
    iget-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isAdID:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    # setter for: Lcom/jumptap/adtag/activity/JTVideo;->adId:Ljava/lang/String;
    invoke-static {v0}, Lcom/jumptap/adtag/activity/JTVideo;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 382
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "Impression"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iput-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isImpression:Z

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const-string v0, "ClickThrough"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    iput-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isClickThrough:Z

    goto :goto_0

    .line 387
    :cond_2
    const-string v0, "MediaFile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    iput-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isMediaFile:Z

    goto :goto_0

    .line 389
    :cond_3
    const-string v0, "URL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    iput-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isUrl:Z

    goto :goto_0

    .line 391
    :cond_4
    const-string v0, "AdID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iput-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isAdID:Z

    goto :goto_0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 364
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 368
    const-string v0, "Impression"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 369
    iput-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isImpression:Z

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    const-string v0, "ClickThrough"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 371
    iput-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isClickThrough:Z

    goto :goto_0

    .line 372
    :cond_2
    const-string v0, "MediaFile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 373
    iput-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isMediaFile:Z

    goto :goto_0

    .line 374
    :cond_3
    const-string v0, "URL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    iput-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isUrl:Z

    goto :goto_0

    .line 376
    :cond_4
    const-string v0, "AdID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iput-boolean v1, p0, Lcom/jumptap/adtag/activity/JTVideo$2;->isAdID:Z

    goto :goto_0
.end method
