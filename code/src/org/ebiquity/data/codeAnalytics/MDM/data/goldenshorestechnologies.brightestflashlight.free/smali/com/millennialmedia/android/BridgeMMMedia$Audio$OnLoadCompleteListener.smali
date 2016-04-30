.class abstract Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;
.super Ljava/lang/Object;
.source "BridgeMMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/BridgeMMMedia$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x402
	name = "OnLoadCompleteListener"
.end annotation


# static fields
.field private static final TEST_PERIOD_MS:I = 0x64


# instance fields
.field private sampleIds:Ljava/util/ArrayList;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Ljava/util/ArrayList",
			"<",
			"Ljava/lang/Integer;",
			">;"
		}
	.end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;

.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;Landroid/media/SoundPool;)V
	.locals 1
	.param p2, "soundPool"	# Landroid/media/SoundPool;

	.prologue
	.line 807
	iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 788
	new-instance v0, Ljava/util/ArrayList;

	invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

	iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->sampleIds:Ljava/util/ArrayList;

	.line 808
	iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->soundPool:Landroid/media/SoundPool;

	.line 809
	return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;)Ljava/util/ArrayList;
	.locals 1
	.param p0, "x0"	# Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;

	.prologue
	.line 784
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->sampleIds:Ljava/util/ArrayList;

	return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;)Landroid/media/SoundPool;
	.locals 1
	.param p0, "x0"	# Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;

	.prologue
	.line 784
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->soundPool:Landroid/media/SoundPool;

	return-object v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;)Ljava/util/Timer;
	.locals 1
	.param p0, "x0"	# Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;

	.prologue
	.line 784
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->timer:Ljava/util/Timer;

	return-object v0
.end method


# virtual methods
.method abstract onLoadComplete(Landroid/media/SoundPool;II)V
.end method

.method declared-synchronized release()V
	.locals 1

	.prologue
	.line 850
	monitor-enter p0

	:try_start_0
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->timer:Ljava/util/Timer;

	if-eqz v0, :cond_0

	.line 852
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->timer:Ljava/util/Timer;

	invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

	.line 853
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->timer:Ljava/util/Timer;

	invoke-virtual {v0}, Ljava/util/Timer;->purge()I
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 855
	:cond_0
	monitor-exit p0

	return-void

	.line 850
	:catchall_0
	move-exception v0

	monitor-exit p0

	throw v0
.end method

.method declared-synchronized testSample(I)V
	.locals 6
	.param p1, "sampleId"	# I

	.prologue
	.line 817
	monitor-enter p0

	:try_start_0
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->sampleIds:Ljava/util/ArrayList;

	invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v1

	invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

	.line 818
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->sampleIds:Ljava/util/ArrayList;

	invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

	move-result v0

	const/4 v1, 0x1

	if-ne v0, v1, :cond_0

	.line 820
	new-instance v0, Ljava/util/Timer;

	invoke-direct {v0}, Ljava/util/Timer;-><init>()V

	iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->timer:Ljava/util/Timer;

	.line 821
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->timer:Ljava/util/Timer;

	new-instance v1, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener$1;

	invoke-direct {v1, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener$1;-><init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;)V

	const-wide/16 v2, 0x0

	const-wide/16 v4, 0x64

	invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 846
	:cond_0
	monitor-exit p0

	return-void

	.line 817
	:catchall_0
	move-exception v0

	monitor-exit p0

	throw v0
.end method
