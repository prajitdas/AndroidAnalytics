.class public Lcom/jumptap/adtag/utils/JtAdUrlBuilder;
.super Ljava/lang/Object;
.source "JtAdUrlBuilder.java"


# static fields
.field private static final JT_COUNT:Ljava/lang/String; = "1"


# instance fields
.field private context:Landroid/content/Context;

.field private widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;


# direct methods
.method public constructor <init>(Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "widgetSettings"    # Lcom/jumptap/adtag/JtAdWidgetSettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    .line 22
    iput-object p2, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static encodeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 81
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    const-string v1, ""

    .line 89
    :goto_0
    return-object v1

    .line 85
    :cond_1
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 89
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public getAdUrl(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->getAdUrl(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdUrl(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "aditionalToUrl"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v6}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getHostURL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "jtUrl":Ljava/lang/StringBuilder;
    const-string v6, "&ua="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7, p1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getUserAgent(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v6, "&pub="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getPublisherId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v6, "&spot="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getSpotId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v6, "&site="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getSiteId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v6, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v6}, Lcom/jumptap/adtag/JtAdWidgetSettings;->isShouldSendLocation()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    iget-object v6, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/jumptap/adtag/utils/JtAdManager;->getLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "location":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 41
    const-string v6, "&ll="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v6, "&country="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v6, "&pc="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .end local v3    # "location":Ljava/lang/String;
    :cond_0
    const-string v6, "&mt-age="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getAge()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v6, "&mt-gender="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getGender()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v6, "&mt-hhi="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getHHI()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v6, "&hid_sha1="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdManager;->getHIDSHA1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v6, "&a="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getAdultContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v6, "&l="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v6, "&c="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1"

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v6, "&version="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v6, "&mt-speed="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdManager;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v6, "&mt-jtlib="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getJtLibVer()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v6, "&mt-bundle="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getBundleVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v6, "&mt-os="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getOs()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v6, "&mt-osversion="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/jumptap/adtag/utils/JtAdManager;->getSDKVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v6, "&mt-model="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/jumptap/adtag/utils/JtAdManager;->getAndroidModel()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v6, "&mt-make="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/jumptap/adtag/utils/JtAdManager;->getBrand()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v6, "&mt-fw="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/jumptap/adtag/utils/JtAdManager;->getKernelVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v6, "&mt-operator="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdManager;->getOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v6, "&mt-nradio="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdManager;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v6, "&mt-dradio="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdManager;->getPhoneType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    .line 68
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 69
    .local v0, "height":I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "widthString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "heightString":Ljava/lang/String;
    const-string v6, "&mt-width="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v6, "&mt-height="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/jumptap/adtag/utils/JtAdUrlBuilder;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    if-eqz p2, :cond_1

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
