.class Lcom/millennialmedia/android/InlineVideoView$InlineParams;
.super Ljava/lang/Object;
.source "InlineVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/InlineVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x8
	name = "InlineParams"
.end annotation


# instance fields
.field autoPlay:Z

.field bodyHeight:I

.field bodyWidth:I

.field cachedVideoID:Ljava/lang/String;

.field cachedVideoURI:Ljava/lang/String;

.field currentPosition:I

.field goingFullScreen:Z

.field height:I

.field isCompleted:Z

.field isInitialPlayBack:Z

.field isPlayingStreaming:Z

.field isStopped:Z

.field originalOrientation:I

.field scaleFactor:F

.field showControls:Z

.field streamVideoURI:Ljava/lang/String;

.field touchCallBack:Ljava/lang/String;

.field width:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/content/Context;)V
	.locals 1
	.param p2, "context"	# Landroid/content/Context;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/util/HashMap",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;",
			"Landroid/content/Context;",
			")V"
		}
	.end annotation

	.prologue
	.line 82
	.local p1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 74
	const/4 v0, 0x1

	iput-boolean v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

	.line 83
	const-string v0, "x"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	if-eqz v0, :cond_0

	.line 84
	const-string v0, "x"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

	move-result v0

	float-to-int v0, v0

	iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

	.line 85
	:cond_0
	const-string v0, "y"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	if-eqz v0, :cond_1

	.line 86
	const-string v0, "y"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

	move-result v0

	float-to-int v0, v0

	iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

	.line 87
	:cond_1
	const-string v0, "width"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	if-eqz v0, :cond_2

	.line 88
	const-string v0, "width"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

	move-result v0

	float-to-int v0, v0

	iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

	.line 89
	:cond_2
	const-string v0, "height"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	if-eqz v0, :cond_3

	.line 90
	const-string v0, "height"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

	move-result v0

	float-to-int v0, v0

	iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

	.line 91
	:cond_3
	const-string v0, "streamVideoURI"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

	.line 92
	const-string v0, "cachedVideoURI"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

	.line 93
	const-string v0, "cachedVideoID"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

	.line 94
	const-string v0, "autoPlay"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	if-eqz v0, :cond_4

	.line 95
	const-string v0, "autoPlay"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

	move-result v0

	iput-boolean v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

	.line 96
	:cond_4
	const-string v0, "showControls"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	if-eqz v0, :cond_5

	.line 97
	const-string v0, "showControls"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

	move-result v0

	iput-boolean v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

	.line 98
	:cond_5
	const-string v0, "bodyWidth"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	if-eqz v0, :cond_6

	.line 99
	const-string v0, "bodyWidth"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

	move-result v0

	float-to-int v0, v0

	iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyWidth:I

	.line 100
	:cond_6
	const-string v0, "bodyHeight"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	if-eqz v0, :cond_7

	.line 101
	const-string v0, "bodyHeight"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

	move-result v0

	float-to-int v0, v0

	iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyHeight:I

	.line 102
	:cond_7
	const-string v0, "touchCallback"

	invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/lang/String;

	iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

	.line 104
	invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

	move-result-object v0

	invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v0

	iget v0, v0, Landroid/util/DisplayMetrics;->density:F

	iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

	.line 105
	return-void
.end method

.method static getInlineParams(Ljava/lang/String;)Lcom/millennialmedia/android/InlineVideoView$InlineParams;
	.locals 2
	.param p0, "gson"	# Ljava/lang/String;

	.prologue
	.line 109
	new-instance v0, Lcom/millennialmedia/google/gson/Gson;

	invoke-direct {v0}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

	const-class v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	invoke-virtual {v0, p0, v1}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	return-object v0
.end method


# virtual methods
.method inflateFromGson(Ljava/lang/String;)V
	.locals 3
	.param p1, "gson"	# Ljava/lang/String;

	.prologue
	.line 120
	new-instance v1, Lcom/millennialmedia/google/gson/Gson;

	invoke-direct {v1}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

	const-class v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	invoke-virtual {v1, p1, v2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	.line 121
	.local v0, "params":Lcom/millennialmedia/android/InlineVideoView$InlineParams;
	iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

	iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

	.line 122
	iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

	iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

	.line 123
	iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyWidth:I

	iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyWidth:I

	.line 124
	iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyHeight:I

	iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyHeight:I

	.line 125
	iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

	iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

	.line 126
	iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

	iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

	.line 127
	iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

	iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

	.line 128
	iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

	iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

	.line 129
	iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

	iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

	.line 130
	iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

	iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

	.line 131
	iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

	iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

	.line 132
	iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

	iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

	.line 133
	iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

	iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

	.line 134
	iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

	iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

	.line 135
	iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

	iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

	.line 136
	iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

	iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

	.line 137
	iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

	iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

	.line 138
	iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

	iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

	.line 140
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "gson*****"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 141
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "PARAMS*****"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 142
	return-void
.end method

.method public toString()Ljava/lang/String;
	.locals 4

	.prologue
	.line 115
	const-string v0, "%s id, %d x, %d y, %d bWidth, %d bHeight, %d pos, %b autoPlay"

	const/4 v1, 0x7

	new-array v1, v1, [Ljava/lang/Object;

	const/4 v2, 0x0

	iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

	aput-object v3, v1, v2

	const/4 v2, 0x1

	iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

	invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v3

	aput-object v3, v1, v2

	const/4 v2, 0x2

	iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

	invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v3

	aput-object v3, v1, v2

	const/4 v2, 0x3

	iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyWidth:I

	invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v3

	aput-object v3, v1, v2

	const/4 v2, 0x4

	iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyHeight:I

	invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v3

	aput-object v3, v1, v2

	const/4 v2, 0x5

	iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

	invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v3

	aput-object v3, v1, v2

	const/4 v2, 0x6

	iget-boolean v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

	invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

	move-result-object v3

	aput-object v3, v1, v2

	invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method
