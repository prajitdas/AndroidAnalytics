.class Lcom/jumptap/adtag/activity/JTVideoActivity$4;
.super Ljava/lang/Object;
.source "JTVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/activity/JTVideoActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
	.line 225
	iput-object p1, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 4

	.prologue
	.line 228
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	invoke-virtual {v2}, Lcom/jumptap/adtag/activity/JTVideoActivity;->getWindowManager()Landroid/view/WindowManager;

	move-result-object v2

	invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

	move-result-object v0

	.line 229
	.local v0, "display":Landroid/view/Display;
	invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

	move-result v1

	.line 231
	.local v1, "width":I
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	# getter for: Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;
	invoke-static {v2}, Lcom/jumptap/adtag/activity/JTVideoActivity;->access$100(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/RelativeLayout$LayoutParams;

	move-result-object v2

	div-int/lit8 v3, v1, 0x2

	iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

	.line 232
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	# getter for: Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtn:Landroid/widget/Button;
	invoke-static {v2}, Lcom/jumptap/adtag/activity/JTVideoActivity;->access$200(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/Button;

	move-result-object v2

	iget-object v3, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	# getter for: Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;
	invoke-static {v3}, Lcom/jumptap/adtag/activity/JTVideoActivity;->access$100(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/RelativeLayout$LayoutParams;

	move-result-object v3

	invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

	.line 233
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	# getter for: Lcom/jumptap/adtag/activity/JTVideoActivity;->skipBtn:Landroid/widget/Button;
	invoke-static {v2}, Lcom/jumptap/adtag/activity/JTVideoActivity;->access$200(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/Button;

	move-result-object v2

	invoke-virtual {v2}, Landroid/widget/Button;->requestLayout()V

	.line 235
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	# getter for: Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;
	invoke-static {v2}, Lcom/jumptap/adtag/activity/JTVideoActivity;->access$300(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/RelativeLayout$LayoutParams;

	move-result-object v2

	div-int/lit8 v3, v1, 0x2

	iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

	.line 236
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	# getter for: Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtn:Landroid/widget/Button;
	invoke-static {v2}, Lcom/jumptap/adtag/activity/JTVideoActivity;->access$400(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/Button;

	move-result-object v2

	iget-object v3, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	# getter for: Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtnRlp:Landroid/widget/RelativeLayout$LayoutParams;
	invoke-static {v3}, Lcom/jumptap/adtag/activity/JTVideoActivity;->access$300(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/RelativeLayout$LayoutParams;

	move-result-object v3

	invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

	.line 237
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$4;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	# getter for: Lcom/jumptap/adtag/activity/JTVideoActivity;->learnMoreBtn:Landroid/widget/Button;
	invoke-static {v2}, Lcom/jumptap/adtag/activity/JTVideoActivity;->access$400(Lcom/jumptap/adtag/activity/JTVideoActivity;)Landroid/widget/Button;

	move-result-object v2

	invoke-virtual {v2}, Landroid/widget/Button;->requestLayout()V

	.line 238
	return-void
.end method
