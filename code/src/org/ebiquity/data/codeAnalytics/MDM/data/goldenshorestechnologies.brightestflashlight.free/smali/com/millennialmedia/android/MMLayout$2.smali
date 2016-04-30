.class Lcom/millennialmedia/android/MMLayout$2;
.super Ljava/lang/Object;
.source "MMLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/MMLayout;->setCloseArea(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMLayout;

.field final synthetic val$position:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMLayout;Ljava/lang/String;)V
	.locals 0

	.prologue
	.line 273
	iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$2;->this$0:Lcom/millennialmedia/android/MMLayout;

	iput-object p2, p0, Lcom/millennialmedia/android/MMLayout$2;->val$position:Ljava/lang/String;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 2

	.prologue
	.line 277
	iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$2;->this$0:Lcom/millennialmedia/android/MMLayout;

	iget-object v1, p0, Lcom/millennialmedia/android/MMLayout$2;->val$position:Ljava/lang/String;

	# invokes: Lcom/millennialmedia/android/MMLayout;->internalSetCloseArea(Ljava/lang/String;)V
	invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLayout;->access$000(Lcom/millennialmedia/android/MMLayout;Ljava/lang/String;)V

	.line 278
	return-void
.end method
