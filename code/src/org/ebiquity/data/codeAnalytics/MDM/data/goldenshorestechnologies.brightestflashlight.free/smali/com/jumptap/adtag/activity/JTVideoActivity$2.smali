.class Lcom/jumptap/adtag/activity/JTVideoActivity$2;
.super Ljava/lang/Object;
.source "JTVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/activity/JTVideoActivity;->setSkipButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/activity/JTVideoActivity;)V
	.locals 0

	.prologue
	.line 180
	iput-object p1, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$2;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
	.locals 2
	.param p1, "v"	# Landroid/view/View;

	.prologue
	.line 184
	new-instance v0, Lcom/jumptap/adtag/activity/JTVideoActivity$2$1;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/activity/JTVideoActivity$2$1;-><init>(Lcom/jumptap/adtag/activity/JTVideoActivity$2;)V

	.line 192
	.local v0, "runnable":Ljava/lang/Runnable;
	new-instance v1, Ljava/lang/Thread;

	invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

	.line 193
	.local v1, "th":Ljava/lang/Thread;
	invoke-virtual {v1}, Ljava/lang/Thread;->start()V

	.line 194
	return-void
.end method
