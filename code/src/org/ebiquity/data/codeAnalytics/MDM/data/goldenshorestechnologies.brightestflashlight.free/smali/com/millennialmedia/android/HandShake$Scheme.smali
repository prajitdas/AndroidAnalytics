.class Lcom/millennialmedia/android/HandShake$Scheme;
.super Ljava/lang/Object;
.source "HandShake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/HandShake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scheme"
.end annotation


# instance fields
.field id:I

.field scheme:Ljava/lang/String;

.field final synthetic this$0:Lcom/millennialmedia/android/HandShake;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$Scheme;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;I)V
    .locals 0
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 459
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$Scheme;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p2, p0, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    .line 461
    iput p3, p0, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    .line 462
    return-void
.end method


# virtual methods
.method checkAvailability(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    iget-object v2, p0, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 472
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 473
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 471
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 473
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "schemeObject"    # Lorg/json/JSONObject;

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string v0, "scheme"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    .line 482
    const-string v0, "schemeid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    goto :goto_0
.end method
