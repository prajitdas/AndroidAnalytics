.class public Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;
.super Ljava/lang/Object;
.source "JtAdWidgetSettingsFactory.java"


# static fields
.field private static widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 28
    .local v0, "retInstance":Lcom/jumptap/adtag/JtAdWidgetSettings;
    sget-object v1, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-direct {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;-><init>()V

    sput-object v1, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    .line 30
    sget-object v0, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    sget-object v1, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

    invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->copy()Lcom/jumptap/adtag/JtAdWidgetSettings;

    move-result-object v0

    goto :goto_0
.end method
