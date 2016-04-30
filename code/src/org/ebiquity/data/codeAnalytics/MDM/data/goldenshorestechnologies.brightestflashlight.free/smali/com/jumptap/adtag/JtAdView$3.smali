.class Lcom/jumptap/adtag/JtAdView$3;
.super Ljava/lang/Object;
.source "JtAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/JtAdView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdView;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/JtAdView;)V
	.locals 0

	.prologue
	.line 304
	iput-object p1, p0, Lcom/jumptap/adtag/JtAdView$3;->this$0:Lcom/jumptap/adtag/JtAdView;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 2

	.prologue
	.line 307
	iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$3;->this$0:Lcom/jumptap/adtag/JtAdView;

	const/4 v1, 0x4

	invoke-virtual {v0, v1}, Lcom/jumptap/adtag/JtAdView;->setVisibility(I)V

	.line 308
	return-void
.end method
