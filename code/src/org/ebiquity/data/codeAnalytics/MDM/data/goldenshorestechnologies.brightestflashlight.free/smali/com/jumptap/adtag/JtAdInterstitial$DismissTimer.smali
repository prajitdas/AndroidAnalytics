.class Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;
.super Ljava/util/TimerTask;
.source "JtAdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/jumptap/adtag/JtAdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = "DismissTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdInterstitial;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/JtAdInterstitial;)V
	.locals 0

	.prologue
	.line 216
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;->this$0:Lcom/jumptap/adtag/JtAdInterstitial;

	invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 2

	.prologue
	.line 219
	const-string v0, "JtAd"

	const-string v1, "starting dismissal timer task"

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 220
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;->this$0:Lcom/jumptap/adtag/JtAdInterstitial;

	new-instance v1, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer$1;

	invoke-direct {v1, p0}, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer$1;-><init>(Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;)V

	invoke-virtual {v0, v1}, Lcom/jumptap/adtag/JtAdInterstitial;->post(Ljava/lang/Runnable;)Z

	.line 225
	return-void
.end method
