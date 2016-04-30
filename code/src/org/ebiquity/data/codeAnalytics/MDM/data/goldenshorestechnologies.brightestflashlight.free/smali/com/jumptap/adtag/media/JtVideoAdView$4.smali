.class Lcom/jumptap/adtag/media/JtVideoAdView$4;
.super Ljava/lang/Object;
.source "JtVideoAdView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/jumptap/adtag/media/JtVideoAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/media/JtVideoAdView;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/media/JtVideoAdView;)V
	.locals 0

	.prologue
	.line 279
	iput-object p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
	.locals 3
	.param p1, "holder"	# Landroid/view/SurfaceHolder;
	.param p2, "format"	# I
	.param p3, "w"	# I
	.param p4, "h"	# I

	.prologue
	.line 283
	const-string v0, "ZL"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "####################surfaceChanged  getHolder()="

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z
	invoke-static {v2}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$400(Lcom/jumptap/adtag/media/JtVideoAdView;)Z

	move-result v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 284
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$400(Lcom/jumptap/adtag/media/JtVideoAdView;)Z

	move-result v0

	if-eqz v0, :cond_1

	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->videoWidth:I
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$600(Lcom/jumptap/adtag/media/JtVideoAdView;)I

	move-result v0

	if-ne v0, p3, :cond_1

	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->videoHeight:I
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$700(Lcom/jumptap/adtag/media/JtVideoAdView;)I

	move-result v0

	if-ne v0, p4, :cond_1

	.line 285
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->seekWhenPrepared:I
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$800(Lcom/jumptap/adtag/media/JtVideoAdView;)I

	move-result v0

	if-eqz v0, :cond_0

	.line 286
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$300(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->seekWhenPrepared:I
	invoke-static {v1}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$800(Lcom/jumptap/adtag/media/JtVideoAdView;)I

	move-result v1

	invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

	.line 289
	:cond_0
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;

	move-result-object v0

	if-eqz v0, :cond_1

	.line 290
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;

	move-result-object v0

	invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

	.line 293
	:cond_1
	return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
	.locals 2
	.param p1, "holder"	# Landroid/view/SurfaceHolder;

	.prologue
	.line 297
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# setter for: Lcom/jumptap/adtag/media/JtVideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;
	invoke-static {v0, p1}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$902(Lcom/jumptap/adtag/media/JtVideoAdView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

	.line 298
	const-string v0, "ZL"

	const-string v1, "####################surfaceCreated"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 299
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# invokes: Lcom/jumptap/adtag/media/JtVideoAdView;->openVideo()V
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$1000(Lcom/jumptap/adtag/media/JtVideoAdView;)V

	.line 300
	return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
	.locals 3
	.param p1, "holder"	# Landroid/view/SurfaceHolder;

	.prologue
	const/4 v2, 0x0

	.line 304
	const-string v0, "ZL"

	const-string v1, "####################surfaceDestroyed"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 306
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# setter for: Lcom/jumptap/adtag/media/JtVideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;
	invoke-static {v0, v2}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$902(Lcom/jumptap/adtag/media/JtVideoAdView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

	.line 307
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;

	move-result-object v0

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;

	move-result-object v0

	invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

	.line 308
	:cond_0
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$300(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer;

	move-result-object v0

	if-eqz v0, :cond_1

	.line 309
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$300(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer;

	move-result-object v0

	invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

	.line 310
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$300(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer;

	move-result-object v0

	invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

	.line 311
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$4;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# setter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v0, v2}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$302(Lcom/jumptap/adtag/media/JtVideoAdView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

	.line 315
	:cond_1
	return-void
.end method
