.class Lcom/millennialmedia/android/MMCommand;
.super Ljava/lang/Object;
.source "MMCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private arguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Ljava/lang/String;

.field private cls:Ljava/lang/Class;

.field private method:Ljava/lang/reflect/Method;

.field private webViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V
    .locals 16
    .param p1, "webView"    # Lcom/millennialmedia/android/MMWebView;
    .param p2, "uriString"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v12, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    .line 48
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 49
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\."

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "components":[Ljava/lang/String;
    array-length v12, v3

    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    .line 79
    .end local v3    # "components":[Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 52
    .restart local v3    # "components":[Ljava/lang/String;
    .restart local v11    # "uri":Landroid/net/Uri;
    :cond_0
    array-length v12, v3

    add-int/lit8 v12, v12, -0x2

    aget-object v2, v3, v12

    .line 53
    .local v2, "className":Ljava/lang/String;
    array-length v12, v3

    add-int/lit8 v12, v12, -0x1

    aget-object v7, v3, v12

    .line 56
    .local v7, "methodName":Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    .line 57
    const/16 v12, 0x3f

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "queryString":Ljava/lang/String;
    const-string v12, "&"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v8, v1, v5

    .line 61
    .local v8, "param":Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "subComponents":[Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x2

    if-lt v12, v13, :cond_1

    .line 64
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const-string v13, "callback"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 66
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    .line 59
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 71
    .end local v8    # "param":Ljava/lang/String;
    .end local v10    # "subComponents":[Ljava/lang/String;
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "com.millennialmedia.android.Bridge"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    .line 72
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 74
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "components":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "methodName":Ljava/lang/String;
    .end local v9    # "queryString":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "Exception while executing javascript call %s %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMCommand;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private getBridgeStrippedClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "preStripped":Ljava/lang/String;
    const-string v1, "Bridge"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method isResizeCommand()Z
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "resize"

    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 85
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_5

    .line 93
    :try_start_0
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/android/MMWebView;

    .line 94
    .local v7, "webView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v7, :cond_3

    .line 96
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/android/MMJSObject;

    .line 97
    .local v4, "receiver":Lcom/millennialmedia/android/MMJSObject;
    invoke-virtual {v7}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/millennialmedia/android/MMJSObject;->setContext(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v4, v7}, Lcom/millennialmedia/android/MMJSObject;->setMMWebView(Lcom/millennialmedia/android/MMWebView;)V

    .line 99
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    invoke-virtual {v7, v9}, Lcom/millennialmedia/android/MMWebView;->updateArgumentsWithSettings(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    const/4 v7, 0x0

    .line 106
    :try_start_1
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    aput-object v12, v10, v11

    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .local v5, "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    :try_start_2
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 118
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/millennialmedia/android/MMWebView;

    .line 119
    .local v8, "webViewCallback":Lcom/millennialmedia/android/MMWebView;
    if-eqz v8, :cond_3

    .line 122
    if-nez v5, :cond_0

    .line 123
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 125
    :cond_0
    iget-object v9, v5, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 126
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    .line 127
    :cond_1
    iget-object v9, v5, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/millennialmedia/android/MMCommand;->getBridgeStrippedClassName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    .line 132
    :cond_2
    const-string v9, "javascript:%s(%s);"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Lcom/millennialmedia/android/MMJSResponse;->toJSONString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "call":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Executing JS bridge callback: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 134
    new-instance v9, Lcom/millennialmedia/android/MMCommand$1;

    invoke-direct {v9, p0, v8, v0}, Lcom/millennialmedia/android/MMCommand$1;-><init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    .end local v0    # "call":Ljava/lang/String;
    .end local v4    # "receiver":Lcom/millennialmedia/android/MMJSObject;
    .end local v5    # "response":Lcom/millennialmedia/android/MMJSResponse;
    .end local v7    # "webView":Lcom/millennialmedia/android/MMWebView;
    .end local v8    # "webViewCallback":Lcom/millennialmedia/android/MMWebView;
    :cond_3
    :goto_1
    return-void

    .line 108
    .restart local v4    # "receiver":Lcom/millennialmedia/android/MMJSObject;
    .restart local v7    # "webView":Lcom/millennialmedia/android/MMWebView;
    :catch_0
    move-exception v3

    .line 110
    .local v3, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 111
    .local v6, "t":Ljava/lang/Throwable;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Landroid/content/ActivityNotFoundException;

    if-ne v9, v10, :cond_4

    .line 112
    const-string v9, "Activity not found"

    invoke-static {v9}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .restart local v5    # "response":Lcom/millennialmedia/android/MMJSResponse;
    goto/16 :goto_0

    .line 114
    .end local v5    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :cond_4
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .restart local v5    # "response":Lcom/millennialmedia/android/MMJSResponse;
    goto/16 :goto_0

    .line 150
    .end local v3    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "receiver":Lcom/millennialmedia/android/MMJSObject;
    .end local v5    # "response":Lcom/millennialmedia/android/MMJSResponse;
    .end local v6    # "t":Ljava/lang/Throwable;
    .end local v7    # "webView":Lcom/millennialmedia/android/MMWebView;
    :catch_1
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "Exception while executing javascript call %s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 156
    const-string v9, "No class or method found"

    invoke-static {v9}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 157
    .local v2, "failedResponse":Lcom/millennialmedia/android/MMJSResponse;
    const-string v9, "javascript:%s(%s);"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMJSResponse;->toJSONString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0    # "call":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Executing JS bridge failed callback: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 159
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/millennialmedia/android/MMWebView;

    .line 160
    .restart local v8    # "webViewCallback":Lcom/millennialmedia/android/MMWebView;
    new-instance v9, Lcom/millennialmedia/android/MMCommand$2;

    invoke-direct {v9, p0, v8, v0}, Lcom/millennialmedia/android/MMCommand$2;-><init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
