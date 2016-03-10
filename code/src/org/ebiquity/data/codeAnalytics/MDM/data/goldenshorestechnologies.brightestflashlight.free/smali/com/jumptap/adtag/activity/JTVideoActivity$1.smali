.class Lcom/jumptap/adtag/activity/JTVideoActivity$1;
.super Ljava/lang/Object;
.source "JTVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jumptap/adtag/activity/JTVideoActivity;->configLearnMoreBtnOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

.field final synthetic val$clickThroughUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/activity/JTVideoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$1;->this$0:Lcom/jumptap/adtag/activity/JTVideoActivity;

    iput-object p2, p0, Lcom/jumptap/adtag/activity/JTVideoActivity$1;->val$clickThroughUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    new-instance v0, Lcom/jumptap/adtag/activity/JTVideoActivity$1$1;

    invoke-direct {v0, p0}, Lcom/jumptap/adtag/activity/JTVideoActivity$1$1;-><init>(Lcom/jumptap/adtag/activity/JTVideoActivity$1;)V

    .line 89
    .local v0, "performActionRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    .local v1, "th":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 91
    return-void
.end method
