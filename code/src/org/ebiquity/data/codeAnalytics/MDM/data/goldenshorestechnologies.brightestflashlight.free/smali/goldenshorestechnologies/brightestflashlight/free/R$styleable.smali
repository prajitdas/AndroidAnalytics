.class public final Lgoldenshorestechnologies/brightestflashlight/free/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lgoldenshorestechnologies/brightestflashlight/free/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x19
	name = "styleable"
.end annotation


# static fields
.field public static final com_admob_android_ads_AdView:[I

.field public static final com_admob_android_ads_AdView_backgroundColor:I = 0x0

.field public static final com_admob_android_ads_AdView_keywords:I = 0x3

.field public static final com_admob_android_ads_AdView_primaryTextColor:I = 0x1

.field public static final com_admob_android_ads_AdView_refreshInterval:I = 0x4

.field public static final com_admob_android_ads_AdView_secondaryTextColor:I = 0x2

.field public static final org_zestadz_ads_ZestadzAd:[I

.field public static final org_zestadz_ads_ZestadzAd_isGoneWithoutAd:I = 0x2

.field public static final org_zestadz_ads_ZestadzAd_testing:I = 0x0

.field public static final org_zestadz_ads_ZestadzAd_textColor:I = 0x1


# direct methods
.method static constructor <clinit>()V
	.locals 1

	.prologue
	.line 908
	const/4 v0, 0x5

	new-array v0, v0, [I

	fill-array-data v0, :array_0

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/R$styleable;->com_admob_android_ads_AdView:[I

	.line 999
	const/4 v0, 0x3

	new-array v0, v0, [I

	fill-array-data v0, :array_1

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/R$styleable;->org_zestadz_ads_ZestadzAd:[I

	.line 1044
	return-void

	.line 908
	nop

	:array_0
	.array-data 4
		0x7f010000
		0x7f010001
		0x7f010002
		0x7f010003
		0x7f010004
	.end array-data

	.line 999
	:array_1
	.array-data 4
		0x7f010005
		0x7f010006
		0x7f010007
	.end array-data
.end method

.method public constructor <init>()V
	.locals 0

	.prologue
	.line 889
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method
