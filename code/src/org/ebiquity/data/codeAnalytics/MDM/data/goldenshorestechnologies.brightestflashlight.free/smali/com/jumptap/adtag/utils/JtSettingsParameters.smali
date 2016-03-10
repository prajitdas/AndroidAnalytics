.class public Lcom/jumptap/adtag/utils/JtSettingsParameters;
.super Ljava/lang/Object;
.source "JtSettingsParameters.java"


# static fields
.field private static final ADULT_CONTENT_TYPE:Ljava/lang/String; = "adultContentType"

.field private static final AGE:Ljava/lang/String; = "age"

.field private static final ALTERNATE_IMAGE:Ljava/lang/String; = "alternateImage"

.field private static final APP_ID:Ljava/lang/String; = "applicationId"

.field private static final APP_VER:Ljava/lang/String; = "applicationVersion"

.field private static final BACKGROUND_COLOR:Ljava/lang/String; = "alternateColor"

.field private static final COUNTRY:Ljava/lang/String; = "country"

.field private static final DISMIIS_BUTTON_LABEL:Ljava/lang/String; = "dismissLabel"

.field private static final GENDER:Ljava/lang/String; = "gender"

.field private static final HHI:Ljava/lang/String; = "hhi"

.field private static final HOST:Ljava/lang/String; = "host"

.field private static final INTERDTITIAL_TIME:Ljava/lang/String; = "interstitialTime"

.field private static final LANGUAGE:Ljava/lang/String; = "language"

.field private static final POSTAL_CODE:Ljava/lang/String; = "postalCode"

.field private static final PUBLISHER_ID:Ljava/lang/String; = "publisherId"

.field private static final REFRESH_PERIOD:Ljava/lang/String; = "refreshPeriodInSec"

.field private static final SITE_ID:Ljava/lang/String; = "siteId"

.field private static final SPOT_ID:Ljava/lang/String; = "spotId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "attributes"    # Landroid/util/AttributeSet;
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, -0x1

    .line 66
    .local v0, "paramValue":I
    if-eqz p0, :cond_0

    .line 67
    const/4 v1, -0x1

    invoke-interface {p0, p1, p2, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 69
    :cond_0
    return v0
.end method

.method public static getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "attributes"    # Landroid/util/AttributeSet;
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0, p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "paramValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    .end local v0    # "paramValue":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUnsignedIntValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "attributes"    # Landroid/util/AttributeSet;
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, -0x1

    .line 57
    .local v0, "paramValue":I
    if-eqz p0, :cond_0

    .line 58
    const/4 v1, -0x1

    invoke-interface {p0, p1, p2, v1}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 60
    :cond_0
    return v0
.end method

.method public static populateSettings(Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 5
    .param p0, "widgetSettings"    # Lcom/jumptap/adtag/JtAdWidgetSettings;
    .param p1, "attributes"    # Landroid/util/AttributeSet;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "paramValue":Ljava/lang/String;
    const/4 v0, -0x1

    .line 75
    .local v0, "intValue":I
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "publisherId"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setPublisherId(Ljava/lang/String;)V

    .line 78
    :cond_0
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "siteId"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSiteId(Ljava/lang/String;)V

    .line 81
    :cond_1
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "spotId"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSpotId(Ljava/lang/String;)V

    .line 84
    :cond_2
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "host"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setHostURL(Ljava/lang/String;)V

    .line 87
    :cond_3
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "language"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setLanguage(Ljava/lang/String;)V

    .line 90
    :cond_4
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "adultContentType"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 91
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setAdultContentType(Ljava/lang/String;)V

    .line 93
    :cond_5
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "postalCode"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 94
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setPostalCode(Ljava/lang/String;)V

    .line 96
    :cond_6
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "country"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 97
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setCountry(Ljava/lang/String;)V

    .line 99
    :cond_7
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "age"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 100
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setAge(Ljava/lang/String;)V

    .line 102
    :cond_8
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "gender"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 103
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setGender(Ljava/lang/String;)V

    .line 105
    :cond_9
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "hhi"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 106
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setHHI(Ljava/lang/String;)V

    .line 108
    :cond_a
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "alternateImage"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 109
    invoke-static {v1, p0, p2}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->setAlternativeImage(Ljava/lang/String;Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/content/Context;)V

    .line 111
    :cond_b
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "dismissLabel"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 112
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setDismissButtonLabel(Ljava/lang/String;)V

    .line 114
    :cond_c
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "alternateColor"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getUnsignedIntValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_d

    .line 115
    invoke-virtual {p0, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setBackgroundColor(I)V

    .line 117
    :cond_d
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "refreshPeriodInSec"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getIntValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_e

    .line 118
    invoke-virtual {p0, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setRefreshPeriod(I)V

    .line 120
    :cond_e
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "interstitialTime"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getIntValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_f

    .line 121
    invoke-virtual {p0, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setInterstitialshowTime(I)V

    .line 123
    :cond_f
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "applicationId"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 124
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setApplicationId(Ljava/lang/String;)V

    .line 126
    :cond_10
    const-string v2, "http://www.jumptap.com/lib/android"

    const-string v3, "applicationVersion"

    invoke-static {p1, v2, v3}, Lcom/jumptap/adtag/utils/JtSettingsParameters;->getStringValueFromAttributes(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 127
    invoke-virtual {p0, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setApplicationVersion(Ljava/lang/String;)V

    .line 129
    :cond_11
    return-void
.end method

.method private static setAlternativeImage(Ljava/lang/String;Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/content/Context;)V
    .locals 9
    .param p0, "paramValue"    # Ljava/lang/String;
    .param p1, "widgetSettings"    # Lcom/jumptap/adtag/JtAdWidgetSettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 135
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "defaultPackage":Ljava/lang/String;
    const-string v6, "JtAd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Here is the parameter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " defaultPackage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 139
    .local v4, "imageID":I
    if-eqz v4, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 142
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setAlternateImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "JtAd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot found Resource:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Going to load system alternative image"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v6, "JtAd"

    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const-string v6, "JtAd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot found Resource:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
