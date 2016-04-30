.class public Lcom/jumptap/adtag/media/JtVideoAdView;
.super Landroid/view/SurfaceView;
.source "JtVideoAdView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static videoViewInstance:Lcom/jumptap/adtag/media/JtVideoAdView;


# instance fields
.field private bufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private context:Landroid/content/Context;

.field private currentBufferPercentage:I

.field private isPrepared:Z

.field private mediaController:Landroid/widget/MediaController;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private seekWhenPrepared:I

.field shCallback:Landroid/view/SurfaceHolder$Callback;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private uri:Landroid/net/Uri;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
	.locals 1
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	const/4 v0, 0x0

	.line 54
	invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

	.line 34
	iput-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;

	.line 35
	iput-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	.line 151
	new-instance v0, Lcom/jumptap/adtag/media/JtVideoAdView$1;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/media/JtVideoAdView$1;-><init>(Lcom/jumptap/adtag/media/JtVideoAdView;)V

	iput-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->bufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

	.line 159
	new-instance v0, Lcom/jumptap/adtag/media/JtVideoAdView$2;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/media/JtVideoAdView$2;-><init>(Lcom/jumptap/adtag/media/JtVideoAdView;)V

	iput-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

	.line 185
	new-instance v0, Lcom/jumptap/adtag/media/JtVideoAdView$3;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/media/JtVideoAdView$3;-><init>(Lcom/jumptap/adtag/media/JtVideoAdView;)V

	iput-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

	.line 278
	new-instance v0, Lcom/jumptap/adtag/media/JtVideoAdView$4;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/media/JtVideoAdView$4;-><init>(Lcom/jumptap/adtag/media/JtVideoAdView;)V

	iput-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->shCallback:Landroid/view/SurfaceHolder$Callback;

	.line 55
	iput-object p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->context:Landroid/content/Context;

	.line 56
	invoke-direct {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->initVideoView()V

	.line 57
	return-void
.end method

.method static synthetic access$002(Lcom/jumptap/adtag/media/JtVideoAdView;I)I
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;
	.param p1, "x1"	# I

	.prologue
	.line 26
	iput p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->currentBufferPercentage:I

	return p1
.end method

.method static synthetic access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;

	.prologue
	.line 26
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	return-object v0
.end method

.method static synthetic access$1000(Lcom/jumptap/adtag/media/JtVideoAdView;)V
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;

	.prologue
	.line 26
	invoke-direct {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->openVideo()V

	return-void
.end method

.method static synthetic access$200(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer$OnCompletionListener;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;

	.prologue
	.line 26
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

	return-object v0
.end method

.method static synthetic access$300(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;

	.prologue
	.line 26
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	return-object v0
.end method

.method static synthetic access$302(Lcom/jumptap/adtag/media/JtVideoAdView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;
	.param p1, "x1"	# Landroid/media/MediaPlayer;

	.prologue
	.line 26
	iput-object p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	return-object p1
.end method

.method static synthetic access$400(Lcom/jumptap/adtag/media/JtVideoAdView;)Z
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;

	.prologue
	.line 26
	iget-boolean v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	return v0
.end method

.method static synthetic access$402(Lcom/jumptap/adtag/media/JtVideoAdView;Z)Z
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;
	.param p1, "x1"	# Z

	.prologue
	.line 26
	iput-boolean p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	return p1
.end method

.method static synthetic access$500(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer$OnPreparedListener;
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;

	.prologue
	.line 26
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

	return-object v0
.end method

.method static synthetic access$600(Lcom/jumptap/adtag/media/JtVideoAdView;)I
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;

	.prologue
	.line 26
	iget v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->videoWidth:I

	return v0
.end method

.method static synthetic access$602(Lcom/jumptap/adtag/media/JtVideoAdView;I)I
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;
	.param p1, "x1"	# I

	.prologue
	.line 26
	iput p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->videoWidth:I

	return p1
.end method

.method static synthetic access$700(Lcom/jumptap/adtag/media/JtVideoAdView;)I
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;

	.prologue
	.line 26
	iget v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->videoHeight:I

	return v0
.end method

.method static synthetic access$702(Lcom/jumptap/adtag/media/JtVideoAdView;I)I
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;
	.param p1, "x1"	# I

	.prologue
	.line 26
	iput p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->videoHeight:I

	return p1
.end method

.method static synthetic access$800(Lcom/jumptap/adtag/media/JtVideoAdView;)I
	.locals 1
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;

	.prologue
	.line 26
	iget v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->seekWhenPrepared:I

	return v0
.end method

.method static synthetic access$902(Lcom/jumptap/adtag/media/JtVideoAdView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
	.locals 0
	.param p0, "x0"	# Lcom/jumptap/adtag/media/JtVideoAdView;
	.param p1, "x1"	# Landroid/view/SurfaceHolder;

	.prologue
	.line 26
	iput-object p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;

	return-object p1
.end method

.method private attachMediaController()V
	.locals 2

	.prologue
	.line 144
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	if-eqz v0, :cond_0

	.line 145
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

	.line 146
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

	.line 147
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	const/4 v1, 0x1

	invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

	.line 149
	:cond_0
	return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jumptap/adtag/media/JtVideoAdView;
	.locals 1
	.param p0, "context"	# Landroid/content/Context;

	.prologue
	.line 60
	sget-object v0, Lcom/jumptap/adtag/media/JtVideoAdView;->videoViewInstance:Lcom/jumptap/adtag/media/JtVideoAdView;

	if-nez v0, :cond_0

	.line 61
	new-instance v0, Lcom/jumptap/adtag/media/JtVideoAdView;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/media/JtVideoAdView;-><init>(Landroid/content/Context;)V

	sput-object v0, Lcom/jumptap/adtag/media/JtVideoAdView;->videoViewInstance:Lcom/jumptap/adtag/media/JtVideoAdView;

	.line 64
	:cond_0
	sget-object v0, Lcom/jumptap/adtag/media/JtVideoAdView;->videoViewInstance:Lcom/jumptap/adtag/media/JtVideoAdView;

	return-object v0
.end method

.method private initVideoView()V
	.locals 3

	.prologue
	const/4 v2, 0x1

	const/4 v0, 0x0

	.line 68
	iput v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->videoWidth:I

	.line 69
	iput v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->videoHeight:I

	.line 71
	invoke-virtual {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->getHolder()Landroid/view/SurfaceHolder;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->shCallback:Landroid/view/SurfaceHolder$Callback;

	invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

	.line 72
	invoke-virtual {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->getHolder()Landroid/view/SurfaceHolder;

	move-result-object v0

	const/4 v1, 0x3

	invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

	.line 73
	invoke-virtual {p0, v2}, Lcom/jumptap/adtag/media/JtVideoAdView;->setFocusable(Z)V

	.line 74
	invoke-virtual {p0, v2}, Lcom/jumptap/adtag/media/JtVideoAdView;->setFocusableInTouchMode(Z)V

	.line 75
	invoke-virtual {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->requestFocus()Z

	.line 76
	return-void
.end method

.method private openVideo()V
	.locals 5

	.prologue
	.line 105
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->uri:Landroid/net/Uri;

	if-eqz v2, :cond_0

	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;

	if-nez v2, :cond_1

	.line 106
	:cond_0
	const-string v2, "ZL"

	const-string v3, "XXXXXXXXXXXXXXXXXXXXXX"

	invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 141
	:goto_0
	return-void

	.line 109
	:cond_1
	const-string v2, "ZL"

	const-string v3, "YYYYYYYYYYYYYYYYY"

	invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 111
	new-instance v1, Landroid/content/Intent;

	const-string v2, "com.android.music.musicservicecommand"

	invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

	.line 112
	.local v1, "i":Landroid/content/Intent;
	const-string v2, "command"

	const-string v3, "pause"

	invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

	.line 113
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->context:Landroid/content/Context;

	invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

	.line 115
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v2, :cond_2

	.line 117
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

	.line 118
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

	.line 119
	const/4 v2, 0x0

	iput-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	.line 122
	:cond_2
	:try_start_0
	new-instance v2, Landroid/media/MediaPlayer;

	invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

	iput-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	.line 123
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	iget-object v3, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

	invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

	.line 124
	const/4 v2, 0x0

	iput-boolean v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	.line 125
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	iget-object v3, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

	invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

	.line 126
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	iget-object v3, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->bufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

	invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

	.line 127
	const/4 v2, 0x0

	iput v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->currentBufferPercentage:I

	.line 128
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	iget-object v3, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->context:Landroid/content/Context;

	iget-object v4, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->uri:Landroid/net/Uri;

	invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

	.line 129
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	iget-object v3, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;

	invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

	.line 130
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	const/4 v3, 0x3

	invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

	.line 131
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	const/4 v3, 0x1

	invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

	.line 132
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

	.line 133
	invoke-direct {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->attachMediaController()V
	:try_end_0
	.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
	.catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

	goto :goto_0

	.line 134
	:catch_0
	move-exception v0

	.line 135
	.local v0, "ex":Ljava/io/IOException;
	const-string v2, "JtAd"

	new-instance v3, Ljava/lang/StringBuilder;

	invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

	const-string v4, "Unable to open content: "

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	iget-object v4, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->uri:Landroid/net/Uri;

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto/16 :goto_0

	.line 137
	.end local v0	# "ex":Ljava/io/IOException;
	:catch_1
	move-exception v0

	.line 138
	.local v0, "ex":Ljava/lang/IllegalArgumentException;
	const-string v2, "JtAd"

	new-instance v3, Ljava/lang/StringBuilder;

	invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

	const-string v4, "Unable to open content: "

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	iget-object v4, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->uri:Landroid/net/Uri;

	invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto/16 :goto_0
.end method

.method private setVideoPath(Ljava/lang/String;)V
	.locals 1
	.param p1, "path"	# Ljava/lang/String;

	.prologue
	.line 93
	invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v0

	invoke-direct {p0, v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->setVideoURI(Landroid/net/Uri;)V

	.line 94
	return-void
.end method

.method private setVideoURI(Landroid/net/Uri;)V
	.locals 1
	.param p1, "uri"	# Landroid/net/Uri;

	.prologue
	.line 97
	iput-object p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->uri:Landroid/net/Uri;

	.line 98
	const/4 v0, 0x0

	iput v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->seekWhenPrepared:I

	.line 99
	invoke-direct {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->openVideo()V

	.line 100
	invoke-virtual {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->requestLayout()V

	.line 101
	invoke-virtual {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->invalidate()V

	.line 102
	return-void
.end method

.method private toggleMediaControlsVisiblity()V
	.locals 1

	.prologue
	.line 242
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

	move-result v0

	if-eqz v0, :cond_0

	.line 243
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

	.line 247
	:goto_0
	return-void

	.line 245
	:cond_0
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

	goto :goto_0
.end method


# virtual methods
.method public canPause()Z
	.locals 1

	.prologue
	.line 402
	const/4 v0, 0x1

	return v0
.end method

.method public canSeekBackward()Z
	.locals 1

	.prologue
	.line 406
	const/4 v0, 0x1

	return v0
.end method

.method public canSeekForward()Z
	.locals 1

	.prologue
	.line 410
	const/4 v0, 0x1

	return v0
.end method

.method public getBufferPercentage()I
	.locals 1

	.prologue
	.line 395
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_0

	.line 396
	iget v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->currentBufferPercentage:I

	.line 398
	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method public getCurrentPosition()I
	.locals 1

	.prologue
	.line 368
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_0

	iget-boolean v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	if-eqz v0, :cond_0

	.line 369
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

	move-result v0

	.line 371
	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method public getDuration()I
	.locals 4

	.prologue
	.line 356
	const/4 v0, -0x1

	.line 357
	.local v0, "duration":I
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v2, :cond_0

	iget-boolean v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	if-eqz v2, :cond_0

	.line 359
	:try_start_0
	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	move-result v0

	.line 364
	:cond_0
	:goto_0
	return v0

	.line 360
	:catch_0
	move-exception v1

	.line 361
	.local v1, "e":Ljava/lang/Exception;
	const-string v2, "JtAd"

	const-string v3, "Problem in getDuration"

	invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto :goto_0
.end method

.method public isPlaying()Z
	.locals 1

	.prologue
	.line 383
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_0

	iget-boolean v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	if-eqz v0, :cond_0

	.line 385
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

	move-result v0

	.line 387
	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method public isReady()Z
	.locals 1

	.prologue
	.line 391
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_0

	iget-boolean v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	if-eqz v0, :cond_0

	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
	.locals 1
	.param p1, "keyCode"	# I
	.param p2, "event"	# Landroid/view/KeyEvent;

	.prologue
	.line 252
	iget-boolean v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	if-eqz v0, :cond_2

	const/4 v0, 0x4

	if-eq p1, v0, :cond_2

	const/16 v0, 0x18

	if-eq p1, v0, :cond_2

	const/16 v0, 0x19

	if-eq p1, v0, :cond_2

	const/16 v0, 0x52

	if-eq p1, v0, :cond_2

	const/4 v0, 0x5

	if-eq p1, v0, :cond_2

	const/4 v0, 0x6

	if-eq p1, v0, :cond_2

	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_2

	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	if-eqz v0, :cond_2

	.line 261
	const/16 v0, 0x4f

	if-ne p1, v0, :cond_1

	.line 262
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

	move-result v0

	if-eqz v0, :cond_0

	.line 263
	invoke-virtual {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->pause()V

	.line 264
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

	.line 269
	:goto_0
	const/4 v0, 0x1

	.line 275
	:goto_1
	return v0

	.line 266
	:cond_0
	invoke-virtual {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->start()V

	.line 267
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

	goto :goto_0

	.line 271
	:cond_1
	invoke-direct {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->toggleMediaControlsVisiblity()V

	.line 275
	:cond_2
	invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

	move-result v0

	goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
	.locals 1
	.param p1, "ev"	# Landroid/view/MotionEvent;

	.prologue
	.line 218
	iget-boolean v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	if-eqz v0, :cond_0

	.line 219
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_1

	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	if-eqz v0, :cond_1

	.line 220
	invoke-direct {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->toggleMediaControlsVisiblity()V

	.line 230
	:cond_0
	:goto_0
	const/4 v0, 0x1

	return v0

	.line 222
	:cond_1
	invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

	move-result v0

	if-nez v0, :cond_0

	.line 223
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

	move-result v0

	if-eqz v0, :cond_2

	.line 224
	invoke-virtual {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->pause()V

	goto :goto_0

	.line 226
	:cond_2
	invoke-virtual {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->start()V

	goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
	.locals 1
	.param p1, "ev"	# Landroid/view/MotionEvent;

	.prologue
	.line 235
	iget-boolean v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	if-eqz v0, :cond_0

	.line 236
	invoke-direct {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->toggleMediaControlsVisiblity()V

	.line 238
	:cond_0
	const/4 v0, 0x0

	return v0
.end method

.method public pause()V
	.locals 1

	.prologue
	.line 348
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_0

	iget-boolean v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	if-eqz v0, :cond_0

	.line 349
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

	move-result v0

	if-eqz v0, :cond_0

	.line 350
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

	.line 353
	:cond_0
	return-void
.end method

.method public prepare(Ljava/lang/String;)V
	.locals 0
	.param p1, "path"	# Ljava/lang/String;

	.prologue
	.line 87
	invoke-direct {p0, p1}, Lcom/jumptap/adtag/media/JtVideoAdView;->setVideoPath(Ljava/lang/String;)V

	.line 88
	invoke-virtual {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->requestFocus()Z

	.line 90
	return-void
.end method

.method public seekTo(I)V
	.locals 1
	.param p1, "msec"	# I

	.prologue
	.line 375
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_0

	iget-boolean v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	if-eqz v0, :cond_0

	.line 376
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

	.line 380
	:goto_0
	return-void

	.line 378
	:cond_0
	iput p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->seekWhenPrepared:I

	goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
	.locals 1
	.param p1, "controller"	# Landroid/widget/MediaController;

	.prologue
	.line 79
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	if-eqz v0, :cond_0

	.line 80
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

	.line 82
	:cond_0
	iput-object p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;

	.line 83
	invoke-direct {p0}, Lcom/jumptap/adtag/media/JtVideoAdView;->attachMediaController()V

	.line 84
	return-void
.end method

.method public start()V
	.locals 3

	.prologue
	.line 320
	const-string v0, "ZL"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "start  mediaPlayer="

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, "   isPrepared"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	iget-boolean v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 321
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	if-eqz v0, :cond_0

	iget-boolean v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z

	if-eqz v0, :cond_0

	.line 322
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

	.line 325
	:cond_0
	return-void
.end method
