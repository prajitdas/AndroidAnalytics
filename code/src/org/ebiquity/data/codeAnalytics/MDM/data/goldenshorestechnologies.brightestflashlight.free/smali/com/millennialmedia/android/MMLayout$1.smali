.class Lcom/millennialmedia/android/MMLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/MMLayout;->initLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMLayout;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMLayout;)V
	.locals 0

	.prologue
	.line 82
	iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$1;->this$0:Lcom/millennialmedia/android/MMLayout;

	invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

	return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
	.locals 4
	.param p1, "e1"	# Landroid/view/MotionEvent;
	.param p2, "e2"	# Landroid/view/MotionEvent;
	.param p3, "velocityX"	# F
	.param p4, "velocityY"	# F

	.prologue
	const/4 v1, 0x0

	.line 86
	if-eqz p1, :cond_0

	if-nez p2, :cond_1

	.line 110
	:cond_0
	:goto_0
	return v1

	.line 88
	:cond_1
	invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

	move-result v2

	invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

	move-result v3

	sub-float/2addr v2, v3

	float-to-int v0, v2

	.line 89
	.local v0, "dx":I
	invoke-static {v0}, Ljava/lang/Math;->abs(I)I

	move-result v2

	const/16 v3, 0xc8

	if-le v2, v3, :cond_0

	invoke-static {p3}, Ljava/lang/Math;->abs(F)F

	move-result v2

	invoke-static {p4}, Ljava/lang/Math;->abs(F)F

	move-result v3

	cmpl-float v2, v2, v3

	if-lez v2, :cond_0

	.line 91
	const/4 v2, 0x0

	cmpl-float v2, p3, v2

	if-lez v2, :cond_3

	.line 93
	sget v2, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	if-nez v2, :cond_2

	.line 95
	const-string v1, "Enabling debug and verbose logging."

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 96
	const/4 v1, 0x3

	sput v1, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	.line 108
	:goto_1
	const/4 v1, 0x1

	goto :goto_0

	.line 100
	:cond_2
	const-string v2, "Disabling debug and verbose logging."

	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 101
	sput v1, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	goto :goto_1

	.line 106
	:cond_3
	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout$1;->this$0:Lcom/millennialmedia/android/MMLayout;

	iget-object v1, v1, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->printDiagnostics(Lcom/millennialmedia/android/MMAdImpl;)V

	goto :goto_1
.end method
