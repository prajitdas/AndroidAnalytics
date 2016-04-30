.class Lcom/amobee/onlineHapi/RefreshTask;
.super Ljava/util/TimerTask;
.source "RefreshTask.java"


# instance fields
.field private amobeeAdView:Lcom/amobee/onlineHapi/AmobeeAdView;


# direct methods
.method public constructor <init>(Lcom/amobee/onlineHapi/AmobeeAdView;)V
	.locals 0
	.param p1, "amobeeAdView"	# Lcom/amobee/onlineHapi/AmobeeAdView;

	.prologue
	.line 20
	invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

	.line 22
	iput-object p1, p0, Lcom/amobee/onlineHapi/RefreshTask;->amobeeAdView:Lcom/amobee/onlineHapi/AmobeeAdView;

	.line 23
	return-void
.end method


# virtual methods
.method public run()V
	.locals 1

	.prologue
	.line 27
	iget-object v0, p0, Lcom/amobee/onlineHapi/RefreshTask;->amobeeAdView:Lcom/amobee/onlineHapi/AmobeeAdView;

	invoke-virtual {v0}, Lcom/amobee/onlineHapi/AmobeeAdView;->getNewAd()V

	.line 28
	return-void
.end method
