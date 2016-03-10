.class Lcom/amobee/onlineHapi/AmobeeAdView$1;
.super Landroid/os/Handler;
.source "AmobeeAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amobee/onlineHapi/AmobeeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amobee/onlineHapi/AmobeeAdView;


# direct methods
.method constructor <init>(Lcom/amobee/onlineHapi/AmobeeAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amobee/onlineHapi/AmobeeAdView$1;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView$1;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

    iget-object v1, p0, Lcom/amobee/onlineHapi/AmobeeAdView$1;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

    # getter for: Lcom/amobee/onlineHapi/AmobeeAdView;->fadeInAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$0(Lcom/amobee/onlineHapi/AmobeeAdView;)Landroid/view/animation/Animation;

    move-result-object v1

    # invokes: Lcom/amobee/onlineHapi/AmobeeAdView;->startCustomAnimation(Landroid/view/animation/Animation;)V
    invoke-static {v0, v1}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$1(Lcom/amobee/onlineHapi/AmobeeAdView;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/amobee/onlineHapi/AmobeeAdView$1;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

    iget-object v1, p0, Lcom/amobee/onlineHapi/AmobeeAdView$1;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

    # getter for: Lcom/amobee/onlineHapi/AmobeeAdView;->fadeOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$2(Lcom/amobee/onlineHapi/AmobeeAdView;)Landroid/view/animation/Animation;

    move-result-object v1

    # invokes: Lcom/amobee/onlineHapi/AmobeeAdView;->startCustomAnimation(Landroid/view/animation/Animation;)V
    invoke-static {v0, v1}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$1(Lcom/amobee/onlineHapi/AmobeeAdView;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
