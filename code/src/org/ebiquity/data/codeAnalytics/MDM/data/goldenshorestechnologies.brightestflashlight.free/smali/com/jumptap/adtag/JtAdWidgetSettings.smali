.class public Lcom/jumptap/adtag/JtAdWidgetSettings;
.super Ljava/lang/Object;
.source "JtAdWidgetSettings.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jumptap/adtag/JtAdWidgetSettings$AdultContent;
    }
.end annotation


# static fields
.field private static final ANDROID_OS:Ljava/lang/String; = "Linux"

.field private static final BASE_JT_URL:Ljava/lang/String; = "http://a.jumptap.com/a/ads?textOnly=f"

.field private static final DEFAULT_LANG:Ljava/lang/String; = "en"

.field private static final DEFAULT_REFRESH_PERIOD:I = 0x3c

.field private static final DISMISS_BUTTON_DEFAULT_LABEL:Ljava/lang/String; = "Close"

.field private static final INTERSTITIAL_SHOW_DEFAULT_TIME:I = 0xa

.field private static final JT_BUNDLE:Ljava/lang/String; = "com.jumptap.adtag-android"

.field private static final JT_LIB_VER:Ljava/lang/String; = "2.5.0.0"

.field private static final TAPLINK_VER:Ljava/lang/String; = "v28"

.field private static final XHTML:Ljava/lang/String; = "xhtml"


# instance fields
.field private adFormat:Ljava/lang/String;

.field private adultContentType:Ljava/lang/String;

.field private age:Ljava/lang/String;

.field private alternateImage:Landroid/graphics/Bitmap;

.field private appId:Ljava/lang/String;

.field private appVer:Ljava/lang/String;

.field private backgroundColor:I

.field private bundleVersion:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private dismissButtonLabel:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private height:I

.field private hhi:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private interstitialshowTime:I

.field private jtLibVer:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private refreshPeriod:I

.field private shouldDebugNetworkTraffic:Z

.field private shouldSendLocation:Z

.field private siteId:Ljava/lang/String;

.field private spotId:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private width:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x140

    iput v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->width:I

    .line 49
    const/16 v0, 0x32

    iput v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->height:I

    .line 51
    iput-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->publisherId:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->siteId:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->spotId:Ljava/lang/String;

    .line 54
    const-string v0, "http://a.jumptap.com/a/ads?textOnly=f"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->host:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->userAgent:Ljava/lang/String;

    .line 56
    const-string v0, "en"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->language:Ljava/lang/String;

    .line 57
    const-string v0, "notallowed"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->adultContentType:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->postalCode:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->country:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->age:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->gender:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->hhi:Ljava/lang/String;

    .line 63
    const-string v0, "com.jumptap.adtag-android"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->bundleVersion:Ljava/lang/String;

    .line 64
    const-string v0, "xhtml"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->adFormat:Ljava/lang/String;

    .line 65
    const-string v0, "2.5.0.0"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->jtLibVer:Ljava/lang/String;

    .line 66
    const-string v0, "v28"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->version:Ljava/lang/String;

    .line 67
    const-string v0, "Linux"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->os:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->appId:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->appVer:Ljava/lang/String;

    .line 71
    const/16 v0, 0x3c

    iput v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->refreshPeriod:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->shouldSendLocation:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->backgroundColor:I

    .line 76
    const-string v0, "Close"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->dismissButtonLabel:Ljava/lang/String;

    .line 77
    const/16 v0, 0xa

    iput v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->interstitialshowTime:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->shouldDebugNetworkTraffic:Z

    .line 81
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "publisherId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x140

    iput v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->width:I

    .line 49
    const/16 v0, 0x32

    iput v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->height:I

    .line 51
    iput-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->publisherId:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->siteId:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->spotId:Ljava/lang/String;

    .line 54
    const-string v0, "http://a.jumptap.com/a/ads?textOnly=f"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->host:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->userAgent:Ljava/lang/String;

    .line 56
    const-string v0, "en"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->language:Ljava/lang/String;

    .line 57
    const-string v0, "notallowed"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->adultContentType:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->postalCode:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->country:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->age:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->gender:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->hhi:Ljava/lang/String;

    .line 63
    const-string v0, "com.jumptap.adtag-android"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->bundleVersion:Ljava/lang/String;

    .line 64
    const-string v0, "xhtml"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->adFormat:Ljava/lang/String;

    .line 65
    const-string v0, "2.5.0.0"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->jtLibVer:Ljava/lang/String;

    .line 66
    const-string v0, "v28"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->version:Ljava/lang/String;

    .line 67
    const-string v0, "Linux"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->os:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->appId:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->appVer:Ljava/lang/String;

    .line 71
    const/16 v0, 0x3c

    iput v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->refreshPeriod:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->shouldSendLocation:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->backgroundColor:I

    .line 76
    const-string v0, "Close"

    iput-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->dismissButtonLabel:Ljava/lang/String;

    .line 77
    const/16 v0, 0xa

    iput v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->interstitialshowTime:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->shouldDebugNetworkTraffic:Z

    .line 84
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->publisherId:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public copy()Lcom/jumptap/adtag/JtAdWidgetSettings;
    .locals 5

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "clonedWidgetSettings":Lcom/jumptap/adtag/JtAdWidgetSettings;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/jumptap/adtag/JtAdWidgetSettings;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    const-string v3, "JtAd"

    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getAdFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->adFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getAdultContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->adultContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->alternateImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->backgroundColor:I

    return v0
.end method

.method public getBundleVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->bundleVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDismissButtonLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->dismissButtonLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getHHI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->hhi:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->height:I

    return v0
.end method

.method public getHostURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getInterstitialshowTime()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->interstitialshowTime:I

    return v0
.end method

.method public getJtLibVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->jtLibVer:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshPeriod()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->refreshPeriod:I

    return v0
.end method

.method public getShouldDebugNetworkTraffic()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->shouldDebugNetworkTraffic:Z

    return v0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->siteId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->spotId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->userAgent:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 185
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->userAgent:Ljava/lang/String;

    .line 186
    const-string v1, "JtAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userAgent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v0    # "settings":Landroid/webkit/WebSettings;
    :cond_0
    iget-object v1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->userAgent:Ljava/lang/String;

    return-object v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->width:I

    return v0
.end method

.method public isShouldSendLocation()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->shouldSendLocation:Z

    return v0
.end method

.method public setAdFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "adFormat"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->adFormat:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setAdultContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "adultContent"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->adultContentType:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->age:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setAlternateImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "alternateImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->alternateImage:Landroid/graphics/Bitmap;

    .line 402
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->appId:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVer"    # Ljava/lang/String;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->appVer:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 418
    iput p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->backgroundColor:I

    .line 419
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->country:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setDismissButtonLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "dismissButtonLabel"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->dismissButtonLabel:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->gender:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setHHI(Ljava/lang/String;)V
    .locals 0
    .param p1, "hhi"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->hhi:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 507
    iput p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->height:I

    .line 508
    return-void
.end method

.method public setHostURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->host:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setInterstitialshowTime(I)V
    .locals 0
    .param p1, "interstitialshowTime"    # I

    .prologue
    .line 443
    iput p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->interstitialshowTime:I

    .line 444
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->language:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->postalCode:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherId"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->publisherId:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setRefreshPeriod(I)V
    .locals 0
    .param p1, "refreshPeriod"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->refreshPeriod:I

    .line 321
    return-void
.end method

.method public setShouldDebugNetworkTraffic(Z)V
    .locals 0
    .param p1, "should"    # Z

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->shouldDebugNetworkTraffic:Z

    .line 512
    return-void
.end method

.method public setShouldSendLocation(Z)V
    .locals 0
    .param p1, "shouldSendLocation"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->shouldSendLocation:Z

    .line 377
    return-void
.end method

.method public setSiteId(Ljava/lang/String;)V
    .locals 0
    .param p1, "siteId"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->siteId:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setSpotId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spotId"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->spotId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->version:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 499
    iput p1, p0, Lcom/jumptap/adtag/JtAdWidgetSettings;->width:I

    .line 500
    return-void
.end method
