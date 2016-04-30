.class Lcom/millennialmedia/android/AdViewOverlayActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;
.source "AdViewOverlayActivity.java"


# instance fields
.field private accelerometerEventListener:Landroid/hardware/SensorEventListener;

.field private adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

.field hasFocus:Z

.field private final interval:I

.field isPaused:Z

.field private sensorManager:Landroid/hardware/SensorManager;

.field private settings:Lcom/millennialmedia/android/OverlaySettings;

.field private final threshold:F


# direct methods
.method constructor <init>()V
	.locals 1

	.prologue
	.line 22
	invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

	.line 300
	const v0, 0x3e4ccccd	# 0.2f

	iput v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->threshold:F

	.line 301
	const/16 v0, 0x3e8

	iput v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->interval:I

	.line 332
	new-instance v0, Lcom/millennialmedia/android/AdViewOverlayActivity$1;

	invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdViewOverlayActivity$1;-><init>(Lcom/millennialmedia/android/AdViewOverlayActivity;)V

	iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

	return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/AdViewOverlayActivity;FFF)V
	.locals 0
	.param p0, "x0"	# Lcom/millennialmedia/android/AdViewOverlayActivity;
	.param p1, "x1"	# F
	.param p2, "x2"	# F
	.param p3, "x3"	# F

	.prologue
	.line 22
	invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/AdViewOverlayActivity;->didAccelerate(FFF)V

	return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/AdViewOverlayActivity;F)V
	.locals 0
	.param p0, "x0"	# Lcom/millennialmedia/android/AdViewOverlayActivity;
	.param p1, "x1"	# F

	.prologue
	.line 22
	invoke-direct {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->didShake(F)V

	return-void
.end method

.method private didAccelerate(FFF)V
	.locals 4
	.param p1, "x"	# F
	.param p2, "y"	# F
	.param p3, "z"	# F

	.prologue
	.line 284
	const-string v0, "Accelerometer x:%fy:%fz:%f"

	const/4 v1, 0x3

	new-array v1, v1, [Ljava/lang/Object;

	const/4 v2, 0x0

	invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

	move-result-object v3

	aput-object v3, v1, v2

	const/4 v2, 0x1

	invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

	move-result-object v3

	aput-object v3, v1, v2

	const/4 v2, 0x2

	invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

	move-result-object v3

	aput-object v3, v1, v2

	invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 285
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "javascript:didAccelerate("

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, ","

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, ","

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, ")"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->injectJS(Ljava/lang/String;)V

	.line 286
	return-void
.end method

.method private didShake(F)V
	.locals 4
	.param p1, "force"	# F

	.prologue
	.line 294
	const-string v0, "Phone shaken: %f"

	const/4 v1, 0x1

	new-array v1, v1, [Ljava/lang/Object;

	const/4 v2, 0x0

	invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

	move-result-object v3

	aput-object v3, v1, v2

	invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 295
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "javascript:didShake("

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

	move-result-object v1

	const-string v2, ")"

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->injectJS(Ljava/lang/String;)V

	.line 296
	return-void
.end method

.method private lockOrientation()V
	.locals 3

	.prologue
	const/16 v2, 0x9

	const/16 v1, 0x8

	.line 150
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I

	move-result v0

	if-nez v0, :cond_0

	.line 151
	const/4 v0, 0x0

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

	.line 159
	:goto_0
	return-void

	.line 152
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I

	move-result v0

	if-ne v0, v1, :cond_1

	.line 153
	invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

	goto :goto_0

	.line 154
	:cond_1
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I

	move-result v0

	if-ne v0, v2, :cond_2

	.line 155
	invoke-virtual {p0, v2}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

	goto :goto_0

	.line 158
	:cond_2
	const/4 v0, 0x1

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

	goto :goto_0
.end method

.method private setRequestedOrientation(Ljava/lang/String;)V
	.locals 1
	.param p1, "orientation"	# Ljava/lang/String;

	.prologue
	.line 113
	const-string v0, "landscape"

	invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v0

	if-eqz v0, :cond_1

	.line 114
	const/4 v0, 0x0

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

	.line 131
	:cond_0
	:goto_0
	return-void

	.line 115
	:cond_1
	const-string v0, "portrait"

	invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v0

	if-eqz v0, :cond_0

	.line 116
	const/4 v0, 0x1

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

	goto :goto_0
.end method

.method private startAccelerating()V
	.locals 6

	.prologue
	const/4 v5, 0x0

	const/4 v4, 0x1

	.line 307
	const-string v1, "sensor"

	invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Landroid/hardware/SensorManager;

	iput-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

	.line 308
	iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

	iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

	iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

	invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

	move-result-object v3

	invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

	move-result v1

	invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

	move-result-object v0

	.line 309
	.local v0, "isAccelerometerSupported":Ljava/lang/Boolean;
	invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

	move-result v1

	if-nez v1, :cond_0

	.line 311
	const-string v1, "Accelerometer not supported by this device. Unregistering listener."

	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

	.line 312
	iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

	iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

	iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

	invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

	move-result-object v3

	invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

	.line 313
	iput-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

	.line 314
	iput-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

	.line 316
	:cond_0
	return-void
.end method

.method private stopAccelerating()V
	.locals 4

	.prologue
	.line 323
	:try_start_0
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

	if-eqz v0, :cond_0

	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

	if-eqz v0, :cond_0

	.line 324
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

	iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

	iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

	const/4 v3, 0x1

	invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

	move-result-object v2

	invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 329
	:cond_0
	:goto_0
	return-void

	.line 326
	:catch_0
	move-exception v0

	goto :goto_0
.end method


# virtual methods
.method public finish()V
	.locals 1

	.prologue
	.line 178
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	if-eqz v0, :cond_0

	.line 180
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->attachWebViewToLink()V

	.line 182
	:cond_0
	invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->finish()V

	.line 183
	return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
	.locals 1
	.param p1, "newConfig"	# Landroid/content/res/Configuration;

	.prologue
	.line 104
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	if-eqz v0, :cond_0

	.line 106
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->inlineConfigChange()V

	.line 108
	:cond_0
	invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

	.line 109
	return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
	.locals 9
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	const/4 v6, 0x1

	const/4 v8, 0x0

	const/4 v7, -0x2

	.line 35
	const v4, 0x1030010

	invoke-virtual {p0, v4}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setTheme(I)V

	.line 36
	invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

	.line 38
	invoke-virtual {p0, v6}, Lcom/millennialmedia/android/AdViewOverlayActivity;->requestWindowFeature(I)Z

	.line 39
	invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

	move-result-object v4

	new-instance v5, Landroid/graphics/drawable/ColorDrawable;

	invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

	invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

	.line 40
	invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

	move-result-object v4

	const/16 v5, 0x400

	invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

	.line 41
	invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

	move-result-object v4

	const/16 v5, 0x800

	invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

	.line 45
	invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

	move-result-object v4

	const/high16 v5, 0x1000000

	invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

	.line 47
	invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getIntent()Landroid/content/Intent;

	move-result-object v1

	.line 48
	.local v1, "intent":Landroid/content/Intent;
	const-string v4, "settings"

	invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

	move-result-object v4

	check-cast v4, Lcom/millennialmedia/android/OverlaySettings;

	iput-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	.line 51
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	if-nez v4, :cond_0

	.line 52
	new-instance v4, Lcom/millennialmedia/android/OverlaySettings;

	invoke-direct {v4}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

	iput-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	.line 53
	:cond_0
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->log()V

	.line 54
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	iget-object v4, v4, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

	if-eqz v4, :cond_1

	.line 55
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	iget-object v4, v4, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

	invoke-direct {p0, v4}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(Ljava/lang/String;)V

	.line 57
	:cond_1
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	iget-boolean v4, v4, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

	if-eqz v4, :cond_4

	.line 58
	invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->unlockScreenOrientation()V

	.line 62
	:goto_0
	if-eqz v1, :cond_2

	.line 64
	invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

	move-result-object v3

	.line 65
	.local v3, "uri":Landroid/net/Uri;
	if-eqz v3, :cond_2

	.line 67
	const-string v4, "Path: %s"

	new-array v5, v6, [Ljava/lang/Object;

	invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

	move-result-object v6

	aput-object v6, v5, v8

	invoke-static {v4, v5}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 70
	.end local v3	# "uri":Landroid/net/Uri;
	:cond_2
	new-instance v0, Landroid/widget/RelativeLayout;

	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

	.line 71
	.local v0, "allowForCenteringModalsLayout":Landroid/widget/RelativeLayout;
	new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 72
	.local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
	const/16 v4, 0xd

	invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 73
	const v4, 0x34c60db9

	invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setId(I)V

	.line 74
	invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

	.line 76
	new-instance v4, Lcom/millennialmedia/android/AdViewOverlayView;

	iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	invoke-direct {v4, p0, v5}, Lcom/millennialmedia/android/AdViewOverlayView;-><init>(Lcom/millennialmedia/android/AdViewOverlayActivity;Lcom/millennialmedia/android/OverlaySettings;)V

	iput-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	.line 78
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

	.line 79
	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setContentView(Landroid/view/View;)V

	.line 82
	invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

	move-result-object v4

	if-nez v4, :cond_3

	.line 84
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->isExpanded()Z

	move-result v4

	if-eqz v4, :cond_5

	.line 86
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	iget-object v4, v4, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v4, v4, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

	invoke-virtual {v4}, Lcom/millennialmedia/android/MMWebView;->setMraidExpanded()V

	.line 87
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->hasExpandUrl()Z

	move-result v4

	if-eqz v4, :cond_3

	.line 89
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	iget-object v5, v5, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

	invoke-virtual {v4, v5}, Lcom/millennialmedia/android/AdViewOverlayView;->getWebContent(Ljava/lang/String;)V

	.line 98
	:cond_3
	:goto_1
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	const/4 v5, 0x0

	iput-object v5, v4, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

	.line 99
	return-void

	.line 60
	.end local v0	# "allowForCenteringModalsLayout":Landroid/widget/RelativeLayout;
	.end local v2	# "params":Landroid/widget/RelativeLayout$LayoutParams;
	:cond_4
	invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->lockOrientation()V

	goto :goto_0

	.line 92
	.restart local v0	# "allowForCenteringModalsLayout":Landroid/widget/RelativeLayout;
	.restart local v2	# "params":Landroid/widget/RelativeLayout$LayoutParams;
	:cond_5
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	invoke-virtual {v4}, Lcom/millennialmedia/android/OverlaySettings;->isExpanded()Z

	move-result v4

	if-nez v4, :cond_3

	.line 94
	iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	iget-object v5, v5, Lcom/millennialmedia/android/OverlaySettings;->content:Ljava/lang/String;

	iget-object v6, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	iget-object v6, v6, Lcom/millennialmedia/android/OverlaySettings;->adUrl:Ljava/lang/String;

	invoke-virtual {v4, v5, v6}, Lcom/millennialmedia/android/AdViewOverlayView;->loadWebContent(Ljava/lang/String;Ljava/lang/String;)V

	goto :goto_1
.end method

.method protected onDestroy()V
	.locals 1

	.prologue
	.line 232
	invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

	.line 233
	const-string v0, "Overlay onDestroy"

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 234
	return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
	.locals 1
	.param p1, "keyCode"	# I
	.param p2, "event"	# Landroid/view/KeyEvent;

	.prologue
	.line 266
	const/4 v0, 0x4

	if-ne p1, v0, :cond_0

	invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

	move-result v0

	if-nez v0, :cond_0

	.line 268
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->finishOverlayWithAnimation()V

	.line 269
	const/4 v0, 0x1

	.line 271
	:goto_0
	return v0

	:cond_0
	invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

	move-result v0

	goto :goto_0
.end method

.method protected onPause()V
	.locals 1

	.prologue
	.line 218
	const/4 v0, 0x1

	iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->isPaused:Z

	.line 219
	const-string v0, "Overlay onPause"

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 220
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

	if-eqz v0, :cond_0

	.line 221
	invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->stopAccelerating()V

	.line 222
	:cond_0
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

	move-result-object v0

	invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

	.line 223
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->pauseVideo()V

	.line 224
	const/4 v0, 0x0

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setResult(I)V

	.line 225
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->pauseWebViewVideo()V

	.line 226
	invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onPause()V

	.line 227
	return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
	.locals 0
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	.line 259
	invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

	.line 260
	return-void
.end method

.method protected onResume()V
	.locals 1

	.prologue
	.line 189
	const/4 v0, 0x0

	iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->isPaused:Z

	.line 190
	const-string v0, "Overlay onResume"

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 191
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

	if-eqz v0, :cond_0

	.line 192
	invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->startAccelerating()V

	.line 193
	:cond_0
	iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->hasFocus:Z

	if-eqz v0, :cond_1

	.line 194
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->resumeVideo()V

	.line 195
	:cond_1
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->addBlackView()V

	.line 196
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

	iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->resumeWebViewVideo()V

	.line 197
	invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onResume()V

	.line 198
	return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
	.locals 1

	.prologue
	.line 246
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->getNonConfigurationInstance()Ljava/lang/Object;

	move-result-object v0

	return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
	.locals 2
	.param p1, "outState"	# Landroid/os/Bundle;

	.prologue
	.line 252
	const-string v0, "adViewId"

	iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->getId()I

	move-result v1

	invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

	.line 253
	invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

	.line 254
	return-void
.end method

.method protected onStop()V
	.locals 0

	.prologue
	.line 239
	invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onStop()V

	.line 240
	return-void
.end method

.method public onWindowFocusChanged(Z)V
	.locals 1
	.param p1, "hasWindowFocus"	# Z

	.prologue
	.line 206
	invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onWindowFocusChanged(Z)V

	.line 207
	iput-boolean p1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->hasFocus:Z

	.line 208
	iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->isPaused:Z

	if-nez v0, :cond_0

	if-eqz p1, :cond_0

	.line 210
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

	invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->resumeVideo()V

	.line 212
	:cond_0
	return-void
.end method

.method setAllowOrientationChange(Z)V
	.locals 1
	.param p1, "allowOrientationChange"	# Z

	.prologue
	.line 140
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	iput-boolean p1, v0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

	.line 141
	if-eqz p1, :cond_0

	.line 142
	invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->unlockScreenOrientation()V

	.line 146
	:goto_0
	return-void

	.line 144
	:cond_0
	invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->lockOrientation()V

	goto :goto_0
.end method

.method setRequestedOrientationLandscape()V
	.locals 3

	.prologue
	const/4 v2, 0x0

	.line 170
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	const-string v1, "landscape"

	iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

	.line 171
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	iput-boolean v2, v0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

	.line 172
	invoke-virtual {p0, v2}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

	.line 173
	return-void
.end method

.method setRequestedOrientationPortrait()V
	.locals 2

	.prologue
	.line 163
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	const-string v1, "portrait"

	iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

	.line 164
	iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

	const/4 v1, 0x0

	iput-boolean v1, v0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

	.line 165
	const/4 v0, 0x1

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

	.line 166
	return-void
.end method

.method unlockScreenOrientation()V
	.locals 1

	.prologue
	.line 135
	const/4 v0, -0x1

	invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

	.line 136
	return-void
.end method
