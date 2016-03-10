.class Lcom/millennialmedia/android/MMLayout$3;
.super Ljava/lang/Object;
.source "MMLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMLayout;->internalSetCloseArea(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMLayout;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMLayout;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$3;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$3;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->closeAreaTouched()V

    .line 326
    return-void
.end method
