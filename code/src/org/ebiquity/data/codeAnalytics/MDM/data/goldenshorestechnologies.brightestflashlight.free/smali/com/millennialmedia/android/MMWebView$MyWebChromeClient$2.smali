.class Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

.field final synthetic val$callback:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic val$origin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
	.locals 0

	.prologue
	.line 616
	iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->this$1:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

	iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

	iput-object p3, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->val$origin:Ljava/lang/String;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
	.locals 3
	.param p1, "dialog"	# Landroid/content/DialogInterface;
	.param p2, "id"	# I

	.prologue
	const/4 v2, 0x1

	.line 620
	iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->this$1:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

	# invokes: Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->saveUseGeo(Z)V
	invoke-static {v0, v2}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->access$300(Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;Z)V

	.line 621
	iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

	iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->val$origin:Ljava/lang/String;

	invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

	.line 622
	return-void
.end method
