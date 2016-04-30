.class Lcom/jumptap/adtag/actions/CallAdAction$1callTester;
.super Ljava/lang/Object;
.source "CallAdAction.java"

# interfaces
.implements Lcom/jumptap/adtag/actions/AdAction$UrlPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/actions/CallAdAction;->perform(Landroid/content/Context;Lcom/jumptap/adtag/JtAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = "callTester"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/actions/CallAdAction;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/actions/CallAdAction;)V
	.locals 0

	.prologue
	.line 18
	iput-object p1, p0, Lcom/jumptap/adtag/actions/CallAdAction$1callTester;->this$0:Lcom/jumptap/adtag/actions/CallAdAction;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public test(Ljava/lang/String;)Z
	.locals 3
	.param p1, "s"	# Ljava/lang/String;

	.prologue
	.line 20
	invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v1

	.line 21
	.local v1, "uri":Landroid/net/Uri;
	invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

	move-result-object v0

	.line 22
	.local v0, "scheme":Ljava/lang/String;
	const-string v2, "tel"

	invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v2

	return v2
.end method
