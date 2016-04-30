.class Lcom/jumptap/adtag/JtAdView$2;
.super Ljava/lang/Object;
.source "JtAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/JtAdView;->resize(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdView;

.field final synthetic val$height:I

.field final synthetic val$shouldExpand:Z

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/JtAdView;ZII)V
	.locals 0

	.prologue
	.line 256
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdView$2;->this$0:Lcom/jumptap/adtag/JtAdView;

	iput-boolean p2, p0, Lcom/jumptap/adtag/JtAdView$2;->val$shouldExpand:Z

	iput p3, p0, Lcom/jumptap/adtag/JtAdView$2;->val$width:I

	iput p4, p0, Lcom/jumptap/adtag/JtAdView$2;->val$height:I

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 9

	.prologue
	.line 261
	iget-boolean v7, p0, Lcom/jumptap/adtag/JtAdView$2;->val$shouldExpand:Z

	if-eqz v7, :cond_1

	iget v4, p0, Lcom/jumptap/adtag/JtAdView$2;->val$width:I

	.line 262
	.local v4, "newWidth":I
	:goto_0
	iget-boolean v7, p0, Lcom/jumptap/adtag/JtAdView$2;->val$shouldExpand:Z

	if-eqz v7, :cond_2

	iget v3, p0, Lcom/jumptap/adtag/JtAdView$2;->val$height:I

	.line 264
	.local v3, "newHeight":I
	:goto_1
	iget-object v7, p0, Lcom/jumptap/adtag/JtAdView$2;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

	move-result-object v2

	.line 265
	.local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
	if-nez v2, :cond_3

	.line 296
	:cond_0
	:goto_2
	return-void

	.line 261
	.end local v2	# "lp":Landroid/view/ViewGroup$LayoutParams;
	.end local v3	# "newHeight":I
	.end local v4	# "newWidth":I
	:cond_1
	iget-object v7, p0, Lcom/jumptap/adtag/JtAdView$2;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdView;->getWidthSize()I

	move-result v4

	goto :goto_0

	.line 262
	.restart local v4	# "newWidth":I
	:cond_2
	iget-object v7, p0, Lcom/jumptap/adtag/JtAdView$2;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdView;->getHeightSize()I

	move-result v3

	goto :goto_1

	.line 266
	.restart local v2	# "lp":Landroid/view/ViewGroup$LayoutParams;
	.restart local v3	# "newHeight":I
	:cond_3
	iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

	.line 267
	.local v1, "existingWidth":I
	iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

	.line 269
	.local v0, "existingHeight":I
	if-ne v1, v4, :cond_4

	if-eq v0, v3, :cond_0

	.line 274
	:cond_4
	iget-boolean v7, p0, Lcom/jumptap/adtag/JtAdView$2;->val$shouldExpand:Z

	if-eqz v7, :cond_6

	.line 275
	iget v7, p0, Lcom/jumptap/adtag/JtAdView$2;->val$width:I

	if-lez v7, :cond_5

	iget v7, p0, Lcom/jumptap/adtag/JtAdView$2;->val$height:I

	if-lez v7, :cond_5

	.line 276
	iget-object v7, p0, Lcom/jumptap/adtag/JtAdView$2;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdView;->notifyExpand()V

	.line 283
	:cond_5
	:goto_3
	iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

	.line 284
	iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

	.line 286
	iget-object v7, p0, Lcom/jumptap/adtag/JtAdView$2;->this$0:Lcom/jumptap/adtag/JtAdView;

	iget-object v7, v7, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget-object v8, p0, Lcom/jumptap/adtag/JtAdView$2;->this$0:Lcom/jumptap/adtag/JtAdView;

	iget v8, v8, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	aget-object v5, v7, v8

	.line 287
	.local v5, "v":Landroid/view/View;
	if-eqz v5, :cond_0

	.line 288
	invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

	move-result-object v6

	.line 289
	.local v6, "vlp":Landroid/view/ViewGroup$LayoutParams;
	if-eqz v6, :cond_0

	.line 291
	iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

	.line 292
	iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

	.line 294
	iget-object v7, p0, Lcom/jumptap/adtag/JtAdView$2;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdView;->requestLayout()V

	goto :goto_2

	.line 279
	.end local v5	# "v":Landroid/view/View;
	.end local v6	# "vlp":Landroid/view/ViewGroup$LayoutParams;
	:cond_6
	iget-object v7, p0, Lcom/jumptap/adtag/JtAdView$2;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-virtual {v7}, Lcom/jumptap/adtag/JtAdView;->notifyContract()V

	goto :goto_3
.end method
