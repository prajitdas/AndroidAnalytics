.class Lcom/jumptap/adtag/JtAdView$PerformActionHandler;
.super Ljava/lang/Object;
.source "JtAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/jumptap/adtag/JtAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x2
	name = "PerformActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdView;

.field url:Ljava/lang/String;

.field widget:Lcom/jumptap/adtag/JtAdView;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;Lcom/jumptap/adtag/JtAdView;)V
	.locals 0
	.param p2, "url"	# Ljava/lang/String;
	.param p3, "adView"	# Lcom/jumptap/adtag/JtAdView;

	.prologue
	.line 943
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 944
	iput-object p2, p0, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;->url:Ljava/lang/String;

	.line 945
	iput-object p3, p0, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;->widget:Lcom/jumptap/adtag/JtAdView;

	.line 946
	return-void
.end method


# virtual methods
.method public run()V
	.locals 4

	.prologue
	.line 951
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;->url:Ljava/lang/String;

	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;->this$0:Lcom/jumptap/adtag/JtAdView;

	iget-object v2, v2, Lcom/jumptap/adtag/JtAdView;->widgetSettings:Lcom/jumptap/adtag/JtAdWidgetSettings;

	const/4 v3, 0x0

	invoke-virtual {v2, v3}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getUserAgent(Landroid/webkit/WebView;)Ljava/lang/String;

	move-result-object v2

	invoke-static {v1, v2}, Lcom/jumptap/adtag/actions/ActionFactory;->createAction(Ljava/lang/String;Ljava/lang/String;)Lcom/jumptap/adtag/actions/AdAction;

	move-result-object v0

	.line 955
	.local v0, "action":Lcom/jumptap/adtag/actions/AdAction;
	if-eqz v0, :cond_0

	.line 960
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdView;->notifyAdClicked()V

	.line 961
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;->this$0:Lcom/jumptap/adtag/JtAdView;

	iget-object v1, v1, Lcom/jumptap/adtag/JtAdView;->context:Landroid/content/Context;

	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;->widget:Lcom/jumptap/adtag/JtAdView;

	invoke-virtual {v0, v1, v2}, Lcom/jumptap/adtag/actions/AdAction;->perform(Landroid/content/Context;Lcom/jumptap/adtag/JtAdView;)V

	.line 969
	:goto_0
	return-void

	.line 966
	:cond_0
	const-string v1, "JtAd"

	new-instance v2, Ljava/lang/StringBuilder;

	invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

	const-string v3, "Cannot perform action or find AdAction for url: "

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	iget-object v3, p0, Lcom/jumptap/adtag/JtAdView$PerformActionHandler;->url:Ljava/lang/String;

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	goto :goto_0
.end method
