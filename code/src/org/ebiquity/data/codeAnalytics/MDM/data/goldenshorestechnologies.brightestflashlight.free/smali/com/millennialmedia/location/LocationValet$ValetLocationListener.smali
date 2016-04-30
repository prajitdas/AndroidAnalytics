.class Lcom/millennialmedia/location/LocationValet$ValetLocationListener;
.super Ljava/lang/Object;
.source "LocationValet.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/location/LocationValet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x2
	name = "ValetLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/location/LocationValet;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/location/LocationValet;)V
	.locals 0

	.prologue
	.line 80
	iput-object p1, p0, Lcom/millennialmedia/location/LocationValet$ValetLocationListener;->this$0:Lcom/millennialmedia/location/LocationValet;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/location/LocationValet;Lcom/millennialmedia/location/LocationValet$ValetLocationListener;)V
	.locals 0

	.prologue
	.line 80
	invoke-direct {p0, p1}, Lcom/millennialmedia/location/LocationValet$ValetLocationListener;-><init>(Lcom/millennialmedia/location/LocationValet;)V

	return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
	.locals 2
	.param p1, "location"	# Landroid/location/Location;

	.prologue
	.line 85
	iget-object v0, p0, Lcom/millennialmedia/location/LocationValet$ValetLocationListener;->this$0:Lcom/millennialmedia/location/LocationValet;

	iget-object v1, p0, Lcom/millennialmedia/location/LocationValet$ValetLocationListener;->this$0:Lcom/millennialmedia/location/LocationValet;

	# getter for: Lcom/millennialmedia/location/LocationValet;->_lastGoodLocation:Landroid/location/Location;
	invoke-static {v1}, Lcom/millennialmedia/location/LocationValet;->access$0(Lcom/millennialmedia/location/LocationValet;)Landroid/location/Location;

	move-result-object v1

	invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/location/LocationValet;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

	move-result v0

	if-eqz v0, :cond_0

	.line 87
	iget-object v0, p0, Lcom/millennialmedia/location/LocationValet$ValetLocationListener;->this$0:Lcom/millennialmedia/location/LocationValet;

	# invokes: Lcom/millennialmedia/location/LocationValet;->updateValetListeners(Landroid/location/Location;)V
	invoke-static {v0, p1}, Lcom/millennialmedia/location/LocationValet;->access$1(Lcom/millennialmedia/location/LocationValet;Landroid/location/Location;)V

	.line 89
	:cond_0
	return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
	.locals 0
	.param p1, "provider"	# Ljava/lang/String;

	.prologue
	.line 93
	return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
	.locals 0
	.param p1, "provider"	# Ljava/lang/String;

	.prologue
	.line 97
	return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
	.locals 0
	.param p1, "provider"	# Ljava/lang/String;
	.param p2, "status"	# I
	.param p3, "extras"	# Landroid/os/Bundle;

	.prologue
	.line 101
	return-void
.end method
