.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;
.super Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;
.source "CachedVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/CachedVideoPlayerActivity;->initWebOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V
	.locals 0

	.prologue
	.line 362
	iput-object p1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	invoke-direct {p0}, Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;-><init>()V

	return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
	.locals 2
	.param p1, "url"	# Ljava/lang/String;

	.prologue
	.line 366
	new-instance v0, Ljava/lang/StringBuilder;

	invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

	const-string v1, "@@ ON PAGE FINISHED"

	invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v0

	invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 367
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	# getter for: Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;
	invoke-static {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->access$000(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

	move-result-object v0

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	iget-object v0, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

	move-result v0

	if-nez v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	# getter for: Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;
	invoke-static {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->access$000(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

	move-result-object v0

	iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

	invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v0

	if-eqz v0, :cond_0

	.line 369
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	const/4 v1, 0x0

	invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->playVideo(I)V

	.line 371
	:cond_0
	return-void
.end method
