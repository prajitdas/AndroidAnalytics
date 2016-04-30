.class public final Lcom/millennialmedia/android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x19
	name = "styleable"
.end annotation


# static fields
.field public static final MMAdView:[I

.field public static final MMAdView_acid:I = 0x1

.field public static final MMAdView_age:I = 0x3

.field public static final MMAdView_apid:I = 0x0

.field public static final MMAdView_children:I = 0xb

.field public static final MMAdView_education:I = 0xc

.field public static final MMAdView_ethnicity:I = 0x8

.field public static final MMAdView_gender:I = 0x4

.field public static final MMAdView_height:I = 0xe

.field public static final MMAdView_ignoreDensityScaling:I = 0x2

.field public static final MMAdView_income:I = 0x6

.field public static final MMAdView_keywords:I = 0x7

.field public static final MMAdView_marital:I = 0xa

.field public static final MMAdView_orientation:I = 0x9

.field public static final MMAdView_politics:I = 0xd

.field public static final MMAdView_width:I = 0xf

.field public static final MMAdView_zip:I = 0x5

.field public static final MMBannerAdView:[I

.field public static final MMBannerAdView_height:I = 0x0

.field public static final MMBannerAdView_width:I = 0x1


# direct methods
.method static constructor <clinit>()V
	.locals 1

	.prologue
	.line 189
	const/16 v0, 0x10

	new-array v0, v0, [I

	fill-array-data v0, :array_0

	sput-object v0, Lcom/millennialmedia/android/R$styleable;->MMAdView:[I

	.line 431
	const/4 v0, 0x2

	new-array v0, v0, [I

	fill-array-data v0, :array_1

	sput-object v0, Lcom/millennialmedia/android/R$styleable;->MMBannerAdView:[I

	return-void

	.line 189
	:array_0
	.array-data 4
		0x7f010000
		0x7f010001
		0x7f010002
		0x7f010003
		0x7f010004
		0x7f010005
		0x7f010006
		0x7f010007
		0x7f010008
		0x7f010009
		0x7f01000a
		0x7f01000b
		0x7f01000c
		0x7f01000d
		0x7f01000e
		0x7f01000f
	.end array-data

	.line 431
	:array_1
	.array-data 4
		0x7f01000e
		0x7f01000f
	.end array-data
.end method

.method public constructor <init>()V
	.locals 0

	.prologue
	.line 148
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method
