.class public Lcom/jumptap/adtag/JtAdView$JtAdListener;
.super Ljava/lang/Object;
.source "JtAdView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/jumptap/adtag/JtAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x4
	name = "JtAdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdView;

.field private widget:Lcom/jumptap/adtag/JtAdView;

.field private widgetId:I


# direct methods
.method public constructor <init>(Lcom/jumptap/adtag/JtAdView;Lcom/jumptap/adtag/JtAdView;I)V
	.locals 1
	.param p2, "widget"	# Lcom/jumptap/adtag/JtAdView;
	.param p3, "widgetId"	# I

	.prologue
	.line 810
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 807
	const/4 v0, 0x0

	iput-object v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->widget:Lcom/jumptap/adtag/JtAdView;

	.line 808
	const/4 v0, -0x1

	iput v0, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->widgetId:I

	.line 811
	iput-object p2, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->widget:Lcom/jumptap/adtag/JtAdView;

	.line 812
	iput p3, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->widgetId:I

	.line 813
	return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
	.locals 0
	.param p1, "v"	# Landroid/view/View;

	.prologue
	.line 847
	return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
	.locals 4
	.param p1, "v"	# Landroid/view/View;
	.param p2, "hasFocus"	# Z

	.prologue
	.line 828
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->this$0:Lcom/jumptap/adtag/JtAdView;

	iget-object v1, v1, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	if-eqz v1, :cond_0

	.line 829
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->this$0:Lcom/jumptap/adtag/JtAdView;

	iget-object v1, v1, Lcom/jumptap/adtag/JtAdView;->adViewListener:Lcom/jumptap/adtag/JtAdViewListener;

	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->widget:Lcom/jumptap/adtag/JtAdView;

	iget v3, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->widgetId:I

	invoke-interface {v1, v2, v3, p2}, Lcom/jumptap/adtag/JtAdViewListener;->onFocusChange(Lcom/jumptap/adtag/JtAdView;IZ)V

	.line 832
	:cond_0
	if-eqz p2, :cond_2

	.line 834
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->this$0:Lcom/jumptap/adtag/JtAdView;

	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->this$0:Lcom/jumptap/adtag/JtAdView;

	# getter for: Lcom/jumptap/adtag/JtAdView;->loadUrlRunnable:Ljava/lang/Runnable;
	invoke-static {v2}, Lcom/jumptap/adtag/JtAdView;->access$400(Lcom/jumptap/adtag/JtAdView;)Ljava/lang/Runnable;

	move-result-object v2

	invoke-virtual {v1, v2}, Lcom/jumptap/adtag/JtAdView;->removeCallbacks(Ljava/lang/Runnable;)Z

	.line 843
	:cond_1
	:goto_0
	return-void

	.line 838
	:cond_2
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->widget:Lcom/jumptap/adtag/JtAdView;

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdView;->getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v1

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getRefreshPeriod()I

	move-result v0

	.line 839
	.local v0, "refreshPeriod":I
	if-lez v0, :cond_1

	.line 840
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->this$0:Lcom/jumptap/adtag/JtAdView;

	const/16 v2, 0x3c

	# invokes: Lcom/jumptap/adtag/JtAdView;->refreshAd(I)V
	invoke-static {v1, v2}, Lcom/jumptap/adtag/JtAdView;->access$300(Lcom/jumptap/adtag/JtAdView;I)V

	goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
	.locals 1
	.param p1, "v"	# Landroid/view/View;

	.prologue
	.line 851
	const/4 v0, 0x0

	return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
	.locals 3
	.param p1, "v"	# Landroid/view/View;
	.param p2, "event"	# Landroid/view/MotionEvent;

	.prologue
	.line 818
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->widget:Lcom/jumptap/adtag/JtAdView;

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdView;->getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v1

	invoke-virtual {v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getRefreshPeriod()I

	move-result v0

	.line 819
	.local v0, "refreshPeriod":I
	if-lez v0, :cond_0

	.line 820
	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$JtAdListener;->this$0:Lcom/jumptap/adtag/JtAdView;

	const/16 v2, 0x3c

	# invokes: Lcom/jumptap/adtag/JtAdView;->refreshAd(I)V
	invoke-static {v1, v2}, Lcom/jumptap/adtag/JtAdView;->access$300(Lcom/jumptap/adtag/JtAdView;I)V

	.line 822
	:cond_0
	const/4 v1, 0x0

	return v1
.end method
