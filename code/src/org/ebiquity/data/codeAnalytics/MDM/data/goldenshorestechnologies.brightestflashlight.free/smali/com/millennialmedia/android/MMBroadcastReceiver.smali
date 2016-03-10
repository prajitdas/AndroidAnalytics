.class public Lcom/millennialmedia/android/MMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MMBroadcastReceiver.java"


# static fields
.field public static final ACTION_DISPLAY_STARTED:Ljava/lang/String; = "millennialmedia.action.ACTION_DISPLAY_STARTED"

.field public static final ACTION_FETCH_FAILED:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_FAILED"

.field public static final ACTION_FETCH_STARTED_CACHING:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

.field public static final ACTION_FETCH_SUCCEEDED:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

.field public static final ACTION_GETAD_FAILED:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_FAILED"

.field public static final ACTION_GETAD_SUCCEEDED:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

.field public static final ACTION_INTENT_STARTED:Ljava/lang/String; = "millennialmedia.action.ACTION_INTENT_STARTED"

.field public static final ACTION_OVERLAY_CLOSED:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_CLOSED"

.field public static final ACTION_OVERLAY_OPENED:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_OPENED"

.field public static final ACTION_OVERLAY_TAP:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_TAP"

.field public static final CATEGORY_SDK:Ljava/lang/String; = "millennialmedia.category.CATEGORY_SDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 40
    const-string v1, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v1, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v1, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v1, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public displayStarted(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 169
    const-string v0, "Millennial Media display started."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public fetchFailure(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 163
    const-string v0, "Millennial Media fetch failed."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public fetchFinishedCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 157
    const-string v0, "Millennial Media fetch finished caching."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public fetchStartedCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 151
    const-string v0, "Millennial Media fetch started caching."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public getAdFailure(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 126
    const-string v0, "Millennial Media ad Failure."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public getAdSuccess(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 120
    const-string v0, "Millennial Media ad Success."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public intentStarted(Lcom/millennialmedia/android/MMAd;Ljava/lang/String;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;
    .param p2, "intent"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p2, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Millennial Media started intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x4

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    const-string v7, "packageName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "internalId"

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 59
    .local v4, "internalId":J
    const/4 v2, 0x0

    .line 60
    .local v2, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
    const/4 v1, 0x0

    .line 61
    .local v1, "ad":Lcom/millennialmedia/android/MMAd;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    .line 66
    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v1

    .line 73
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " @@ Intent - Ad in receiver = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_3

    const-string v7, " null"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 74
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 76
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayOpened(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 78
    :cond_4
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 80
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayClosed(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 82
    :cond_5
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 84
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayTap(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 86
    :cond_6
    const-string v7, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 88
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->displayStarted(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 90
    :cond_7
    const-string v7, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 92
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchFailure(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 94
    :cond_8
    const-string v7, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 96
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchFinishedCaching(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 98
    :cond_9
    const-string v7, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 100
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchStartedCaching(Lcom/millennialmedia/android/MMAd;)V

    goto/16 :goto_0

    .line 102
    :cond_a
    const-string v7, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 104
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->getAdFailure(Lcom/millennialmedia/android/MMAd;)V

    goto/16 :goto_0

    .line 106
    :cond_b
    const-string v7, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 108
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->getAdSuccess(Lcom/millennialmedia/android/MMAd;)V

    goto/16 :goto_0

    .line 110
    :cond_c
    const-string v7, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 112
    const-string v7, "intentType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/millennialmedia/android/MMBroadcastReceiver;->intentStarted(Lcom/millennialmedia/android/MMAd;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public overlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 138
    const-string v0, "Millennial Media overlay closed."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public overlayOpened(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 132
    const-string v0, "Millennial Media overlay opened."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public overlayTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 175
    const-string v0, "Millennial Media overlay Tap."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 176
    return-void
.end method
