.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "CachedVideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismissAfter(J)V
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
	.line 177
	iput-object p1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 1

	.prologue
	.line 182
	iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

	.line 183
	return-void
.end method
