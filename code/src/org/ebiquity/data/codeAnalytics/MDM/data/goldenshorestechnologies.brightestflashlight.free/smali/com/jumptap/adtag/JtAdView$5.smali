.class Lcom/jumptap/adtag/JtAdView$5;
.super Ljava/lang/Object;
.source "JtAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jumptap/adtag/JtAdView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdView;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/JtAdView;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdView$5;->this$0:Lcom/jumptap/adtag/JtAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$5;->this$0:Lcom/jumptap/adtag/JtAdView;

    # invokes: Lcom/jumptap/adtag/JtAdView;->loadUrlIfVisible()V
    invoke-static {v0}, Lcom/jumptap/adtag/JtAdView;->access$000(Lcom/jumptap/adtag/JtAdView;)V

    .line 346
    return-void
.end method
