.class Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;
.super Lcom/millennialmedia/android/MMAdImpl;
.source "MMInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/MMInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = "MMInterstitialAdImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMInterstitial;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMInterstitial;Landroid/content/Context;)V
	.locals 2
	.param p2, "context"	# Landroid/content/Context;

	.prologue
	.line 143
	iput-object p1, p0, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;->this$0:Lcom/millennialmedia/android/MMInterstitial;

	.line 144
	invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMAdImpl;-><init>(Landroid/content/Context;)V

	.line 145
	new-instance v0, Lcom/millennialmedia/android/AdProperties;

	invoke-virtual {p0}, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	invoke-direct {v0, v1}, Lcom/millennialmedia/android/AdProperties;-><init>(Landroid/content/Context;)V

	iput-object v0, p0, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;->adProperties:Lcom/millennialmedia/android/AdProperties;

	.line 146
	return-void
.end method


# virtual methods
.method bridge synthetic getCallingAd()Lcom/millennialmedia/android/MMAd;
	.locals 1

	.prologue
	.line 140
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMInterstitial;

	move-result-object v0

	return-object v0
.end method

.method getCallingAd()Lcom/millennialmedia/android/MMInterstitial;
	.locals 1

	.prologue
	.line 151
	iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;->this$0:Lcom/millennialmedia/android/MMInterstitial;

	return-object v0
.end method
