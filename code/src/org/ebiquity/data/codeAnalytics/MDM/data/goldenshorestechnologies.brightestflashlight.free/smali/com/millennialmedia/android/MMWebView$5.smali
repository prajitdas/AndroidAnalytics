.class Lcom/millennialmedia/android/MMWebView$5;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/MMWebView;->animateTransition(Lcom/millennialmedia/android/MMAdImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$adImpl:Lcom/millennialmedia/android/MMAdImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;)V
	.locals 0

	.prologue
	.line 319
	iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

	iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$5;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public declared-synchronized run()V
	.locals 4

	.prologue
	.line 326
	monitor-enter p0

	:try_start_0
	iget-object v3, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->buildDrawingCache()V

	.line 327
	iget-object v3, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->getDrawingCache()Landroid/graphics/Bitmap;

	move-result-object v1

	.line 328
	.local v1, "cache":Landroid/graphics/Bitmap;
	if-eqz v1, :cond_0

	.line 330
	invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

	move-result-object v0

	.line 331
	.local v0, "bitmap":Landroid/graphics/Bitmap;
	iget-object v3, p0, Lcom/millennialmedia/android/MMWebView$5;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

	invoke-virtual {v3, v0}, Lcom/millennialmedia/android/MMAdImpl;->prepareTransition(Landroid/graphics/Bitmap;)V

	.line 333
	.end local v0	# "bitmap":Landroid/graphics/Bitmap;
	:cond_0
	iget-object v3, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->destroyDrawingCache()V

	.line 334
	invoke-virtual {p0}, Ljava/lang/Object;->notify()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 341
	.end local v1	# "cache":Landroid/graphics/Bitmap;
	:goto_0
	monitor-exit p0

	return-void

	.line 336
	:catch_0
	move-exception v2

	.line 338
	.local v2, "e":Ljava/lang/Exception;
	:try_start_1
	invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/Throwable;)V

	.line 339
	invoke-virtual {p0}, Ljava/lang/Object;->notify()V
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	goto :goto_0

	.line 326
	.end local v2	# "e":Ljava/lang/Exception;
	:catchall_0
	move-exception v3

	monitor-exit p0

	throw v3
.end method
