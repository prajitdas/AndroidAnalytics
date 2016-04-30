.class Lcom/jumptap/adtag/media/JtVideoAdView$3;
.super Ljava/lang/Object;
.source "JtVideoAdView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
	.line 185
	iput-object p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
	.locals 3
	.param p1, "mp"	# Landroid/media/MediaPlayer;

	.prologue
	const/4 v2, 0x1

	.line 187
	const-string v0, "ZL"

	const-string v1, "OnPreparedListenerOnPreparedListener"

	invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 189
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# setter for: Lcom/jumptap/adtag/media/JtVideoAdView;->isPrepared:Z
	invoke-static {v0, v2}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$402(Lcom/jumptap/adtag/media/JtVideoAdView;Z)Z

	.line 190
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$500(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer$OnPreparedListener;

	move-result-object v0

	if-eqz v0, :cond_0

	.line 191
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$500(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer$OnPreparedListener;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v1}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$300(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer;

	move-result-object v1

	invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

	.line 193
	:cond_0
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;

	move-result-object v0

	if-eqz v0, :cond_1

	.line 194
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;

	move-result-object v0

	invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

	.line 196
	:cond_1
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

	move-result v1

	# setter for: Lcom/jumptap/adtag/media/JtVideoAdView;->videoWidth:I
	invoke-static {v0, v1}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$602(Lcom/jumptap/adtag/media/JtVideoAdView;I)I

	.line 197
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

	move-result v1

	# setter for: Lcom/jumptap/adtag/media/JtVideoAdView;->videoHeight:I
	invoke-static {v0, v1}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$702(Lcom/jumptap/adtag/media/JtVideoAdView;I)I

	.line 198
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->videoWidth:I
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$600(Lcom/jumptap/adtag/media/JtVideoAdView;)I

	move-result v0

	if-eqz v0, :cond_3

	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->videoHeight:I
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$700(Lcom/jumptap/adtag/media/JtVideoAdView;)I

	move-result v0

	if-eqz v0, :cond_3

	.line 199
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	invoke-virtual {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->getHolder()Landroid/view/SurfaceHolder;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->videoWidth:I
	invoke-static {v1}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$600(Lcom/jumptap/adtag/media/JtVideoAdView;)I

	move-result v1

	iget-object v2, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->videoHeight:I
	invoke-static {v2}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$700(Lcom/jumptap/adtag/media/JtVideoAdView;)I

	move-result v2

	invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

	.line 203
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->seekWhenPrepared:I
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$800(Lcom/jumptap/adtag/media/JtVideoAdView;)I

	move-result v0

	if-eqz v0, :cond_2

	.line 204
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$300(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->seekWhenPrepared:I
	invoke-static {v1}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$800(Lcom/jumptap/adtag/media/JtVideoAdView;)I

	move-result v1

	invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

	.line 209
	:cond_2
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;

	move-result-object v0

	if-eqz v0, :cond_3

	.line 210
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$3;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;

	move-result-object v0

	invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

	.line 213
	:cond_3
	return-void
.end method
