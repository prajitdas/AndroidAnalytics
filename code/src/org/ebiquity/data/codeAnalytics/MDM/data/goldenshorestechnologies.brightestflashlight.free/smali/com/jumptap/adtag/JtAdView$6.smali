.class Lcom/jumptap/adtag/JtAdView$6;
.super Landroid/webkit/WebChromeClient;
.source "JtAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/JtAdView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdView;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/JtAdView;)V
	.locals 0

	.prologue
	.line 590
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdView$6;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

	return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
	.locals 3
	.param p1, "message"	# Landroid/webkit/ConsoleMessage;

	.prologue
	.line 624
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$6;->this$0:Lcom/jumptap/adtag/JtAdView;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Console ["

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, "]"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	# invokes: Lcom/jumptap/adtag/JtAdView;->logChromeActivity(Ljava/lang/String;)V
	invoke-static {v0, v1}, Lcom/jumptap/adtag/JtAdView;->access$200(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;)V

	.line 625
	const/4 v0, 0x1

	return v0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
	.locals 3
	.param p1, "view"	# Landroid/webkit/WebView;
	.param p2, "url"	# Ljava/lang/String;
	.param p3, "message"	# Ljava/lang/String;
	.param p4, "result"	# Landroid/webkit/JsResult;

	.prologue
	.line 595
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$6;->this$0:Lcom/jumptap/adtag/JtAdView;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Alert ["

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, "]"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	# invokes: Lcom/jumptap/adtag/JtAdView;->logChromeActivity(Ljava/lang/String;)V
	invoke-static {v0, v1}, Lcom/jumptap/adtag/JtAdView;->access$200(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;)V

	.line 596
	const/4 v0, 0x1

	return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
	.locals 3
	.param p1, "view"	# Landroid/webkit/WebView;
	.param p2, "url"	# Ljava/lang/String;
	.param p3, "message"	# Ljava/lang/String;
	.param p4, "result"	# Landroid/webkit/JsResult;

	.prologue
	.line 603
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$6;->this$0:Lcom/jumptap/adtag/JtAdView;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Before unload ["

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, "]"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	# invokes: Lcom/jumptap/adtag/JtAdView;->logChromeActivity(Ljava/lang/String;)V
	invoke-static {v0, v1}, Lcom/jumptap/adtag/JtAdView;->access$200(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;)V

	.line 604
	const/4 v0, 0x1

	return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
	.locals 3
	.param p1, "view"	# Landroid/webkit/WebView;
	.param p2, "url"	# Ljava/lang/String;
	.param p3, "message"	# Ljava/lang/String;
	.param p4, "result"	# Landroid/webkit/JsResult;

	.prologue
	.line 611
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$6;->this$0:Lcom/jumptap/adtag/JtAdView;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Confirm ["

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, "]"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	# invokes: Lcom/jumptap/adtag/JtAdView;->logChromeActivity(Ljava/lang/String;)V
	invoke-static {v0, v1}, Lcom/jumptap/adtag/JtAdView;->access$200(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;)V

	.line 612
	const/4 v0, 0x1

	return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
	.locals 3
	.param p1, "view"	# Landroid/webkit/WebView;
	.param p2, "url"	# Ljava/lang/String;
	.param p3, "message"	# Ljava/lang/String;
	.param p4, "defaultValue"	# Ljava/lang/String;
	.param p5, "result"	# Landroid/webkit/JsPromptResult;

	.prologue
	.line 618
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$6;->this$0:Lcom/jumptap/adtag/JtAdView;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Prompt ["

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, "]"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	# invokes: Lcom/jumptap/adtag/JtAdView;->logChromeActivity(Ljava/lang/String;)V
	invoke-static {v0, v1}, Lcom/jumptap/adtag/JtAdView;->access$200(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;)V

	.line 619
	const/4 v0, 0x1

	return v0
.end method
