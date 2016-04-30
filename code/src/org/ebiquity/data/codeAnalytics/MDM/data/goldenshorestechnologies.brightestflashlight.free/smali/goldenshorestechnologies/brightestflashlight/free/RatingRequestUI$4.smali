.class Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$4;
.super Ljava/lang/Object;
.source "RatingRequestUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->DisplayRatingRequestDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# direct methods
.method constructor <init>()V
	.locals 0

	.prologue
	.line 194
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 1
	return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
	.locals 1
	.param p1, "dialog"	# Landroid/content/DialogInterface;

	.prologue
	.line 198
	sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialog:Landroid/app/AlertDialog;

	invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

	.line 199
	return-void
.end method
