.class Lcom/jumptap/adtag/utils/JtLocation$1;
.super Ljava/lang/Object;
.source "JtLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/jumptap/adtag/utils/JtLocation;->createLocationListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jumptap/adtag/utils/JtLocation;


# direct methods
.method constructor <init>(Lcom/jumptap/adtag/utils/JtLocation;)V
	.locals 0

	.prologue
	.line 94
	iput-object p1, p0, Lcom/jumptap/adtag/utils/JtLocation$1;->this$0:Lcom/jumptap/adtag/utils/JtLocation;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
	.locals 2
	.param p1, "location"	# Landroid/location/Location;

	.prologue
	.line 103
	# invokes: Lcom/jumptap/adtag/utils/JtLocation;->setCurrentLocation(Landroid/location/Location;)V
	invoke-static {p1}, Lcom/jumptap/adtag/utils/JtLocation;->access$000(Landroid/location/Location;)V

	.line 104
	invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

	move-result v0

	const/high16 v1, 0x447a0000	# 1000.0f

	cmpl-float v0, v0, v1

	if-lez v0, :cond_0

	invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

	move-result v0

	if-eqz v0, :cond_0

	.line 106
	# getter for: Lcom/jumptap/adtag/utils/JtLocation;->locationManager:Landroid/location/LocationManager;
	invoke-static {}, Lcom/jumptap/adtag/utils/JtLocation;->access$100()Landroid/location/LocationManager;

	move-result-object v0

	invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

	.line 107
	:cond_0
	return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
	.locals 0
	.param p1, "provider"	# Ljava/lang/String;

	.prologue
	.line 101
	return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
	.locals 0
	.param p1, "provider"	# Ljava/lang/String;

	.prologue
	.line 99
	return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
	.locals 0
	.param p1, "provider"	# Ljava/lang/String;
	.param p2, "status"	# I
	.param p3, "extras"	# Landroid/os/Bundle;

	.prologue
	.line 97
	return-void
.end method
