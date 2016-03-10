.class Lcom/jumptap/adtag/JtAdView$1;
.super Ljava/lang/Object;
.source "JtAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jumptap/adtag/JtAdView;->setContent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/JtAdView;

.field final synthetic val$adContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/JtAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/jumptap/adtag/JtAdView$1;->this$0:Lcom/jumptap/adtag/JtAdView;

    iput-object p2, p0, Lcom/jumptap/adtag/JtAdView$1;->val$adContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/jumptap/adtag/JtAdView$1;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget-object v0, v0, Lcom/jumptap/adtag/JtAdView;->webViewArr:[Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/jumptap/adtag/JtAdView$1;->this$0:Lcom/jumptap/adtag/JtAdView;

    iget v2, v2, Lcom/jumptap/adtag/JtAdView;->INACTIVE_WEBVIEW_INDEX:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/jumptap/adtag/JtAdView$1;->val$adContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method
