.class Lcom/jumptap/adtag/activity/JTVideoActivity$2$1;
.super Ljava/lang/Object;
.source "JTVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/activity/JTVideoActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jumptap/adtag/activity/JTVideoActivity$2;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/activity/JTVideoActivity$2;)V
	.locals 0

	.prologue
	.line 184
	iput-object p1, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$2$1;->this$1:Lcom/jumptap/adtag/activity/JTVideoActivity$2;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 1

	.prologue
	.line 189
	iget-object v0, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$2$1;->this$1:Lcom/jumptap/adtag/activity/JTVideoActivity$2;

	iget-object v0, v0, Lcom/jumptap/adtag/activity/JTVideoActivity$2;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	# invokes: Lcom/jumptap/adtag/activity/JTVideoActivity;->closeActivity()V
	invoke-static {v0}, Lcom/jumptap/adtag/activity/JTVideoActivity;->access$000(Lcom/jumptap/adtag/activity/JTVideoActivity;)V

	.line 190
	return-void
.end method
