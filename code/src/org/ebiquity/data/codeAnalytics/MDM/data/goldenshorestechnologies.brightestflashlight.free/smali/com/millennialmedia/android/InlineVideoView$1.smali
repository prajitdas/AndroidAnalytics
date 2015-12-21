.class Lcom/millennialmedia/android/InlineVideoView$1;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/InlineVideoView;->downloadCacheVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/InlineVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$1;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$1;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    # invokes: Lcom/millennialmedia/android/InlineVideoView;->downloadVideo()V
    invoke-static {v0}, Lcom/millennialmedia/android/InlineVideoView;->access$000(Lcom/millennialmedia/android/InlineVideoView;)V

    .line 256
    return-void
.end method
