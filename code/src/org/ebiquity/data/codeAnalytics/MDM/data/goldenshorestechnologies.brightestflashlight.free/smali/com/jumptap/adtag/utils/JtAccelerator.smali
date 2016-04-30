.class public Lcom/jumptap/adtag/utils/JtAccelerator;
.super Ljava/lang/Object;
.source "JtAccelerator.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private accSensor:Landroid/hardware/Sensor;

.field context:Landroid/content/Context;

.field isAccelStarted:Z

.field private lastUpdate:J

.field private sensorManager:Landroid/hardware/SensorManager;

.field updateFrequency:I

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
	.locals 2
	.param p1, "context"	# Landroid/content/Context;
	.param p2, "webView"	# Landroid/webkit/WebView;

	.prologue
	.line 40
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 29
	const/4 v0, -0x1

	iput v0, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->updateFrequency:I

	.line 31
	const-wide/16 v0, -0x1

	iput-wide v0, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->lastUpdate:J

	.line 34
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->isAccelStarted:Z

	.line 37
	const/4 v0, 0x0

	iput-object v0, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->accSensor:Landroid/hardware/Sensor;

	.line 41
	iput-object p1, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->context:Landroid/content/Context;

	.line 42
	iput-object p2, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->webView:Landroid/webkit/WebView;

	.line 43
	const-string v0, "sensor"

	invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Landroid/hardware/SensorManager;

	iput-object v0, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->sensorManager:Landroid/hardware/SensorManager;

	.line 44
	return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
	.locals 0
	.param p1, "sensor"	# Landroid/hardware/Sensor;
	.param p2, "accuracy"	# I

	.prologue
	.line 105
	return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
	.locals 11
	.param p1, "event"	# Landroid/hardware/SensorEvent;

	.prologue
	const/4 v10, 0x1

	.line 85
	if-eqz p1, :cond_0

	iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

	invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

	move-result v6

	if-ne v6, v10, :cond_0

	iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

	array-length v6, v6

	const/4 v7, 0x3

	if-ge v6, v7, :cond_1

	.line 101
	:cond_0
	:goto_0
	return-void

	.line 88
	:cond_1
	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v0

	.line 90
	.local v0, "curTime":J
	iget-wide v6, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->lastUpdate:J

	const-wide/16 v8, -0x1

	cmp-long v6, v6, v8

	if-eqz v6, :cond_2

	iget-wide v6, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->lastUpdate:J

	sub-long v6, v0, v6

	iget v8, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->updateFrequency:I

	int-to-long v8, v8

	cmp-long v6, v6, v8

	if-lez v6, :cond_0

	.line 92
	:cond_2
	iput-wide v0, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->lastUpdate:J

	.line 94
	iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

	.line 95
	.local v2, "values":[F
	const/4 v6, 0x0

	aget v3, v2, v6

	.line 96
	.local v3, "x":F
	aget v4, v2, v10

	.line 97
	.local v4, "y":F
	const/4 v6, 0x2

	aget v5, v2, v6

	.line 98
	.local v5, "z":F
	iget-object v6, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->webView:Landroid/webkit/WebView;

	new-instance v7, Ljava/lang/StringBuilder;

	invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

	const-string v8, "javascript:gotAccel("

	invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v7

	invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

	move-result-object v7

	const-string v8, ", "

	invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v7

	invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

	move-result-object v7

	const-string v8, ","

	invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v7

	invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

	move-result-object v7

	const-string v8, " )"

	invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v7

	invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v7

	invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

	goto :goto_0
.end method

.method public start(I)V
	.locals 4
	.param p1, "time"	# I
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	const/4 v3, 0x1

	.line 53
	iput p1, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->updateFrequency:I

	.line 54
	iget-boolean v1, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->isAccelStarted:Z

	if-nez v1, :cond_1

	.line 57
	iget-object v1, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->sensorManager:Landroid/hardware/SensorManager;

	invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

	move-result-object v0

	.line 58
	.local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
	invoke-interface {v0}, Ljava/util/List;->size()I

	move-result v1

	if-lez v1, :cond_0

	.line 60
	const/4 v1, 0x0

	invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Landroid/hardware/Sensor;

	iput-object v1, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->accSensor:Landroid/hardware/Sensor;

	.line 64
	:cond_0
	iget-object v1, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->sensorManager:Landroid/hardware/SensorManager;

	iget-object v2, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->accSensor:Landroid/hardware/Sensor;

	invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

	.line 68
	.end local v0	# "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
	:cond_1
	return-void
.end method

.method public stop()V
	.locals 1
	.annotation runtime Landroid/webkit/JavascriptInterface;
	.end annotation

	.prologue
	.line 77
	iget-boolean v0, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->isAccelStarted:Z

	if-eqz v0, :cond_0

	.line 78
	iget-object v0, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->sensorManager:Landroid/hardware/SensorManager;

	invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

	.line 80
	:cond_0
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/jumptap/adtag/utils/JtAccelerator;->isAccelStarted:Z

	.line 81
	return-void
.end method
