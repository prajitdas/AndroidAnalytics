.class Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer$1;
.super Ljava/lang/Object;
.source "JtAdInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer$1;->this$1:Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer$1;->this$1:Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;

    iget-object v0, v0, Lcom/jumptap/adtag/JtAdInterstitial$DismissTimer;->this$0:Lcom/jumptap/adtag/JtAdInterstitial;

    const/4 v1, 0x0

    # invokes: Lcom/jumptap/adtag/JtAdInterstitial;->dismiss(Z)V
    invoke-static {v0, v1}, Lcom/jumptap/adtag/JtAdInterstitial;->access$000(Lcom/jumptap/adtag/JtAdInterstitial;Z)V

    .line 223
    return-void
.end method
