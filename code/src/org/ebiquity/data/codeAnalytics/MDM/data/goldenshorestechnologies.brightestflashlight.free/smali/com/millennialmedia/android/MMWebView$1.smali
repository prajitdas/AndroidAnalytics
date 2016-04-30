.class Lcom/millennialmedia/android/MMWebView$1;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;)V
	.locals 0

	.prologue
	.line 61
	iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$1;->this$0:Lcom/millennialmedia/android/MMWebView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
	.locals 2
	.param p1, "v"	# Landroid/view/View;
	.param p2, "event"	# Landroid/view/MotionEvent;

	.prologue
	.line 66
	invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

	move-result v0

	const/4 v1, 0x2

	if-ne v0, v1, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$1;->this$0:Lcom/millennialmedia/android/MMWebView;

	# invokes: Lcom/millennialmedia/android/MMWebView;->canScroll()Z
	invoke-static {v0}, Lcom/millennialmedia/android/MMWebView;->access$000(Lcom/millennialmedia/android/MMWebView;)Z

	move-result v0

	if-eqz v0, :cond_0

	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method
