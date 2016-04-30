.class Lcom/jumptap/adtag/activity/JTVideoActivity$1$1;
.super Ljava/lang/Object;
.source "JTVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/activity/JTVideoActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jumptap/adtag/activity/JTVideoActivity$1;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/activity/JTVideoActivity$1;)V
	.locals 0

	.prologue
	.line 74
	iput-object p1, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$1$1;->this$1:Lcom/jumptap/adtag/activity/JTVideoActivity$1;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 5

	.prologue
	const/4 v4, 0x0

	.line 82
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$1$1;->this$1:Lcom/jumptap/adtag/activity/JTVideoActivity$1;

	iget-object v2, v2, Lcom/jumptap/adtag/activity/JTVideoActivity$1;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	invoke-virtual {v2}, Lcom/jumptap/adtag/activity/JTVideoActivity;->getWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v1

	.line 83
	.local v1, "widgetSettings":Lcom/jumptap/adtag/JtAdWidgetSettings;
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$1$1;->this$1:Lcom/jumptap/adtag/activity/JTVideoActivity$1;

	iget-object v2, v2, Lcom/jumptap/adtag/activity/JTVideoActivity$1;->val$clickThroughUrl:Ljava/lang/String;

	invoke-virtual {v1, v4}, Lcom/jumptap/adtag/JtAdWidgetSettings;->getUserAgent(Landroid/webkit/WebView;)Ljava/lang/String;

	move-result-object v3

	invoke-static {v2, v3}, Lcom/jumptap/adtag/actions/ActionFactory;->createAction(Ljava/lang/String;Ljava/lang/String;)Lcom/jumptap/adtag/actions/AdAction;

	move-result-object v0

	.line 84
	.local v0, "createAction":Lcom/jumptap/adtag/actions/AdAction;
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$1$1;->this$1:Lcom/jumptap/adtag/activity/JTVideoActivity$1;

	iget-object v2, v2, Lcom/jumptap/adtag/activity/JTVideoActivity$1;->val$clickThroughUrl:Ljava/lang/String;

	invoke-virtual {v0, v2}, Lcom/jumptap/adtag/actions/AdAction;->setRedirectedUrl(Ljava/lang/String;)V

	.line 85
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$1$1;->this$1:Lcom/jumptap/adtag/activity/JTVideoActivity$1;

	iget-object v2, v2, Lcom/jumptap/adtag/activity/JTVideoActivity$1;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	invoke-virtual {v0, v2, v4}, Lcom/jumptap/adtag/actions/AdAction;->perform(Landroid/content/Context;Lcom/jumptap/adtag/JtAdView;)V

	.line 86
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$1$1;->this$1:Lcom/jumptap/adtag/activity/JTVideoActivity$1;

	iget-object v2, v2, Lcom/jumptap/adtag/activity/JTVideoActivity$1;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	# invokes: Lcom/jumptap/adtag/activity/JTVideoActivity;->closeActivity()V
	invoke-static {v2}, Lcom/jumptap/adtag/activity/JTVideoActivity;->access$000(Lcom/jumptap/adtag/activity/JTVideoActivity;)V

	.line 87
	return-void
.end method
