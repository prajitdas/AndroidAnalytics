.class Lcom/jumptap/adtag/activity/JTVideoActivity$3;
.super Ljava/lang/Object;
.source "JTVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/activity/JTVideoActivity;->closeActivity()V
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
	.line 200
	iput-object p1, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$3;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 4

	.prologue
	.line 203
	invoke-static {}, Lcom/jumptap/adtag/media/JTMediaPlayer;->getInstance()Lcom/jumptap/adtag/media/JTMediaPlayer;

	move-result-object v0

	.line 204
	.local v0, "mediaPlayer":Lcom/jumptap/adtag/media/JTMediaPlayer;
	invoke-virtual {v0}, Lcom/jumptap/adtag/media/JTMediaPlayer;->release()V

	.line 213
	invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

	move-result-object v1

	.line 214
	.local v1, "widgetSettings":Lcom/jumptap/adtag/JtAdWidgetSettings;
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$3;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	const/4 v3, 0x1

	invoke-static {v1, v2, v3}, Lcom/jumptap/adtag/activity/JTVideo;->prepare(Lcom/jumptap/adtag/JtAdWidgetSettings;Landroid/content/Context;Z)Z

	.line 216
	iget-object v2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$3;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

	invoke-virtual {v2}, Lcom/jumptap/adtag/activity/JTVideoActivity;->finish()V

	.line 217
	return-void
.end method
