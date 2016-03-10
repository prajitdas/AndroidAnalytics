.class public Lcom/jumptap/adtag/media/JTMediaPlayer;
.super Ljava/lang/Object;
.source "JTMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static jtMediaPlayer:Lcom/jumptap/adtag/media/JTMediaPlayer;


# instance fields
.field private holder:Landroid/view/SurfaceHolder;

.field private isPrepared:Z

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/jumptap/adtag/media/JTMediaPlayer;->jtMediaPlayer:Lcom/jumptap/adtag/media/JTMediaPlayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/jumptap/adtag/media/JTMediaPlayer;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/jumptap/adtag/media/JTMediaPlayer;->jtMediaPlayer:Lcom/jumptap/adtag/media/JTMediaPlayer;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/jumptap/adtag/media/JTMediaPlayer;

    invoke-direct {v0}, Lcom/jumptap/adtag/media/JTMediaPlayer;-><init>()V

    sput-object v0, Lcom/jumptap/adtag/media/JTMediaPlayer;->jtMediaPlayer:Lcom/jumptap/adtag/media/JTMediaPlayer;

    .line 55
    :cond_0
    sget-object v0, Lcom/jumptap/adtag/media/JTMediaPlayer;->jtMediaPlayer:Lcom/jumptap/adtag/media/JTMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 107
    const/4 v0, -0x1

    .line 108
    .local v0, "duration":I
    iget-object v2, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    if-eqz v2, :cond_0

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "JtAd"

    const-string v3, "Problem in getDuration"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 168
    const-string v0, "JtAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 172
    const-string v0, "JtAd"

    const-string v1, "onCompletion called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 187
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 210
    const-string v0, "ZL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in playing video type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaplayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 190
    const-string v0, "JtAd"

    const-string v1, "onPrepared called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mVideoWidth:I

    .line 192
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mVideoHeight:I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    .line 194
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/jumptap/adtag/media/JTMediaPlayer;->pause()V

    .line 206
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/jumptap/adtag/media/JTMediaPlayer;->play()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 124
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 130
    :cond_0
    return-void
.end method

.method public prepareVideo(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 85
    iget-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 87
    iget-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 88
    iget-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 89
    iget-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 90
    iget-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 91
    iget-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 92
    iget-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "JtAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 158
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 159
    iput-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 162
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    .line 163
    iput-object v1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->holder:Landroid/view/SurfaceHolder;

    .line 165
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "completionListener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 74
    return-void
.end method

.method public setVideoView(Landroid/widget/VideoView;)V
    .locals 3
    .param p1, "videoView"    # Landroid/widget/VideoView;

    .prologue
    const/4 v2, 0x1

    .line 139
    invoke-virtual {p1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->holder:Landroid/view/SurfaceHolder;

    .line 140
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 141
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 143
    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    invoke-virtual {p1, v2}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 145
    invoke-virtual {p1, v2}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 153
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    .line 135
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 216
    const-string v0, "JtAd"

    const-string v1, "surfaceChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 220
    const-string v0, "JtAd"

    const-string v1, "surfaceCreated called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 223
    iget v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/jumptap/adtag/media/JTMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 230
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 233
    const-string v0, "JtAd"

    const-string v1, "surfaceDestroyed called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method
