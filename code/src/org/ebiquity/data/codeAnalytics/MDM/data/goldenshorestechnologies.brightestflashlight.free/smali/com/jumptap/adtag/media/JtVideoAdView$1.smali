.class Lcom/jumptap/adtag/media/JtVideoAdView$1;
.super Ljava/lang/Object;
.source "JtVideoAdView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
	.line 152
	iput-object p1, p0, Lcom/jumptap/adtag/media/JtVideoAdView$1;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
	.locals 1
	.param p1, "mp"	# Landroid/media/MediaPlayer;
	.param p2, "percent"	# I

	.prologue
	.line 154
	iget-object v0, p0, Lcom/jumptap/adtag/media/JtVideoAdView$1;->this$0:Lcom/jumptap/adtag/media/JtVideoAdView;

	# setter for: Lcom/jumptap/adtag/media/JtVideoAdView;->currentBufferPercentage:I
	invoke-static {v0, p2}, Lcom/jumptap/adtag/media/JtVideoAdView;->access$002(Lcom/jumptap/adtag/media/JtVideoAdView;I)I

	.line 155
	return-void
.end method
