.class Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebChromeClient"
.end annotation


# static fields
.field private static final KEY_USE_GEO:Ljava/lang/String; = "mm_use_geo_location"


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/android/MMWebView;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/android/MMWebView;
    .param p2, "x1"    # Lcom/millennialmedia/android/MMWebView$1;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;
    .param p1, "x1"    # Z

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->saveUseGeo(Z)V

    return-void
.end method

.method private getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 665
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 669
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 675
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 671
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 675
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "This app"

    goto :goto_1
.end method

.method private isFirstGeoRequest()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "MillennialMediaSettings"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 646
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "mm_use_geo_location"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private retrieveUseGeo()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 651
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MillennialMediaSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 652
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "mm_use_geo_location"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private saveUseGeo(Z)V
    .locals 5
    .param p1, "allow"    # Z

    .prologue
    .line 657
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "MillennialMediaSettings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 658
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 659
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "mm_use_geo_location"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 660
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 661
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 682
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 683
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 7
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 603
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->isFirstGeoRequest()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 605
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->retrieveUseGeo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 606
    invoke-interface {p2, p1, v6, v6}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v4, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 610
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 612
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 613
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "appName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 615
    const-string v4, "Would like to use your Current Location."

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Allow"

    new-instance v6, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;

    invoke-direct {v6, p0, p2, p1}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;-><init>(Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Don\'t Allow"

    new-instance v6, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$1;

    invoke-direct {v6, p0, p2, p1}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$1;-><init>(Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 632
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 633
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 639
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-interface {p2, p1, v5, v5}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 689
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 693
    :goto_0
    return v0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 693
    const/4 v0, 0x1

    goto :goto_0
.end method
