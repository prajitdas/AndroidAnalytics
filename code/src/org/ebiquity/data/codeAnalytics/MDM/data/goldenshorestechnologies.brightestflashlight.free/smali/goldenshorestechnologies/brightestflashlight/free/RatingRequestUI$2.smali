.class Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$2;
.super Ljava/lang/Object;
.source "RatingRequestUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->DisplayRatingRequestDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field private final synthetic val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;


# direct methods
.method constructor <init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
	.locals 0

	.prologue
	.line 1
	iput-object p1, p0, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$2;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 172
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
	.locals 4
	.param p1, "dialog"	# Landroid/content/DialogInterface;
	.param p2, "which"	# I

	.prologue
	.line 175
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$2;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	const-string v1, "RatingRequestData"

	const-string v2, "DidUserClickLater"

	const/4 v3, 0x1

	invoke-static {v0, v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

	.line 176
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$2;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	const-string v1, "RatingRequestData"

	const-string v2, "SessionCountSinceClickedLater"

	const/4 v3, 0x0

	invoke-static {v0, v1, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->WritePreferenceInt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

	.line 177
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI$2;->val$activityMainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDUserClickedRateRequestNoButton:Ljava/lang/String;

	const/4 v2, 0x0

	invoke-virtual {v0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	.line 178
	sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->mDialog:Landroid/app/AlertDialog;

	invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

	.line 179
	return-void
.end method
