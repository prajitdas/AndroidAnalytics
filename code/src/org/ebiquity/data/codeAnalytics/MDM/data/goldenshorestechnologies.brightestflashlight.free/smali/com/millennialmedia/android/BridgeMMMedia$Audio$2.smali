.class Lcom/millennialmedia/android/BridgeMMMedia$Audio$2;
.super Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;
.source "BridgeMMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playSound(Ljava/io/File;)Lcom/millennialmedia/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;Landroid/media/SoundPool;)V
	.locals 0
	.param p2, "x0"	# Landroid/media/SoundPool;

	.prologue
	.line 741
	iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$2;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

	invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;-><init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;Landroid/media/SoundPool;)V

	return-void
.end method


# virtual methods
.method public declared-synchronized onLoadComplete(Landroid/media/SoundPool;II)V
	.locals 8
	.param p1, "soundPool"	# Landroid/media/SoundPool;
	.param p2, "sampleId"	# I
	.param p3, "status"	# I

	.prologue
	.line 745
	monitor-enter p0

	if-eqz p1, :cond_0

	.line 747
	:try_start_0
	iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$2;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

	# getter for: Lcom/millennialmedia/android/BridgeMMMedia$Audio;->contextRef:Ljava/lang/ref/WeakReference;
	invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->access$200(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Ljava/lang/ref/WeakReference;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Landroid/content/Context;

	const-string v1, "audio"

	invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v7

	check-cast v7, Landroid/media/AudioManager;

	.line 748
	.local v7, "audioManager":Landroid/media/AudioManager;
	const/4 v0, 0x3

	invoke-virtual {v7, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

	move-result v0

	int-to-float v0, v0

	const/4 v1, 0x0

	add-float/2addr v0, v1

	const/4 v1, 0x3

	invoke-virtual {v7, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

	move-result v1

	int-to-float v1, v1

	div-float v2, v0, v1

	.line 749
	.local v2, "streamVolume":F
	const/4 v4, 0x1

	const/4 v5, 0x0

	const/high16 v6, 0x3f800000	# 1.0f

	move-object v0, p1

	move v1, p2

	move v3, v2

	invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 751
	.end local v2	# "streamVolume":F
	.end local v7	# "audioManager":Landroid/media/AudioManager;
	:cond_0
	monitor-exit p0

	return-void

	.line 745
	:catchall_0
	move-exception v0

	monitor-exit p0

	throw v0
.end method
