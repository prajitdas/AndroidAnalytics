.class Lcom/jumptap/adtag/media/JtVideoAdView$2;
.super Ljava/lang/Object;
.source "JtVideoAdView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
	.line 160
	iput-object p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView$2;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
	.locals 2
	.param p1, "mp"	# Landroid/media/MediaPlayer;

	.prologue
	.line 162
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$2;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;

	move-result-object v0

	if-eqz v0, :cond_0

	.line 163
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$2;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaController:Landroid/widget/MediaController;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$100(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/widget/MediaController;

	move-result-object v0

	invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

	.line 165
	:cond_0
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$2;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$200(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer$OnCompletionListener;

	move-result-object v0

	if-eqz v0, :cond_1

	.line 166
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$2;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
	invoke-static {v0}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$200(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer$OnCompletionListener;

	move-result-object v0

	iget-object v1, p0, Lcom/jumptap/adtag/media/JtVideoAdView$2;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# getter for: Lcom/jumptap/adtag/media/JtVideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;
	invoke-static {v1}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$300(Lcom/jumptap/adtag/media/JtVideoAdView;)Landroid/media/MediaPlayer;

	move-result-object v1

	invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

	.line 170
	:cond_1
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$2;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	const/16 v1, 0x8

	invoke-virtual {v0, v1}, Lcom/jumptap/adtag/media/JtVideoAdView;->setVisibility(I)V

	.line 181
	return-void
.end method
