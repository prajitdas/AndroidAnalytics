.class Lcom/jumptap/adtag/JtAdView$4;
.super Ljava/lang/Object;
.source "JtAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/JtAdView;->resizeWithCallback(ZIILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdView;

.field final synthetic val$callback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;)V
	.locals 0

	.prologue
	.line 320
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdView$4;->this$0:Lcom/jumptap/adtag/JtAdView;

	iput-object p2, p0, Lcom/jumptap/adtag/JtAdView$4;->val$callback:Ljava/lang/String;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 3

	.prologue
	.line 323
	const-string v0, "JtAd"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "JtAdView/Runnable::run ("

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView$4;->val$callback:Ljava/lang/String;

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, ")"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 324
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$4;->this$0:Lcom/jumptap/adtag/JtAdView;

	iget-object v0, v0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

	iget-object v1, p0, Lcom/jumptap/adtag/JtAdView$4;->this$0:Lcom/jumptap/adtag/JtAdView;

	iget v1, v1, Lcom/jumptap/adtag/JtAdView;->ACTIVE_WEBVIEW_INDEX:I

	aget-object v0, v0, v1

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "javascript:executeCallback(\'"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	iget-object v2, p0, Lcom/jumptap/adtag/JtAdView$4;->val$callback:Ljava/lang/String;

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, "\');"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

	.line 325
	return-void
.end method
