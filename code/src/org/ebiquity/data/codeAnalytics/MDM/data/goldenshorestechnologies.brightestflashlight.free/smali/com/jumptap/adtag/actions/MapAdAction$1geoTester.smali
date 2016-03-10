.class Lcom/jumptap/adtag/actions/MapAdAction$1geoTester;
.super Ljava/lang/Object;
.source "MapAdAction.java"

# interfaces
.implements Lcom/jumptap/adtag/actions/AdAction$UrlPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jumptap/adtag/actions/MapAdAction;->perform(Landroid/content/Context;Lcom/jumptap/adtag/JtAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "geoTester"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/actions/MapAdAction;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/actions/MapAdAction;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/jumptap/adtag/actions/MapAdAction$1geoTester;->this$0:Lcom/jumptap/adtag/actions/MapAdAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 22
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "scheme":Ljava/lang/String;
    const-string v2, "geo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
