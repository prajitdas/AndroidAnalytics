.class Lcom/jumptap/adtag/JtAdInterstitial$1;
.super Ljava/lang/Object;
.source "JtAdInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jumptap/adtag/JtAdInterstitial;->configDismissButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdInterstitial;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/JtAdInterstitial;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdInterstitial$1;->this$0:Lcom/jumptap/adtag/JtAdInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdInterstitial$1;->this$0:Lcom/jumptap/adtag/JtAdInterstitial;

    const/4 v1, 0x1

    # invokes: Lcom/jumptap/adtag/JtAdInterstitial;->dismiss(Z)V
    invoke-static {v0, v1}, Lcom/jumptap/adtag/JtAdInterstitial;->access$000(Lcom/jumptap/adtag/JtAdInterstitial;Z)V

    .line 173
    return-void
.end method
