.class Lcom/millennialmedia/android/Utils$ThreadUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x8
	name = "ThreadUtils"
.end annotation


# static fields
.field private static final cachedThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
	.locals 1

	.prologue
	.line 28
	invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

	move-result-object v0

	sput-object v0, Lcom/millennialmedia/android/Utils$ThreadUtils;->cachedThreadExecutor:Ljava/util/concurrent/ExecutorService;

	return-void
.end method

.method constructor <init>()V
	.locals 0

	.prologue
	.line 24
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method

.method static execute(Ljava/lang/Runnable;)V
	.locals 1
	.param p0, "runnable"	# Ljava/lang/Runnable;

	.prologue
	.line 32
	sget-object v0, Lcom/millennialmedia/android/Utils$ThreadUtils;->cachedThreadExecutor:Ljava/util/concurrent/ExecutorService;

	invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

	.line 33
	return-void
.end method
