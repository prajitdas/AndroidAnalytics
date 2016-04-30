.class public Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;
.super Landroid/app/Activity;
.source "BrightestFlashlightMain.java"


# static fields
.field private static final BANNER_AD_HEIGHT:I = 0x32

.field private static final BANNER_AD_WIDTH:I = 0x140

.field private static final IAB_LEADERBOARD_HEIGHT:I = 0x5a

.field private static final IAB_LEADERBOARD_WIDTH:I = 0x2d8

.field private static final LED_NOTIFICATION_ID:I = 0x309

.field private static final MED_BANNER_HEIGHT:I = 0x3c

.field private static final MED_BANNER_WIDTH:I = 0x1e0

.field private static final TAG:Ljava/lang/String; = "BrightestFlashlightMain"


# instance fields
.field adView:Lcom/millennialmedia/android/MMAdView;

.field camPrevSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private getFlashlightEnabled:Ljava/lang/reflect/Method;

.field locationValet:Lcom/millennialmedia/location/LocationValet;

.field private mAutofocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mCamera:Landroid/hardware/Camera;

.field private mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

.field protected mHandlerShutdownTimer:Landroid/os/Handler;

.field public mMainSettingsUI:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreview:Landroid/view/SurfaceView;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewHolder:Landroid/view/SurfaceHolder;

.field mRunnable:Ljava/lang/Runnable;

.field private mSettingsCategoriesDialog:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

.field private mSoundSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

.field private mStrAWK:Ljava/lang/String;

.field private mStrPackageName:Ljava/lang/String;

.field private mTimerSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

.field private mVideoView:Landroid/widget/VideoView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mainLayout:Landroid/widget/RelativeLayout;

.field private mbDidWeMuteAudioStream:Z

.field private mbPreviewHolderInititalized:Z

.field private mfBrightness:F

.field private mfSoftKeysBrightness:F

.field private miSystemMusicVolume:I

.field mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

.field private setFlashlightEnabled:Ljava/lang/reflect/Method;

.field private svc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
	.locals 1

	.prologue
	.line 62
	const-string v0, "ndkmoment"

	invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

	.line 108
	return-void
.end method

.method public constructor <init>()V
	.locals 3

	.prologue
	const/4 v2, 0x0

	const/4 v1, 0x0

	.line 57
	invoke-direct {p0}, Landroid/app/Activity;-><init>()V

	.line 79
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	.line 82
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMediaPlayer:Landroid/media/MediaPlayer;

	.line 84
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPowerManager:Landroid/os/PowerManager;

	.line 85
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

	.line 96
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->locationValet:Lcom/millennialmedia/location/LocationValet;

	.line 99
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

	.line 112
	const-string v0, "a118"

	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrAWK:Ljava/lang/String;

	.line 115
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMainSettingsUI:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	.line 116
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSettingsCategoriesDialog:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

	.line 117
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSoundSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

	.line 118
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mTimerSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

	.line 119
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	.line 125
	const/4 v0, 0x0

	iput v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mfSoftKeysBrightness:F

	.line 128
	iput v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->miSystemMusicVolume:I

	.line 132
	iput-boolean v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mbDidWeMuteAudioStream:Z

	.line 133
	iput-boolean v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mbPreviewHolderInititalized:Z

	.line 537
	new-instance v0, Landroid/os/Handler;

	invoke-direct {v0}, Landroid/os/Handler;-><init>()V

	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mHandlerShutdownTimer:Landroid/os/Handler;

	.line 538
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mRunnable:Ljava/lang/Runnable;

	.line 720
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->svc:Ljava/lang/Object;

	.line 721
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashlightEnabled:Ljava/lang/reflect/Method;

	.line 722
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getFlashlightEnabled:Ljava/lang/reflect/Method;

	.line 1551
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreview:Landroid/view/SurfaceView;

	.line 1552
	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreviewHolder:Landroid/view/SurfaceHolder;

	.line 1710
	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$1;

	invoke-direct {v0, p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$1;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

	.line 1723
	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$2;

	invoke-direct {v0, p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$2;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mAutofocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

	.line 1760
	new-instance v0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;

	invoke-direct {v0, p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$3;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	iput-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->camPrevSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

	.line 57
	return-void
.end method

.method static synthetic access$0(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera;
	.locals 1

	.prologue
	.line 79
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	return-object v0
.end method

.method static synthetic access$1(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/hardware/Camera$AutoFocusCallback;
	.locals 1

	.prologue
	.line 1723
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mAutofocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

	return-object v0
.end method

.method static synthetic access$2(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/view/SurfaceHolder;
	.locals 1

	.prologue
	.line 1552
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreviewHolder:Landroid/view/SurfaceHolder;

	return-object v0
.end method

.method static synthetic access$3(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;Landroid/hardware/Camera;)V
	.locals 0

	.prologue
	.line 1742
	invoke-direct {p0, p1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->stopCameraPreview(Landroid/hardware/Camera;)V

	return-void
.end method

.method static synthetic access$4(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
	.locals 0

	.prologue
	.line 1303
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->playCountdownAnimation()V

	return-void
.end method

.method static synthetic access$5(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)Landroid/widget/VideoView;
	.locals 1

	.prologue
	.line 87
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	return-object v0
.end method

.method static synthetic access$6(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V
	.locals 0

	.prologue
	.line 1287
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->restoreMuteState()V

	return-void
.end method

.method private addPairToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
	.locals 3
	.param p2, "strKey"	# Ljava/lang/String;
	.param p3, "strValue"	# Ljava/lang/String;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			")V"
		}
	.end annotation

	.prologue
	.line 1413
	.local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	if-eqz p2, :cond_0

	if-nez p3, :cond_1

	.line 1430
	:cond_0
	:goto_0
	return-void

	.line 1416
	:cond_1
	:try_start_0
	invoke-virtual {p2}, Ljava/lang/String;->length()I

	move-result v1

	if-eqz v1, :cond_0

	invoke-virtual {p3}, Ljava/lang/String;->length()I

	move-result v1

	if-eqz v1, :cond_0

	.line 1421
	const/16 v1, 0xfa

	invoke-direct {p0, p2, v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

	move-result-object p2

	.line 1422
	const/16 v1, 0xfa

	invoke-direct {p0, p3, v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

	move-result-object p3

	.line 1424
	invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 1426
	:catch_0
	move-exception v0

	.line 1427
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "addPairToMap() Failed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1428
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method private native closeCameraSamsungMoment()V
.end method

.method private enableFlashlight(Z)V
	.locals 14
	.param p1, "bOn"	# Z

	.prologue
	.line 953
	:try_start_0
	const-string v9, "android.os.ServiceManager"

	invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

	move-result-object v8

	.line 954
	.local v8, "sm":Ljava/lang/Class;
	const-string v9, "getService"

	const/4 v10, 0x1

	new-array v10, v10, [Ljava/lang/Class;

	const/4 v11, 0x0

	const-class v12, Ljava/lang/String;

	aput-object v12, v10, v11

	invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

	move-result-object v9

	const/4 v10, 0x0

	const/4 v11, 0x1

	new-array v11, v11, [Ljava/lang/Object;

	const/4 v12, 0x0

	const-string v13, "hardware"

	aput-object v13, v11, v12

	invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v4

	.line 958
	.local v4, "hwBinder":Ljava/lang/Object;
	const-string v9, "android.os.IHardwareService$Stub"

	invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

	move-result-object v5

	.line 959
	.local v5, "hwsstub":Ljava/lang/Class;
	const-string v9, "asInterface"

	const/4 v10, 0x1

	new-array v10, v10, [Ljava/lang/Class;

	const/4 v11, 0x0

	const-class v12, Landroid/os/IBinder;

	aput-object v12, v10, v11

	invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

	move-result-object v0

	.line 960
	.local v0, "asInterface":Ljava/lang/reflect/Method;
	const/4 v9, 0x0

	const/4 v10, 0x1

	new-array v10, v10, [Ljava/lang/Object;

	const/4 v11, 0x0

	check-cast v4, Landroid/os/IBinder;

	.end local v4	# "hwBinder":Ljava/lang/Object;
	aput-object v4, v10, v11

	invoke-virtual {v0, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v9

	iput-object v9, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->svc:Ljava/lang/Object;

	.line 964
	iget-object v9, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->svc:Ljava/lang/Object;

	invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

	move-result-object v7

	.line 966
	.local v7, "proxy":Ljava/lang/Class;
	const-string v9, "setFlashlightEnabled"

	const/4 v10, 0x1

	new-array v10, v10, [Ljava/lang/Class;

	const/4 v11, 0x0

	sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

	aput-object v12, v10, v11

	invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

	move-result-object v9

	iput-object v9, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashlightEnabled:Ljava/lang/reflect/Method;

	.line 967
	const-string v9, "getFlashlightEnabled"

	const/4 v10, 0x0

	invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

	move-result-object v9

	iput-object v9, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getFlashlightEnabled:Ljava/lang/reflect/Method;
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 976
	.end local v0	# "asInterface":Ljava/lang/reflect/Method;
	.end local v5	# "hwsstub":Ljava/lang/Class;
	.end local v7	# "proxy":Ljava/lang/Class;
	.end local v8	# "sm":Ljava/lang/Class;
	:goto_0
	:try_start_1
	iget-object v9, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashlightEnabled:Ljava/lang/reflect/Method;

	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->svc:Ljava/lang/Object;

	const/4 v11, 0x1

	new-array v11, v11, [Ljava/lang/Object;

	const/4 v12, 0x0

	invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

	move-result-object v13

	aput-object v13, v11, v12

	invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

	.line 985
	:goto_1
	:try_start_2
	iget-object v9, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getFlashlightEnabled:Ljava/lang/reflect/Method;

	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->svc:Ljava/lang/Object;

	const/4 v11, 0x0

	invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v6

	.line 986
	.local v6, "oRet":Ljava/lang/Object;
	check-cast v6, Ljava/lang/Boolean;

	.end local v6	# "oRet":Ljava/lang/Object;
	invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

	move-result v1

	.line 987
	.local v1, "bRet":Z
	if-eqz v1, :cond_0

	.line 988
	const/4 v9, 0x1

	sput-boolean v9, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSuccessfullyUsingSetFlashlightEnabled:Z

	.line 989
	const-string v9, "BrightestFlashlightMain"

	const-string v10, "Successfully turned on camera LED with setFlashlightEnabled()"

	invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_2
	.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

	.line 1004
	.end local v1	# "bRet":Z
	:goto_2
	return-void

	.line 968
	:catch_0
	move-exception v2

	.line 969
	.local v2, "e":Ljava/lang/Exception;
	const/4 v9, 0x0

	:try_start_3
	iput-object v9, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashlightEnabled:Ljava/lang/reflect/Method;

	.line 970
	const-string v9, "BrightestFlashlightMain"

	const-string v10, "Failed to acquire setFlashlightEnabled() via reflection"

	invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 971
	invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
	:try_end_3
	.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

	goto :goto_0

	.line 999
	:catch_1
	move-exception v9

	move-object v3, v2

	.end local v2	# "e":Ljava/lang/Exception;
	.local v3, "e":Ljava/lang/Exception;
	move-object v2, v9

	.line 1000
	.end local v3	# "e":Ljava/lang/Exception;
	.restart local v2	# "e":Ljava/lang/Exception;
	const-string v9, "BrightestFlashlightMain"

	const-string v10, "enableFlashlight() failed"

	invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1001
	invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

	.line 1002
	sget-object v9, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionEnableFlashlightFailed:Ljava/lang/String;

	const/4 v10, 0x0

	invoke-virtual {p0, v9, v10}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_2

	.line 977
	.end local v2	# "e":Ljava/lang/Exception;
	:catch_2
	move-exception v2

	.line 978
	.restart local v2	# "e":Ljava/lang/Exception;
	:try_start_4
	const-string v9, "BrightestFlashlightMain"

	const-string v10, "Invoke of setFlashlightEnabled() failed"

	invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 979
	invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
	:try_end_4
	.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

	goto :goto_1

	.line 992
	.end local v2	# "e":Ljava/lang/Exception;
	.restart local v1	# "bRet":Z
	:cond_0
	:try_start_5
	sget-object v9, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryID_setFlashlightEnabledFailed:Ljava/lang/String;

	const/4 v10, 0x0

	invoke-virtual {p0, v9, v10}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	.line 993
	const-string v9, "BrightestFlashlightMain"

	const-string v10, "Failed to turn on camera LED with setFlashlightEnabled()"

	invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_5
	.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

	goto :goto_2

	.line 995
	.end local v1	# "bRet":Z
	:catch_3
	move-exception v2

	.line 996
	.restart local v2	# "e":Ljava/lang/Exception;
	:try_start_6
	const-string v9, "BrightestFlashlightMain"

	const-string v10, "Invoke of getFlashlightEnabled() failed"

	invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 997
	invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
	:try_end_6
	.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

	goto :goto_2
.end method

.method private exitIfScreenOff()Z
	.locals 6

	.prologue
	.line 517
	:try_start_0
	const-string v4, "power"

	invoke-virtual {p0, v4}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v3

	check-cast v3, Landroid/os/PowerManager;

	.line 518
	.local v3, "pm":Landroid/os/PowerManager;
	invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

	move-result v0

	.line 519
	.local v0, "bIsScreenOn":Z
	const-string v4, "keyguard"

	invoke-virtual {p0, v4}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v2

	check-cast v2, Landroid/app/KeyguardManager;

	.line 520
	.local v2, "kgMgr":Landroid/app/KeyguardManager;
	invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

	move-result v0

	.line 521
	if-eqz v0, :cond_0

	.line 522
	const-string v4, "BrightestFlashlightMain"

	const-string v5, "exitIfScreenOff() Launch Aborted.  Exiting."

	invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

	.line 523
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->finish()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 531
	.end local v0	# "bIsScreenOn":Z
	.end local v2	# "kgMgr":Landroid/app/KeyguardManager;
	.end local v3	# "pm":Landroid/os/PowerManager;
	:cond_0
	:goto_0
	return v0

	.line 527
	:catch_0
	move-exception v1

	.line 528
	.local v1, "e":Ljava/lang/Exception;
	const-string v4, "BrightestFlashlightMain"

	const-string v5, "exitIfScreenOff() Failed"

	invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 529
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	.line 530
	sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionExitIfScreenOffFailed:Ljava/lang/String;

	const/4 v5, 0x0

	invoke-virtual {p0, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	.line 531
	const/4 v0, 0x0

	goto :goto_0
.end method

.method private getSoftwareVersion()I
	.locals 6

	.prologue
	.line 596
	const/4 v1, 0x0

	.line 598
	.local v1, "iVersion":I
	:try_start_0
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getPackageManager()Landroid/content/pm/PackageManager;

	move-result-object v3

	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getPackageName()Ljava/lang/String;

	move-result-object v4

	const/4 v5, 0x0

	invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

	move-result-object v2

	.line 599
	.local v2, "packageInfo":Landroid/content/pm/PackageInfo;
	iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 606
	.end local v2	# "packageInfo":Landroid/content/pm/PackageInfo;
	:goto_0
	return v1

	.line 601
	:catch_0
	move-exception v0

	.line 602
	.local v0, "e":Ljava/lang/Exception;
	const-string v3, "BrightestFlashlightMain"

	const-string v4, "Package name not found"

	invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 603
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 604
	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionGetSoftwareVersionFailed:Ljava/lang/String;

	const/4 v4, 0x0

	invoke-virtual {p0, v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method private hideAllChildSettingDialogs()V
	.locals 3

	.prologue
	.line 2026
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSettingsCategoriesDialog:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->fadeToInvisible()V

	.line 2027
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSoundSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->fadeToInvisible()V

	.line 2028
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mTimerSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->fadeToInvisible()V

	.line 2029
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->fadeToInvisible()V

	.line 2030
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showMainSettingsDialog()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 2035
	:goto_0
	return-void

	.line 2031
	:catch_0
	move-exception v0

	.line 2032
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in hideAllChildSettingDialogs()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 2033
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method private launchFadeInScreen()V
	.locals 5

	.prologue
	.line 1448
	const/high16 v3, 0x7f090000

	:try_start_0
	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->findViewById(I)Landroid/view/View;

	move-result-object v2

	.line 1449
	.local v2, "mainView":Landroid/view/View;
	const/high16 v3, 0x7f040000

	invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

	move-result-object v0

	.line 1450
	.local v0, "animationMainScreen":Landroid/view/animation/Animation;
	invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

	.line 1451
	const-string v3, "BrightestFlashlightMain"

	const-string v4, "Launched Fade-In Screen"

	invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1457
	.end local v0	# "animationMainScreen":Landroid/view/animation/Animation;
	.end local v2	# "mainView":Landroid/view/View;
	:goto_0
	return-void

	.line 1452
	:catch_0
	move-exception v1

	.line 1453
	.local v1, "e":Ljava/lang/Exception;
	const-string v3, "BrightestFlashlightMain"

	const-string v4, "launchFadeInScreen() Failed"

	invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1454
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	.line 1455
	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionLaunchFadeInScreenFailed:Ljava/lang/String;

	const/4 v4, 0x0

	invoke-virtual {p0, v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method private native openCameraSamsungMoment()Ljava/lang/String;
.end method

.method private playCountdownAnimation()V
	.locals 9

	.prologue
	const/4 v8, 0x0

	.line 1308
	:try_start_0
	sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

	.line 1309
	.local v3, "strManufacturer":Ljava/lang/String;
	const-string v5, "HTC"

	invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v5

	if-nez v5, :cond_0

	.line 1310
	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-direct {p0, v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->stopCameraPreview(Landroid/hardware/Camera;)V

	.line 1314
	:cond_0
	const-string v5, "audio"

	invoke-virtual {p0, v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Landroid/media/AudioManager;

	.line 1315
	.local v0, "audioManager":Landroid/media/AudioManager;
	const-string v5, "Settings_Sound"

	const-string v6, "Muted"

	const/4 v7, 0x0

	invoke-static {p0, v5, v6, v7}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

	move-result v1

	.line 1316
	.local v1, "bMuted":Z
	if-eqz v1, :cond_2

	iget-boolean v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mbDidWeMuteAudioStream:Z

	if-nez v5, :cond_2

	.line 1317
	const/4 v5, 0x3

	const/4 v6, 0x1

	invoke-virtual {v0, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

	.line 1318
	const/4 v5, 0x1

	iput-boolean v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mbDidWeMuteAudioStream:Z

	.line 1325
	:cond_1
	:goto_0
	new-instance v5, Ljava/lang/StringBuilder;

	const-string v6, "android.resource://"

	invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getPackageName()Ljava/lang/String;

	move-result-object v6

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	const-string v6, "/"

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	const v6, 0x7f060002

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v5

	invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

	move-result-object v4

	.line 1326
	.local v4, "uri":Landroid/net/Uri;
	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v5, v4}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

	.line 1328
	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	const/4 v6, 0x1

	invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

	.line 1329
	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	const/4 v6, 0x0

	invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setVisibility(I)V

	.line 1330
	iget-object v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v5}, Landroid/widget/VideoView;->start()V

	.line 1351
	sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDCountDownAnimationPlayed:Ljava/lang/String;

	const/4 v6, 0x0

	invoke-virtual {p0, v5, v6}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	.line 1352
	const-string v5, "BrightestFlashlightMain"

	const-string v6, "Launched countdown animation"

	invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 1358
	.end local v0	# "audioManager":Landroid/media/AudioManager;
	.end local v1	# "bMuted":Z
	.end local v3	# "strManufacturer":Ljava/lang/String;
	.end local v4	# "uri":Landroid/net/Uri;
	:goto_1
	return-void

	.line 1320
	.restart local v0	# "audioManager":Landroid/media/AudioManager;
	.restart local v1	# "bMuted":Z
	.restart local v3	# "strManufacturer":Ljava/lang/String;
	:cond_2
	if-nez v1, :cond_1

	iget-boolean v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mbDidWeMuteAudioStream:Z

	if-eqz v5, :cond_1

	.line 1321
	const/4 v5, 0x3

	const/4 v6, 0x0

	invoke-virtual {v0, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

	.line 1322
	const/4 v5, 0x0

	iput-boolean v5, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mbDidWeMuteAudioStream:Z
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 1353
	.end local v0	# "audioManager":Landroid/media/AudioManager;
	.end local v1	# "bMuted":Z
	.end local v3	# "strManufacturer":Ljava/lang/String;
	:catch_0
	move-exception v2

	.line 1354
	.local v2, "e":Ljava/lang/Exception;
	const-string v5, "BrightestFlashlightMain"

	const-string v6, "playCountdownAnimation() Failed"

	invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1355
	invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

	.line 1356
	sget-object v5, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionPlayCountdownAnimationFailed:Ljava/lang/String;

	invoke-virtual {p0, v5, v8}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_1
.end method

.method private playShutdownSound()V
	.locals 5

	.prologue
	.line 1237
	:try_start_0
	const-string v2, "Settings_Sound"

	const-string v3, "Muted"

	const/4 v4, 0x0

	invoke-static {p0, v2, v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

	move-result v0

	.line 1239
	.local v0, "bMuted":Z
	if-nez v0, :cond_0

	.line 1240
	const/high16 v2, 0x7f060000

	invoke-static {p0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

	move-result-object v2

	iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMediaPlayer:Landroid/media/MediaPlayer;

	.line 1241
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1248
	.end local v0	# "bMuted":Z
	:cond_0
	:goto_0
	return-void

	.line 1243
	:catch_0
	move-exception v1

	.line 1244
	.local v1, "e":Ljava/lang/Exception;
	const-string v2, "BrightestFlashlightMain"

	const-string v3, "playShutdownSound() Failed"

	invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1245
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	.line 1246
	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionPlayShutdownSoundFailed:Ljava/lang/String;

	const/4 v3, 0x0

	invoke-virtual {p0, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method private playStartupSound()V
	.locals 5

	.prologue
	.line 1220
	:try_start_0
	const-string v2, "Settings_Sound"

	const-string v3, "Muted"

	const/4 v4, 0x0

	invoke-static {p0, v2, v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

	move-result v0

	.line 1222
	.local v0, "bMuted":Z
	if-nez v0, :cond_0

	.line 1223
	const v2, 0x7f060001

	invoke-static {p0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

	move-result-object v2

	iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMediaPlayer:Landroid/media/MediaPlayer;

	.line 1224
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMediaPlayer:Landroid/media/MediaPlayer;

	invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1231
	.end local v0	# "bMuted":Z
	:cond_0
	:goto_0
	return-void

	.line 1226
	:catch_0
	move-exception v1

	.line 1227
	.local v1, "e":Ljava/lang/Exception;
	const-string v2, "BrightestFlashlightMain"

	const-string v3, "playStartupSound() Failed"

	invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1228
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	.line 1229
	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionPlayStartupSoundFailed:Ljava/lang/String;

	const/4 v3, 0x0

	invoke-virtual {p0, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method private restoreMuteState()V
	.locals 4

	.prologue
	.line 1290
	:try_start_0
	iget-boolean v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mbDidWeMuteAudioStream:Z

	if-eqz v2, :cond_0

	.line 1291
	const-string v2, "audio"

	invoke-virtual {p0, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Landroid/media/AudioManager;

	.line 1292
	.local v0, "audioManager":Landroid/media/AudioManager;
	const/4 v2, 0x3

	const/4 v3, 0x0

	invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

	.line 1293
	const/4 v2, 0x0

	iput-boolean v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mbDidWeMuteAudioStream:Z
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1299
	.end local v0	# "audioManager":Landroid/media/AudioManager;
	:cond_0
	:goto_0
	return-void

	.line 1295
	:catch_0
	move-exception v1

	.line 1296
	.local v1, "e":Ljava/lang/Exception;
	const-string v2, "BrightestFlashlightMain"

	const-string v3, "Exception in restoreMuteState()"

	invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1297
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method private native setFlashLGAlly(I)Ljava/lang/String;
.end method

.method private setFlashModeOff()V
	.locals 3

	.prologue
	.line 1642
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v2, :cond_0

	.line 1643
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v0

	.line 1644
	.local v0, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v0, :cond_0

	.line 1645
	invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

	move-result-object v1

	.line 1646
	.local v1, "strFlashMode":Ljava/lang/String;
	if-eqz v1, :cond_0

	.line 1647
	const-string v2, "off"

	invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

	.line 1648
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 1652
	.end local v0	# "params":Landroid/hardware/Camera$Parameters;
	.end local v1	# "strFlashMode":Ljava/lang/String;
	:cond_0
	return-void
.end method

.method private setFlashModeOn()V
	.locals 3

	.prologue
	.line 1581
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v2, :cond_0

	.line 1582
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v0

	.line 1583
	.local v0, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v0, :cond_0

	.line 1584
	invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

	move-result-object v1

	.line 1585
	.local v1, "strFlashMode":Ljava/lang/String;
	if-eqz v1, :cond_0

	.line 1586
	const-string v2, "on"

	invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

	.line 1587
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 1591
	.end local v0	# "params":Landroid/hardware/Camera$Parameters;
	.end local v1	# "strFlashMode":Ljava/lang/String;
	:cond_0
	return-void
.end method

.method private setFlashModeRedEye()V
	.locals 3

	.prologue
	.line 1627
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v2, :cond_0

	.line 1628
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v0

	.line 1629
	.local v0, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v0, :cond_0

	.line 1630
	invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

	move-result-object v1

	.line 1631
	.local v1, "strFlashMode":Ljava/lang/String;
	if-eqz v1, :cond_0

	.line 1632
	const-string v2, "red-eye"

	invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

	.line 1633
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 1637
	.end local v0	# "params":Landroid/hardware/Camera$Parameters;
	.end local v1	# "strFlashMode":Ljava/lang/String;
	:cond_0
	return-void
.end method

.method private setFlashModeTorch()V
	.locals 3

	.prologue
	.line 1596
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v2, :cond_0

	.line 1597
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v0

	.line 1598
	.local v0, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v0, :cond_0

	.line 1599
	invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

	move-result-object v1

	.line 1600
	.local v1, "strFlashMode":Ljava/lang/String;
	if-eqz v1, :cond_0

	.line 1601
	const-string v2, "torch"

	invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

	.line 1602
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 1606
	.end local v0	# "params":Landroid/hardware/Camera$Parameters;
	.end local v1	# "strFlashMode":Ljava/lang/String;
	:cond_0
	return-void
.end method

.method private setFlashModeTorch2()V
	.locals 4

	.prologue
	.line 1612
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v2, :cond_0

	.line 1613
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v0

	.line 1614
	.local v0, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v0, :cond_0

	.line 1615
	invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

	move-result-object v1

	.line 1616
	.local v1, "strFlashMode":Ljava/lang/String;
	if-eqz v1, :cond_0

	.line 1617
	const-string v2, "flash-mode"

	const-string v3, "torch"

	invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

	.line 1618
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 1622
	.end local v0	# "params":Landroid/hardware/Camera$Parameters;
	.end local v1	# "strFlashMode":Ljava/lang/String;
	:cond_0
	return-void
.end method

.method private native setFlashSamsungMoment(II)Ljava/lang/String;
.end method

.method private setFocusModeContinuous()V
	.locals 3

	.prologue
	.line 1688
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v1, :cond_0

	.line 1689
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v0

	.line 1690
	.local v0, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v0, :cond_0

	.line 1691
	const-string v1, "continuous-af"

	const-string v2, "caf-on"

	invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

	.line 1692
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 1695
	.end local v0	# "params":Landroid/hardware/Camera$Parameters;
	:cond_0
	return-void
.end method

.method private setFocusModeContinuousVideo()V
	.locals 4

	.prologue
	.line 1672
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v2, :cond_0

	.line 1673
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v0

	.line 1674
	.local v0, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v0, :cond_0

	.line 1675
	invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

	move-result-object v1

	.line 1676
	.local v1, "strFocusMode":Ljava/lang/String;
	if-eqz v1, :cond_0

	.line 1677
	const-string v2, "focus-mode"

	const-string v3, "continuous-video"

	invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

	.line 1678
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 1682
	.end local v0	# "params":Landroid/hardware/Camera$Parameters;
	.end local v1	# "strFocusMode":Ljava/lang/String;
	:cond_0
	return-void
.end method

.method private setFocusModeMacro()V
	.locals 3

	.prologue
	.line 1657
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v2, :cond_0

	.line 1658
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v0

	.line 1659
	.local v0, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v0, :cond_0

	.line 1660
	invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

	move-result-object v1

	.line 1661
	.local v1, "strFocusMode":Ljava/lang/String;
	if-eqz v1, :cond_0

	.line 1662
	const-string v2, "macro"

	invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

	.line 1663
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 1667
	.end local v0	# "params":Landroid/hardware/Camera$Parameters;
	.end local v1	# "strFocusMode":Ljava/lang/String;
	:cond_0
	return-void
.end method

.method private native setMotoXTAFLED(II)Ljava/lang/String;
.end method

.method private setPictureFormatRaw()V
	.locals 3

	.prologue
	.line 1700
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v1, :cond_0

	.line 1701
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v0

	.line 1702
	.local v0, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v0, :cond_0

	.line 1703
	const-string v1, "picture-format"

	const-string v2, "raw"

	invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

	.line 1704
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 1707
	.end local v0	# "params":Landroid/hardware/Camera$Parameters;
	:cond_0
	return-void
.end method

.method private setUpCameraPreview()V
	.locals 3

	.prologue
	.line 1555
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreview:Landroid/view/SurfaceView;

	if-eqz v1, :cond_0

	.line 1556
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreview:Landroid/view/SurfaceView;

	invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

	.line 1558
	:cond_0
	new-instance v1, Landroid/view/SurfaceView;

	invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreview:Landroid/view/SurfaceView;

	.line 1559
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreview:Landroid/view/SurfaceView;

	invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

	.line 1565
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreview:Landroid/view/SurfaceView;

	invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

	move-result-object v1

	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreviewHolder:Landroid/view/SurfaceHolder;

	.line 1566
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreviewHolder:Landroid/view/SurfaceHolder;

	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->camPrevSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

	invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

	.line 1567
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPreviewHolder:Landroid/view/SurfaceHolder;

	const/4 v2, 0x3

	invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1576
	:goto_0
	return-void

	.line 1571
	:catch_0
	move-exception v0

	.line 1572
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in setUpCameraPreview()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1573
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1574
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSetUpCameraPreviewFailed:Ljava/lang/String;

	const/4 v2, 0x0

	invoke-virtual {p0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method private setUpVideoWidget()V
	.locals 5

	.prologue
	.line 1254
	const v2, 0x7f090001

	:try_start_0
	invoke-virtual {p0, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->findViewById(I)Landroid/view/View;

	move-result-object v2

	check-cast v2, Landroid/widget/VideoView;

	iput-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	.line 1255
	new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

	new-instance v2, Landroid/view/ViewGroup$LayoutParams;

	const/4 v3, -0x1

	const/4 v4, -0x2

	invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

	invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

	.line 1256
	.local v1, "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/16 v2, 0xd

	invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 1257
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

	.line 1261
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	const/16 v3, 0x8

	invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVisibility(I)V

	.line 1264
	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	new-instance v3, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$6;

	invoke-direct {v3, p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$6;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1283
	.end local v1	# "relLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	:goto_0
	return-void

	.line 1278
	:catch_0
	move-exception v0

	.line 1279
	.local v0, "e":Ljava/lang/Exception;
	const-string v2, "BrightestFlashlightMain"

	const-string v3, "Failed to set up Video Widget"

	invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1280
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1281
	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSetUpVideoWidgetFailed:Ljava/lang/String;

	const/4 v3, 0x0

	invoke-virtual {p0, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method private setZOrderMainUISettingsInFront()V
	.locals 3

	.prologue
	.line 2015
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMainSettingsUI:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->bringToFront()V

	.line 2016
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->bringToFront()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 2021
	:goto_0
	return-void

	.line 2017
	:catch_0
	move-exception v0

	.line 2018
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in setZOrderMainUISettingsInFront()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 2019
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method private stopCameraPreview(Landroid/hardware/Camera;)V
	.locals 4
	.param p1, "camera"	# Landroid/hardware/Camera;

	.prologue
	const/4 v3, 0x0

	.line 1744
	if-eqz p1, :cond_0

	:try_start_0
	sget-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bCameraPreviewRunning:Z

	if-eqz v1, :cond_0

	.line 1745
	invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

	.line 1746
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	const/4 v2, 0x0

	invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

	.line 1747
	const/4 v1, 0x0

	sput-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bCameraPreviewRunning:Z
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1754
	:cond_0
	:goto_0
	return-void

	.line 1749
	:catch_0
	move-exception v0

	.line 1750
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in stopCameraPreview()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1751
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1752
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionStopCameraPreviewFailed:Ljava/lang/String;

	invoke-virtual {p0, v1, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method private stopTimer()V
	.locals 3

	.prologue
	.line 582
	const/4 v1, 0x1

	:try_start_0
	invoke-static {v1}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->setIsTimeToTerminate(Z)V

	.line 583
	const/4 v1, 0x0

	sput-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bTimerExtended:Z

	.line 584
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mHandlerShutdownTimer:Landroid/os/Handler;

	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mRunnable:Ljava/lang/Runnable;

	invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 591
	:goto_0
	return-void

	.line 585
	:catch_0
	move-exception v0

	.line 586
	.local v0, "e":Ljava/lang/Exception;
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 587
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "stopTimer threw exception"

	invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 588
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionStopTimerFailed:Ljava/lang/String;

	const/4 v2, 0x0

	invoke-virtual {p0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method private truncateString(Ljava/lang/String;I)Ljava/lang/String;
	.locals 2
	.param p1, "strIn"	# Ljava/lang/String;
	.param p2, "iMaxLength"	# I

	.prologue
	.line 1435
	move-object v0, p1

	.line 1436
	.local v0, "strOut":Ljava/lang/String;
	invoke-virtual {p1}, Ljava/lang/String;->length()I

	move-result v1

	if-le v1, p2, :cond_0

	.line 1437
	const/4 v1, 0x0

	invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

	move-result-object v0

	.line 1439
	:cond_0
	return-object v0
.end method

.method private turnOffSamsungMomentCameraFlashLED()V
	.locals 4

	.prologue
	.line 1032
	const/4 v2, 0x0

	const/16 v3, 0x1c6

	:try_start_0
	invoke-direct {p0, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashSamsungMoment(II)Ljava/lang/String;

	move-result-object v1

	.local v1, "strRet":Ljava/lang/String;
	invoke-static {v1}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->suppressUnreadWarning(Ljava/lang/Object;)V

	.line 1033
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->closeCameraSamsungMoment()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1039
	.end local v1	# "strRet":Ljava/lang/String;
	:goto_0
	return-void

	.line 1034
	:catch_0
	move-exception v0

	.line 1035
	.local v0, "e":Ljava/lang/Exception;
	const-string v2, "BrightestFlashlightMain"

	const-string v3, "turnOffSamsungMomentCameraFlashLED() failed"

	invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1036
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1037
	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOffSamsungMomentCameraFlashLEDFailed:Ljava/lang/String;

	const/4 v3, 0x0

	invoke-virtual {p0, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method private turnOnSamsungMomentCameraFlashLED()V
	.locals 6

	.prologue
	.line 1013
	:try_start_0
	invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

	move-result-object v1

	.line 1014
	.local v1, "samsungCamera":Landroid/hardware/Camera;
	invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

	.line 1015
	invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

	.line 1016
	const/4 v1, 0x0

	.line 1018
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->openCameraSamsungMoment()Ljava/lang/String;

	move-result-object v2

	.local v2, "strOpen":Ljava/lang/String;
	invoke-static {v2}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->suppressUnreadWarning(Ljava/lang/Object;)V

	.line 1019
	const/4 v4, 0x1

	const/16 v5, 0x1c6

	invoke-direct {p0, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashSamsungMoment(II)Ljava/lang/String;

	move-result-object v3

	.local v3, "strRet":Ljava/lang/String;
	invoke-static {v3}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->suppressUnreadWarning(Ljava/lang/Object;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1025
	.end local v1	# "samsungCamera":Landroid/hardware/Camera;
	.end local v2	# "strOpen":Ljava/lang/String;
	.end local v3	# "strRet":Ljava/lang/String;
	:goto_0
	return-void

	.line 1020
	:catch_0
	move-exception v0

	.line 1021
	.local v0, "e":Ljava/lang/Exception;
	const-string v4, "BrightestFlashlightMain"

	const-string v5, "turnOnSamsungMomentCameraFlashLED() failed"

	invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1022
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1023
	sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnSamsungMomentCameraFlashLEDFailed:Ljava/lang/String;

	const/4 v5, 0x0

	invoke-virtual {p0, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method


# virtual methods
.method public acquireWakeLock(Z)V
	.locals 4
	.param p1, "bForceBrightScreen"	# Z

	.prologue
	.line 649
	:try_start_0
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->releaseWakeLock()V

	.line 651
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getPackageName()Ljava/lang/String;

	move-result-object v1

	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrPackageName:Ljava/lang/String;

	.line 652
	const-string v1, "power"

	invoke-virtual {p0, v1}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Landroid/os/PowerManager;

	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPowerManager:Landroid/os/PowerManager;

	.line 654
	if-eqz p1, :cond_0

	.line 655
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPowerManager:Landroid/os/PowerManager;

	const v2, 0x3000001a

	.line 656
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrPackageName:Ljava/lang/String;

	.line 655
	invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

	move-result-object v1

	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

	.line 657
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Acquired full wake lock"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 665
	:goto_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

	const/4 v2, 0x0

	invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

	.line 666
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

	invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

	.line 667
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Acquired full wake lock"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 673
	:goto_1
	return-void

	.line 660
	:cond_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mPowerManager:Landroid/os/PowerManager;

	const v2, 0x30000006

	.line 661
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrPackageName:Ljava/lang/String;

	.line 660
	invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

	move-result-object v1

	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

	.line 662
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Acquired partial wake lock"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 668
	:catch_0
	move-exception v0

	.line 669
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Failed acquire wake lock"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 670
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 671
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionDisableScreenTimeoutFailed:Ljava/lang/String;

	const/4 v2, 0x0

	invoke-virtual {p0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_1
.end method

.method protected canFit(I)Z
	.locals 5
	.param p1, "adWidth"	# I

	.prologue
	const/4 v2, 0x1

	.line 507
	int-to-float v3, p1

	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

	move-result-object v4

	invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v4

	invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

	move-result v3

	float-to-int v0, v3

	.line 508
	.local v0, "adWidthPx":I
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

	move-result-object v3

	invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v1

	.line 509
	.local v1, "metrics":Landroid/util/DisplayMetrics;
	iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

	if-lt v3, v0, :cond_0

	:goto_0
	return v2

	:cond_0
	const/4 v2, 0x0

	goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
	.locals 0
	.param p1, "newConfig"	# Landroid/content/res/Configuration;

	.prologue
	.line 1544
	invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

	.line 1546
	return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
	.locals 7
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	const/4 v6, 0x1

	.line 144
	:try_start_0
	invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

	.line 149
	const/4 v3, 0x1

	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->requestWindowFeature(I)Z

	.line 152
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getWindow()Landroid/view/Window;

	move-result-object v3

	const/16 v4, 0x400

	const/16 v5, 0x400

	invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

	.line 155
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrAWK:Ljava/lang/String;

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v3

	invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	const-string v3, "1798980"

	invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrAWK:Ljava/lang/String;

	.line 158
	const/4 v3, 0x5

	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setRequestedOrientation(I)V

	.line 161
	sput-object p0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->mainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;

	.line 164
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrAWK:Ljava/lang/String;

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v3

	invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	const-string v3, "748a69"

	invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrAWK:Ljava/lang/String;

	.line 171
	new-instance v3, Lcom/millennialmedia/location/LocationValet;

	new-instance v4, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$4;

	invoke-direct {v4, p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$4;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	invoke-direct {v3, p0, p0, v4}, Lcom/millennialmedia/location/LocationValet;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/millennialmedia/location/LocationValet$ILocationValetListener;)V

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->locationValet:Lcom/millennialmedia/location/LocationValet;

	.line 198
	const/4 v3, 0x6

	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->locationValet:Lcom/millennialmedia/location/LocationValet;

	invoke-static {p0, v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->DisplayEulaDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;ILcom/millennialmedia/location/LocationValet;)Z

	move-result v0

	.line 201
	.local v0, "bEulaAlreadyAccepted":Z
	if-eqz v0, :cond_0

	.line 202
	invoke-static {p0}, Lgoldenshorestechnologies/brightestflashlight/free/RatingRequestUI;->DisplayRatingRequestDialog(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	.line 206
	:cond_0
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrAWK:Ljava/lang/String;

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v3

	invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	const-string v3, "b19442432"

	invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrAWK:Ljava/lang/String;

	.line 208
	const-string v3, "layout_inflater"

	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v2

	check-cast v2, Landroid/view/LayoutInflater;

	.line 209
	.local v2, "inflater":Landroid/view/LayoutInflater;
	const/high16 v3, 0x7f030000

	const/4 v4, 0x0

	invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

	move-result-object v3

	check-cast v3, Landroid/widget/RelativeLayout;

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	.line 212
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrAWK:Ljava/lang/String;

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v3

	invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	const-string v3, "85e5da"

	invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mStrAWK:Ljava/lang/String;

	.line 215
	new-instance v3, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	invoke-direct {v3, p0}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;-><init>(Landroid/content/Context;)V

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMainSettingsUI:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	.line 216
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMainSettingsUI:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v3, p0, v4}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->attachToLayout(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;Landroid/widget/RelativeLayout;)V

	.line 220
	new-instance v3, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

	invoke-direct {v3, p0}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;-><init>(Landroid/content/Context;)V

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSettingsCategoriesDialog:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

	.line 221
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSettingsCategoriesDialog:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v3, p0, v4}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->attachToLayout(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;Landroid/widget/RelativeLayout;)V

	.line 224
	new-instance v3, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

	invoke-direct {v3, p0}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;-><init>(Landroid/content/Context;)V

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSoundSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

	.line 225
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSoundSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v3, p0, v4}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->attachToLayout(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;Landroid/widget/RelativeLayout;)V

	.line 228
	new-instance v3, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

	invoke-direct {v3, p0}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;-><init>(Landroid/content/Context;)V

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mTimerSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

	.line 229
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mTimerSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v3, p0, v4}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->attachToLayout(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;Landroid/widget/RelativeLayout;)V

	.line 232
	new-instance v3, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	invoke-direct {v3, p0}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;-><init>(Landroid/content/Context;)V

	iput-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	.line 233
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {v3, p0, v4}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->attachToLayout(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;Landroid/widget/RelativeLayout;)V

	.line 237
	sget v3, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iPackage:I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

	if-ne v3, v6, :cond_1

	.line 240
	:try_start_1
	invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->initialize(Landroid/content/Context;)V
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

	.line 248
	:cond_1
	:goto_0
	:try_start_2
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setContentView(Landroid/view/View;)V

	.line 259
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setUpVideoWidget()V

	.line 263
	const-string v3, "Settings_Timer"

	const-string v4, "Shutdown_Timeout"

	const v5, 0x1c138

	.line 262
	invoke-static {p0, v3, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceIntWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)I

	move-result v3

	int-to-long v3, v3

	sput-wide v3, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iAutoShutdownTimeout:J

	.line 265
	const-string v3, "BrightestFlashlightMain"

	const-string v4, "onCreate\'d"

	invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 272
	.end local v0	# "bEulaAlreadyAccepted":Z
	.end local v2	# "inflater":Landroid/view/LayoutInflater;
	:goto_1
	return-void

	.line 242
	.restart local v0	# "bEulaAlreadyAccepted":Z
	.restart local v2	# "inflater":Landroid/view/LayoutInflater;
	:catch_0
	move-exception v1

	.line 243
	.local v1, "e":Ljava/lang/Exception;
	const-string v3, "BrightestFlashlightMain"

	const-string v4, "Millennial intantiation Failed"

	invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 244
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
	:try_end_2
	.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

	goto :goto_0

	.line 267
	.end local v0	# "bEulaAlreadyAccepted":Z
	.end local v1	# "e":Ljava/lang/Exception;
	.end local v2	# "inflater":Landroid/view/LayoutInflater;
	:catch_1
	move-exception v1

	.line 268
	.restart local v1	# "e":Ljava/lang/Exception;
	const-string v3, "BrightestFlashlightMain"

	const-string v4, "onCreate() Failed"

	invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 269
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	.line 270
	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bOnCreateThrewException:Z

	goto :goto_1
.end method

.method public onDestroy()V
	.locals 1

	.prologue
	.line 496
	invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

	.line 499
	const/4 v0, 0x1

	invoke-static {v0}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->setIsTimeToTerminate(Z)V

	.line 502
	return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
	.locals 5
	.param p1, "keyCode"	# I
	.param p2, "event"	# Landroid/view/KeyEvent;

	.prologue
	const/4 v2, 0x1

	.line 1486
	const/4 v3, 0x4

	if-ne p1, v3, :cond_4

	.line 1487
	:try_start_0
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSettingsCategoriesDialog:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

	iget-object v3, v3, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	if-eq v3, v4, :cond_1

	.line 1488
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSettingsCategoriesDialog:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

	invoke-virtual {v3, p1, p2}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->pumpOnKeyDown(ILandroid/view/KeyEvent;)Z

	move-result v0

	.line 1489
	.local v0, "bHandled":Z
	if-eqz v0, :cond_1

	.line 1523
	.end local v0	# "bHandled":Z
	:cond_0
	:goto_0
	return v2

	.line 1494
	:cond_1
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSoundSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

	iget-object v3, v3, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	if-eq v3, v4, :cond_2

	.line 1495
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSoundSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

	invoke-virtual {v3, p1, p2}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->pumpOnKeyDown(ILandroid/view/KeyEvent;)Z

	move-result v0

	.line 1496
	.restart local v0	# "bHandled":Z
	if-nez v0, :cond_0

	.line 1501
	.end local v0	# "bHandled":Z
	:cond_2
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mTimerSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

	iget-object v3, v3, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	if-eq v3, v4, :cond_3

	.line 1502
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mTimerSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

	invoke-virtual {v3, p1, p2}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->pumpOnKeyDown(ILandroid/view/KeyEvent;)Z

	move-result v0

	.line 1503
	.restart local v0	# "bHandled":Z
	if-nez v0, :cond_0

	.line 1508
	.end local v0	# "bHandled":Z
	:cond_3
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	iget-object v3, v3, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->mState:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;->HIDDEN:Lgoldenshorestechnologies/brightestflashlight/free/CustomDialog$State;

	if-eq v3, v4, :cond_4

	.line 1509
	iget-object v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	invoke-virtual {v3, p1, p2}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->pumpOnKeyDown(ILandroid/view/KeyEvent;)Z
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	move-result v0

	.line 1510
	.restart local v0	# "bHandled":Z
	if-nez v0, :cond_0

	.line 1523
	.end local v0	# "bHandled":Z
	:cond_4
	:goto_1
	invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

	move-result v2

	goto :goto_0

	.line 1516
	:catch_0
	move-exception v1

	.line 1517
	.local v1, "e":Ljava/lang/Exception;
	const-string v2, "BrightestFlashlightMain"

	const-string v3, "Exception in onKeyDown()"

	invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1518
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_1
.end method

.method public onPause()V
	.locals 3

	.prologue
	.line 441
	:try_start_0
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "onPause"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 444
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

	if-eqz v1, :cond_0

	.line 445
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;->onPause()V

	.line 449
	:cond_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->locationValet:Lcom/millennialmedia/location/LocationValet;

	if-eqz v1, :cond_1

	.line 450
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->locationValet:Lcom/millennialmedia/location/LocationValet;

	invoke-virtual {v1}, Lcom/millennialmedia/location/LocationValet;->stopAquire()V

	.line 453
	:cond_1
	invoke-super {p0}, Landroid/app/Activity;->onPause()V

	.line 456
	sget-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bLaunchAborted:Z

	if-nez v1, :cond_2

	.line 458
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->stopTimer()V

	.line 461
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	const/16 v2, 0x8

	invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

	.line 462
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

	.line 466
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->hideAllChildSettingDialogs()V

	.line 469
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->playShutdownSound()V

	.line 472
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->releaseWakeLock()V

	.line 475
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOffCameraFlashLED()V

	.line 478
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOffNotificationLED()V

	.line 481
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->restoreMuteState()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 488
	:cond_2
	:goto_0
	return-void

	.line 483
	:catch_0
	move-exception v0

	.line 484
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "onPause() Failed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 485
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 486
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnPauseFailed:Ljava/lang/String;

	const/4 v2, 0x0

	invoke-virtual {p0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method public onResume()V
	.locals 9

	.prologue
	.line 349
	:try_start_0
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "onResume Started"

	invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 350
	invoke-super {p0}, Landroid/app/Activity;->onResume()V

	.line 353
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->locationValet:Lcom/millennialmedia/location/LocationValet;

	if-eqz v6, :cond_0

	.line 354
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->locationValet:Lcom/millennialmedia/location/LocationValet;

	const/4 v7, 0x1

	invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

	move-result-object v7

	invoke-virtual {v6, v7}, Lcom/millennialmedia/location/LocationValet;->startAquire(Ljava/lang/Boolean;)Ljava/lang/Boolean;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

	move-result v6

	if-nez v6, :cond_0

	.line 356
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "Unable to start acquiring location, do you have the permissions declared?"

	invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 364
	:cond_0
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->exitIfScreenOff()Z

	move-result v0

	.line 365
	.local v0, "bAbortLaunch":Z
	sput-boolean v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bLaunchAborted:Z

	.line 367
	if-nez v0, :cond_4

	.line 369
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setTimer()V

	.line 372
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->playStartupSound()V

	.line 376
	const-string v6, "Settings_Display"

	const-string v7, "Screen_Enabled"

	const/4 v8, 0x1

	.line 375
	invoke-static {p0, v6, v7, v8}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

	move-result v4

	.line 377
	.local v4, "bScreen":Z
	if-eqz v4, :cond_5

	.line 379
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setMaxScreenBrightness()V

	.line 383
	const/4 v6, 0x1

	invoke-virtual {p0, v6}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->acquireWakeLock(Z)V

	.line 392
	:goto_0
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->launchFadeInScreen()V

	.line 393
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->showMainSettingsDialog()V

	.line 396
	const/4 v6, 0x6

	invoke-static {p0, v6}, Lgoldenshorestechnologies/brightestflashlight/free/EulaUI;->isEULAAlreadyAccepted(Landroid/app/Activity;I)Z

	move-result v2

	.line 397
	.local v2, "bEulaAccepted":Z
	if-eqz v2, :cond_1

	.line 398
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setUpAndShowAds()V

	.line 401
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

	if-eqz v6, :cond_1

	.line 402
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

	invoke-virtual {v6}, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;->onResume()V

	.line 407
	:cond_1
	const-string v6, "Settings_Display"

	const-string v7, "CameraLED_Enabled"

	const/4 v8, 0x1

	.line 406
	invoke-static {p0, v6, v7, v8}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

	move-result v1

	.line 408
	.local v1, "bCameraLED":Z
	if-eqz v1, :cond_2

	.line 409
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOnCameraFlashLED()V

	.line 410
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setZOrderMainUISettingsInFront()V

	.line 415
	:cond_2
	const-string v6, "Settings_Display"

	const-string v7, "OtherLights_Enabled"

	const/4 v8, 0x1

	.line 414
	invoke-static {p0, v6, v7, v8}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

	move-result v3

	.line 416
	.local v3, "bOtherLights":Z
	if-eqz v3, :cond_3

	.line 418
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOnNotificationLED()V

	.line 421
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOnSoftKeysBacklight()V

	.line 424
	:cond_3
	const/4 v6, 0x0

	invoke-static {v6}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->setIsTimeToTerminate(Z)V

	.line 427
	.end local v1	# "bCameraLED":Z
	.end local v2	# "bEulaAccepted":Z
	.end local v3	# "bOtherLights":Z
	.end local v4	# "bScreen":Z
	:cond_4
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "onResume Complete"

	invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 433
	.end local v0	# "bAbortLaunch":Z
	:goto_1
	return-void

	.line 387
	.restart local v0	# "bAbortLaunch":Z
	.restart local v4	# "bScreen":Z
	:cond_5
	const/4 v6, 0x0

	invoke-virtual {p0, v6}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->acquireWakeLock(Z)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 428
	.end local v0	# "bAbortLaunch":Z
	.end local v4	# "bScreen":Z
	:catch_0
	move-exception v5

	.line 429
	.local v5, "e":Ljava/lang/Exception;
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "onResume() Failed"

	invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 430
	invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

	.line 431
	sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnResumeFailed:Ljava/lang/String;

	const/4 v7, 0x0

	invoke-virtual {p0, v6, v7}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_1
.end method

.method public onStart()V
	.locals 4

	.prologue
	const/4 v3, 0x0

	.line 279
	invoke-super {p0}, Landroid/app/Activity;->onStart()V

	.line 298
	:try_start_0
	sget-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bOnCreateThrewException:Z

	if-eqz v1, :cond_0

	.line 299
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnCreateFailed:Ljava/lang/String;

	const/4 v2, 0x0

	invoke-virtual {p0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 321
	:cond_0
	:goto_0
	return-void

	.line 316
	:catch_0
	move-exception v0

	.line 317
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "onStart() Failed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 318
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 319
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnStartFailed:Ljava/lang/String;

	invoke-virtual {p0, v1, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method public onStop()V
	.locals 0

	.prologue
	.line 328
	invoke-super {p0}, Landroid/app/Activity;->onStop()V

	.line 341
	return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
	.locals 3
	.param p1, "event"	# Landroid/view/MotionEvent;

	.prologue
	.line 1465
	:try_start_0
	invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

	move-result v1

	if-nez v1, :cond_0

	.line 1466
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Received onTouchEvent() ACTION_DOWN"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 1468
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->resetCountdownTimer()V

	.line 1469
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Handled onTouchEvent()"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1476
	:cond_0
	:goto_0
	invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

	move-result v1

	return v1

	.line 1471
	:catch_0
	move-exception v0

	.line 1472
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "onTouchEvent() Failed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1473
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1474
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnTouchEventFailed:Ljava/lang/String;

	const/4 v2, 0x0

	invoke-virtual {p0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method public releaseWakeLock()V
	.locals 4

	.prologue
	const/4 v3, 0x0

	.line 681
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

	if-eqz v1, :cond_0

	.line 682
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

	invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

	.line 683
	const/4 v1, 0x0

	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

	.line 684
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Released wake lock"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 691
	:cond_0
	:goto_0
	return-void

	.line 686
	:catch_0
	move-exception v0

	.line 687
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "releaseWakeLock() Failed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 688
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 689
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionEnableScreenTimeoutFailed:Ljava/lang/String;

	invoke-virtual {p0, v1, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method public resetCountdownTimer()V
	.locals 2

	.prologue
	.line 1530
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	const/16 v1, 0x8

	invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

	.line 1531
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mVideoView:Landroid/widget/VideoView;

	invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

	.line 1532
	const/4 v0, 0x1

	sput-boolean v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bTimerExtended:Z

	.line 1533
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mHandlerShutdownTimer:Landroid/os/Handler;

	if-eqz v0, :cond_0

	.line 1534
	iget-object v0, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mHandlerShutdownTimer:Landroid/os/Handler;

	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mRunnable:Ljava/lang/Runnable;

	invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

	.line 1536
	:cond_0
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setTimer()V

	.line 1537
	return-void
.end method

.method public restoreScreenBrightness()V
	.locals 4

	.prologue
	.line 631
	:try_start_0
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getWindow()Landroid/view/Window;

	move-result-object v2

	invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

	move-result-object v1

	.line 632
	.local v1, "lp":Landroid/view/WindowManager$LayoutParams;
	iget v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mfBrightness:F

	iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

	.line 633
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getWindow()Landroid/view/Window;

	move-result-object v2

	invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 640
	.end local v1	# "lp":Landroid/view/WindowManager$LayoutParams;
	:goto_0
	return-void

	.line 635
	:catch_0
	move-exception v0

	.line 636
	.local v0, "e":Ljava/lang/Exception;
	const-string v2, "BrightestFlashlightMain"

	const-string v3, "restoreScreenBrightness() failed"

	invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 637
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V
	.locals 0
	.param p1, "eventId"	# Ljava/lang/String;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/lang/String;",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;)V"
		}
	.end annotation

	.prologue
	.line 1406
	.local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	return-void
.end method

.method public setMaxScreenBrightness()V
	.locals 5

	.prologue
	.line 613
	:try_start_0
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getWindow()Landroid/view/Window;

	move-result-object v3

	invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

	move-result-object v2

	.line 614
	.local v2, "lp":Landroid/view/WindowManager$LayoutParams;
	const/high16 v1, 0x3f800000	# 1.0f

	.line 615
	.local v1, "fBrightness":F
	iget v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

	iput v3, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mfBrightness:F

	.line 616
	iput v1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

	.line 617
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getWindow()Landroid/view/Window;

	move-result-object v3

	invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 626
	.end local v1	# "fBrightness":F
	.end local v2	# "lp":Landroid/view/WindowManager$LayoutParams;
	:goto_0
	return-void

	.line 621
	:catch_0
	move-exception v0

	.line 622
	.local v0, "e":Ljava/lang/Exception;
	const-string v3, "BrightestFlashlightMain"

	const-string v4, "Setting screen brightness failed"

	invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 623
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 624
	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSetMaxScreenBrightnessFailed:Ljava/lang/String;

	const/4 v4, 0x0

	invoke-virtual {p0, v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method protected setTimer()V
	.locals 5

	.prologue
	.line 541
	const/4 v1, 0x0

	:try_start_0
	sput-boolean v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bTimerExtended:Z

	.line 542
	new-instance v1, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$5;

	invoke-direct {v1, p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain$5;-><init>(Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;)V

	iput-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mRunnable:Ljava/lang/Runnable;

	.line 567
	sget-wide v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iAutoShutdownTimeout:J

	const-wide/16 v3, -0x1

	cmp-long v1, v1, v3

	if-eqz v1, :cond_0

	.line 568
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mHandlerShutdownTimer:Landroid/os/Handler;

	iget-object v2, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mRunnable:Ljava/lang/Runnable;

	sget-wide v3, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iAutoShutdownTimeout:J

	invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

	.line 569
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Launched first timer"

	invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 576
	:cond_0
	:goto_0
	return-void

	.line 571
	:catch_0
	move-exception v0

	.line 572
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "setTimer() Failed"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 573
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 574
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSetTimerFailed:Ljava/lang/String;

	const/4 v2, 0x0

	invoke-virtual {p0, v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method public setUpAndShowAds()V
	.locals 13

	.prologue
	.line 1821
	:try_start_0
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

	move-result-object v10

	invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v0

	.line 1822
	.local v0, "displayMetrics":Landroid/util/DisplayMetrics;
	iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

	.line 1823
	.local v2, "iScreenHeight":I
	const/16 v3, 0x15e

	.line 1825
	.local v3, "iSettingsUIMaxHeight":I
	const/16 v10, 0x258

	if-le v2, v10, :cond_0

	.line 1827
	new-instance v10, Lcom/millennialmedia/android/MMAdView;

	invoke-direct {v10, p0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

	iput-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	.line 1830
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	const-string v11, "130660"

	invoke-virtual {v10, v11}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

	.line 1833
	new-instance v9, Lcom/millennialmedia/android/MMRequest;

	invoke-direct {v9}, Lcom/millennialmedia/android/MMRequest;-><init>()V

	.line 1836
	.local v9, "request":Lcom/millennialmedia/android/MMRequest;
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v10, v9}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

	.line 1839
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

	move-result v11

	invoke-virtual {v10, v11}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

	.line 1842
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	const/16 v11, 0x12c

	invoke-virtual {v10, v11}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

	.line 1843
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	const/16 v11, 0xfa

	invoke-virtual {v10, v11}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

	.line 1846
	const/4 v10, 0x1

	const/high16 v11, 0x43960000	# 300.0f

	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

	move-result-object v12

	invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v12

	invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

	move-result v10

	float-to-int v6, v10

	.line 1847
	.local v6, "layoutWidth":I
	const/4 v10, 0x1

	const/high16 v11, 0x437a0000	# 250.0f

	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

	move-result-object v12

	invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v12

	invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

	move-result v10

	float-to-int v4, v10

	.line 1850
	.local v4, "layoutHeight":I
	new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-direct {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 1853
	.local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/16 v10, 0xa

	invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 1854
	const/16 v10, 0xe

	invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 1856
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v10, v5}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

	.line 1859
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

	.line 1918
	:goto_0
	new-instance v10, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

	iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-direct {v10, v11}, Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;-><init>(Lcom/millennialmedia/android/MMAdView;)V

	iput-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mmHandler:Lgoldenshorestechnologies/brightestflashlight/free/RefreshHandler;

	.line 1919
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v10}, Lcom/millennialmedia/android/MMAdView;->bringToFront()V

	.line 1926
	.end local v0	# "displayMetrics":Landroid/util/DisplayMetrics;
	.end local v2	# "iScreenHeight":I
	.end local v3	# "iSettingsUIMaxHeight":I
	.end local v4	# "layoutHeight":I
	.end local v5	# "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	.end local v6	# "layoutWidth":I
	.end local v9	# "request":Lcom/millennialmedia/android/MMRequest;
	:goto_1
	return-void

	.line 1863
	.restart local v0	# "displayMetrics":Landroid/util/DisplayMetrics;
	.restart local v2	# "iScreenHeight":I
	.restart local v3	# "iSettingsUIMaxHeight":I
	:cond_0
	new-instance v10, Lcom/millennialmedia/android/MMAdView;

	invoke-direct {v10, p0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

	iput-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	.line 1867
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	const-string v11, "130677"

	invoke-virtual {v10, v11}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

	.line 1870
	new-instance v9, Lcom/millennialmedia/android/MMRequest;

	invoke-direct {v9}, Lcom/millennialmedia/android/MMRequest;-><init>()V

	.line 1875
	.restart local v9	# "request":Lcom/millennialmedia/android/MMRequest;
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v10, v9}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

	.line 1878
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

	move-result v11

	invoke-virtual {v10, v11}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

	.line 1880
	const/16 v8, 0x140

	.line 1881
	.local v8, "placementWidth":I
	const/16 v7, 0x32

	.line 1884
	.local v7, "placementHeight":I
	const/16 v10, 0x2d8

	invoke-virtual {p0, v10}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->canFit(I)Z

	move-result v10

	if-eqz v10, :cond_2

	.line 1885
	const/16 v8, 0x2d8

	.line 1886
	const/16 v7, 0x5a

	.line 1893
	:cond_1
	:goto_2
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v10, v8}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

	.line 1894
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v10, v7}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

	.line 1897
	const/4 v10, 0x1

	int-to-float v11, v8

	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

	move-result-object v12

	invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v12

	invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

	move-result v10

	float-to-int v6, v10

	.line 1898
	.restart local v6	# "layoutWidth":I
	const/4 v10, 0x1

	int-to-float v11, v7

	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getResources()Landroid/content/res/Resources;

	move-result-object v12

	invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

	move-result-object v12

	invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

	move-result v10

	float-to-int v4, v10

	.line 1901
	.restart local v4	# "layoutHeight":I
	new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

	invoke-direct {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

	.line 1904
	.restart local v5	# "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	const/16 v10, 0xa

	invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 1905
	const/16 v10, 0xe

	invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

	.line 1907
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v10, v5}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

	.line 1910
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

	.line 1911
	iget-object v10, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mainLayout:Landroid/widget/RelativeLayout;

	iget-object v11, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	goto/16 :goto_0

	.line 1921
	.end local v0	# "displayMetrics":Landroid/util/DisplayMetrics;
	.end local v2	# "iScreenHeight":I
	.end local v3	# "iSettingsUIMaxHeight":I
	.end local v4	# "layoutHeight":I
	.end local v5	# "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
	.end local v6	# "layoutWidth":I
	.end local v7	# "placementHeight":I
	.end local v8	# "placementWidth":I
	.end local v9	# "request":Lcom/millennialmedia/android/MMRequest;
	:catch_0
	move-exception v1

	.line 1922
	.local v1, "e":Ljava/lang/Exception;
	const-string v10, "BrightestFlashlightMain"

	const-string v11, "Exception in setUpAndShowAds()"

	invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1923
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	goto/16 :goto_1

	.line 1887
	.end local v1	# "e":Ljava/lang/Exception;
	.restart local v0	# "displayMetrics":Landroid/util/DisplayMetrics;
	.restart local v2	# "iScreenHeight":I
	.restart local v3	# "iSettingsUIMaxHeight":I
	.restart local v7	# "placementHeight":I
	.restart local v8	# "placementWidth":I
	.restart local v9	# "request":Lcom/millennialmedia/android/MMRequest;
	:cond_2
	const/16 v10, 0x1e0

	:try_start_1
	invoke-virtual {p0, v10}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->canFit(I)Z
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

	move-result v10

	if-eqz v10, :cond_1

	.line 1888
	const/16 v8, 0x1e0

	.line 1889
	const/16 v7, 0x3c

	goto :goto_2
.end method

.method public setZOrderDisplayDialogInFront()V
	.locals 3

	.prologue
	.line 2003
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMainSettingsUI:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->bringToFront()V

	.line 2004
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->bringToFront()V

	.line 2005
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->bringToFront()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 2010
	:goto_0
	return-void

	.line 2006
	:catch_0
	move-exception v0

	.line 2007
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in setZOrderDisplayDialogInFront()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 2008
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public showDisplaySettingsDialog()V
	.locals 3

	.prologue
	.line 1986
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	sget v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fDialogTitleTextSize:F

	invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->setDialogTitleTextSize(F)V

	.line 1987
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	sget v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

	invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->setControlsTextSize(F)V

	.line 1988
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mDisplaySettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/DisplaySettingsUI;->fadeToSolid()V

	.line 1989
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->bringToFront()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1994
	:goto_0
	return-void

	.line 1990
	:catch_0
	move-exception v0

	.line 1991
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in showDisplaySettingsDialog()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1992
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public showMainSettingsDialog()V
	.locals 3

	.prologue
	.line 1933
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMainSettingsUI:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->showTransparent()V

	.line 1934
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->bringToFront()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1939
	:goto_0
	return-void

	.line 1935
	:catch_0
	move-exception v0

	.line 1936
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in showMainSettingsDialog()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1937
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public showSettingsCategoriesDialog()V
	.locals 3

	.prologue
	.line 1944
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMainSettingsUI:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->CalcMaxDialogFontSize()F

	move-result v1

	sput v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fDialogTitleTextSize:F

	.line 1945
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMainSettingsUI:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->CalcMaxControlFontSize()F

	move-result v1

	sput v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

	.line 1946
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mMainSettingsUI:Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/MainSettingsUI;->hideMeasurementControls()V

	.line 1947
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSettingsCategoriesDialog:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

	sget v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fDialogTitleTextSize:F

	invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->setDialogTitleTextSize(F)V

	.line 1948
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSettingsCategoriesDialog:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

	sget v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

	invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->setControlsTextSize(F)V

	.line 1949
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSettingsCategoriesDialog:Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SettingsCategoriesUI;->fadeToSolid()V

	.line 1950
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->bringToFront()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1955
	:goto_0
	return-void

	.line 1951
	:catch_0
	move-exception v0

	.line 1952
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in showSettingsCategoriesDialog()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1953
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public showSoundSettingsDialog()V
	.locals 3

	.prologue
	.line 1960
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSoundSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

	sget v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fDialogTitleTextSize:F

	invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->setDialogTitleTextSize(F)V

	.line 1961
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSoundSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

	sget v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

	invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->setControlsTextSize(F)V

	.line 1962
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mSoundSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/SoundSettingsUI;->fadeToSolid()V

	.line 1963
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->bringToFront()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1968
	:goto_0
	return-void

	.line 1964
	:catch_0
	move-exception v0

	.line 1965
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in showSoundSettingsDialog()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1966
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public showTimerSettingsDialog()V
	.locals 3

	.prologue
	.line 1973
	:try_start_0
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mTimerSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

	sget v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fDialogTitleTextSize:F

	invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->setDialogTitleTextSize(F)V

	.line 1974
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mTimerSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

	sget v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

	invoke-virtual {v1, v2}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->setControlsTextSize(F)V

	.line 1975
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mTimerSettingsDialog:Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;

	invoke-virtual {v1}, Lgoldenshorestechnologies/brightestflashlight/free/TimerSettingsUI;->fadeToSolid()V

	.line 1976
	iget-object v1, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->adView:Lcom/millennialmedia/android/MMAdView;

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->bringToFront()V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1981
	:goto_0
	return-void

	.line 1977
	:catch_0
	move-exception v0

	.line 1978
	.local v0, "e":Ljava/lang/Exception;
	const-string v1, "BrightestFlashlightMain"

	const-string v2, "Exception in showTimerSettingsDialog()"

	invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1979
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public turnOffCameraFlashLED()V
	.locals 7

	.prologue
	const/4 v6, 0x0

	.line 1046
	:try_start_0
	sget-boolean v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingSamsungMomentDriverLED:Z

	if-eqz v4, :cond_1

	.line 1047
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOffSamsungMomentCameraFlashLED()V

	.line 1112
	:cond_0
	:goto_0
	return-void

	.line 1052
	:cond_1
	sget-boolean v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFLED:Z
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

	if-eqz v4, :cond_2

	.line 1054
	const/4 v4, 0x0

	const/16 v5, 0x1c6

	:try_start_1
	invoke-direct {p0, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setMotoXTAFLED(II)Ljava/lang/String;

	move-result-object v3

	.local v3, "strRet":Ljava/lang/String;
	invoke-static {v3}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->suppressUnreadWarning(Ljava/lang/Object;)V
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

	.line 1063
	.end local v3	# "strRet":Ljava/lang/String;
	:cond_2
	:goto_1
	:try_start_2
	sget-boolean v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFBlinkMode:Z

	if-eqz v4, :cond_3

	.line 1064
	const/4 v4, 0x0

	sput-boolean v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFBlinkMode:Z

	.line 1065
	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v4}, Landroid/hardware/Camera;->cancelAutoFocus()V

	.line 1069
	:cond_3
	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-direct {p0, v4}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->stopCameraPreview(Landroid/hardware/Camera;)V

	.line 1072
	sget-boolean v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSuccessfullyUsingTorchMode:Z

	if-nez v4, :cond_4

	sget-boolean v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingFlashModeOn:Z

	if-nez v4, :cond_4

	sget-boolean v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingPostOffAutofocusMode:Z
	:try_end_2
	.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

	if-eqz v4, :cond_5

	.line 1074
	:cond_4
	:try_start_3
	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v4, :cond_5

	.line 1075
	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v1

	.line 1076
	.local v1, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v1, :cond_5

	.line 1077
	invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

	move-result-object v2

	.line 1078
	.local v2, "strFlashMode":Ljava/lang/String;
	if-eqz v2, :cond_5

	.line 1079
	const-string v4, "off"

	invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

	.line 1080
	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
	:try_end_3
	.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

	.line 1091
	.end local v1	# "params":Landroid/hardware/Camera$Parameters;
	.end local v2	# "strFlashMode":Ljava/lang/String;
	:cond_5
	:goto_2
	:try_start_4
	sget-boolean v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSuccessfullyUsingSetFlashlightEnabled:Z

	if-eqz v4, :cond_6

	.line 1092
	const/4 v4, 0x0

	invoke-direct {p0, v4}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->enableFlashlight(Z)V
	:try_end_4
	.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

	.line 1098
	:cond_6
	:try_start_5
	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v4, :cond_0

	.line 1099
	iget-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

	.line 1100
	const/4 v4, 0x0

	iput-object v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;
	:try_end_5
	.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

	goto :goto_0

	.line 1102
	:catch_0
	move-exception v0

	.line 1103
	.local v0, "e":Ljava/lang/Exception;
	:try_start_6
	const-string v4, "BrightestFlashlightMain"

	const-string v5, "Free Camera Failed"

	invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1104
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
	:try_end_6
	.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

	goto :goto_0

	.line 1107
	.end local v0	# "e":Ljava/lang/Exception;
	:catch_1
	move-exception v0

	.line 1108
	.restart local v0	# "e":Ljava/lang/Exception;
	const-string v4, "BrightestFlashlightMain"

	const-string v5, "turnOffCameraFlashLED Failed"

	invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1109
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1110
	sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOffCameraFlashLEDFailed:Ljava/lang/String;

	invoke-virtual {p0, v4, v6}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0

	.line 1055
	.end local v0	# "e":Ljava/lang/Exception;
	:catch_2
	move-exception v0

	.line 1056
	.restart local v0	# "e":Ljava/lang/Exception;
	:try_start_7
	const-string v4, "BrightestFlashlightMain"

	const-string v5, "setMotoXTAFLED() failed"

	invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1057
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1058
	sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionsetMotoXTAFLEDFailed:Ljava/lang/String;

	const/4 v5, 0x0

	invoke-virtual {p0, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_1

	.line 1084
	.end local v0	# "e":Ljava/lang/Exception;
	:catch_3
	move-exception v0

	.line 1085
	.restart local v0	# "e":Ljava/lang/Exception;
	const-string v4, "BrightestFlashlightMain"

	const-string v5, "Turn off flash failed"

	invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1086
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
	:try_end_7
	.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

	goto :goto_2
.end method

.method public turnOffNotificationLED()V
	.locals 4

	.prologue
	.line 1151
	:try_start_0
	const-string v2, "notification"

	invoke-virtual {p0, v2}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Landroid/app/NotificationManager;

	.line 1152
	.local v1, "nm":Landroid/app/NotificationManager;
	const/16 v2, 0x309

	invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1158
	.end local v1	# "nm":Landroid/app/NotificationManager;
	:goto_0
	return-void

	.line 1153
	:catch_0
	move-exception v0

	.line 1154
	.local v0, "e":Ljava/lang/Exception;
	const-string v2, "BrightestFlashlightMain"

	const-string v3, "turnOffNotificationLED() Failed"

	invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1155
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1156
	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOffNotificationLEDFailed:Ljava/lang/String;

	const/4 v3, 0x0

	invoke-virtual {p0, v2, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method public turnOffSoftKeysBacklight()V
	.locals 6

	.prologue
	.line 1192
	:try_start_0
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getWindow()Landroid/view/Window;

	move-result-object v2

	.line 1193
	.local v2, "win":Landroid/view/Window;
	invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

	move-result-object v3

	.line 1197
	.local v3, "winParams":Landroid/view/WindowManager$LayoutParams;
	invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

	move-result-object v4

	const-string v5, "buttonBrightness"

	invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

	move-result-object v0

	.line 1198
	.local v0, "buttonBrightness":Ljava/lang/reflect/Field;
	iget v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mfSoftKeysBrightness:F

	invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

	move-result-object v4

	invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

	.line 1207
	invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1213
	.end local v0	# "buttonBrightness":Ljava/lang/reflect/Field;
	.end local v2	# "win":Landroid/view/Window;
	.end local v3	# "winParams":Landroid/view/WindowManager$LayoutParams;
	:goto_0
	return-void

	.line 1208
	:catch_0
	move-exception v1

	.line 1209
	.local v1, "e":Ljava/lang/Exception;
	const-string v4, "BrightestFlashlightMain"

	const-string v5, "turnOffSoftKeysBacklight() Failed"

	invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1210
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	.line 1211
	sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOffSoftKeysBacklightFailed:Ljava/lang/String;

	const/4 v5, 0x0

	invoke-virtual {p0, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method public turnOnCameraFlashLED()V
	.locals 9

	.prologue
	const/4 v8, 0x0

	.line 726
	const/4 v6, 0x0

	:try_start_0
	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSuccessfullyUsingTorchMode:Z

	.line 727
	const/4 v6, 0x0

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSuccessfullyUsingSetFlashlightEnabled:Z

	.line 728
	const/4 v6, 0x0

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingSamsungMomentDriverLED:Z

	.line 729
	const/4 v6, 0x0

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingFlashModeOn:Z

	.line 730
	const/4 v6, 0x0

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingPostOffAutofocusMode:Z

	.line 731
	const/4 v6, 0x0

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFBlinkMode:Z

	.line 732
	const/4 v6, 0x0

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingTorchNoPrevSurface:Z

	.line 733
	const/4 v6, 0x0

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingTorchNoPrevResize:Z

	.line 734
	const/4 v6, 0x0

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFLED:Z

	.line 735
	const/4 v6, 0x0

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSamsungGravity:Z

	.line 736
	const/4 v6, 0x0

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingSetTorchAfterStartPreview:Z

	.line 738
	sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

	.line 739
	.local v3, "strManufacturer":Ljava/lang/String;
	sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

	.line 742
	.local v4, "strModel":Ljava/lang/String;
	const-string v6, "Samsung"

	invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_4

	.line 763
	const-string v6, "SPH-M900"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_0

	const-string v6, "SGH-T939"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_0

	.line 764
	const-string v6, "SCH-R880"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_0

	const-string v6, "SPH-M920"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_2

	.line 765
	:cond_0
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingSamsungMomentDriverLED:Z

	.line 766
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->turnOnSamsungMomentCameraFlashLED()V

	.line 943
	.end local v3	# "strManufacturer":Ljava/lang/String;
	.end local v4	# "strModel":Ljava/lang/String;
	:cond_1
	:goto_0
	return-void

	.line 769
	.restart local v3	# "strManufacturer":Ljava/lang/String;
	.restart local v4	# "strModel":Ljava/lang/String;
	:cond_2
	const-string v6, "GT-S5830"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	const-string v6, "GT-P1000"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	.line 770
	const-string v6, "SGH-I987"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	const-string v6, "SCH-I800"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	.line 771
	const-string v6, "SHW-M180L"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	const-string v6, "SHW-M180K"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	.line 772
	const-string v6, "SHW-M180S"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	const-string v6, "SMT-i9100"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	.line 773
	const-string v6, "GT-P1000R"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	const-string v6, "GT-P1000T"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	.line 774
	const-string v6, "GT-P1000M"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	const-string v6, "GT-P1000N"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	.line 775
	const-string v6, "GT-P1000L"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	const-string v6, "SC-01C"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	.line 776
	const-string v6, "SGH-T849"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_3

	const-string v6, "SPH-P100"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_11

	.line 777
	:cond_3
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingPostOffAutofocusMode:Z

	.line 785
	:cond_4
	:goto_1
	const-string v6, "motorola"

	invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_6

	.line 786
	const-string v6, "Milestone XT720"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_5

	const-string v6, "XT720"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_5

	.line 787
	const-string v6, "Motorola XT720 "

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_5

	const-string v6, "XT701"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

	move-result v6

	if-eqz v6, :cond_6

	.line 789
	:cond_5
	const/4 v6, 0x1

	const/16 v7, 0x1c6

	:try_start_1
	invoke-direct {p0, v6, v7}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setMotoXTAFLED(II)Ljava/lang/String;

	move-result-object v5

	.local v5, "strRet":Ljava/lang/String;
	invoke-static {v5}, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->suppressUnreadWarning(Ljava/lang/Object;)V

	.line 790
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFLED:Z
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

	.line 799
	.end local v5	# "strRet":Ljava/lang/String;
	:cond_6
	:goto_2
	:try_start_2
	const-string v6, "LGE"

	invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_8

	.line 804
	const-string v6, "Ally"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_7

	const-string v6, "US740"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_7

	.line 805
	const-string v6, "AS740"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_7

	const-string v6, "VS740"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_7

	.line 806
	const-string v6, "VS910 4G"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_12

	.line 807
	:cond_7
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingFlashModeOn:Z

	.line 817
	:cond_8
	:goto_3
	const-string v6, "CASIO"

	invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_9

	.line 819
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingFlashModeOn:Z

	.line 823
	:cond_9
	const-string v6, "KYOCERA"

	invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_a

	.line 825
	const-string v6, "M9300"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_a

	.line 826
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFBlinkMode:Z

	.line 830
	:cond_a
	const-string v6, "HTC"

	invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_c

	.line 831
	const-string v6, "T-Mobile G2"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_b

	const-string v6, "Desire HD"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_14

	.line 832
	:cond_b
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingTorchNoPrevSurface:Z
	:try_end_2
	.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

	.line 846
	.end local v3	# "strManufacturer":Ljava/lang/String;
	.end local v4	# "strModel":Ljava/lang/String;
	:cond_c
	:goto_4
	:try_start_3
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-nez v6, :cond_d

	.line 847
	invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

	move-result-object v6

	iput-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;
	:try_end_3
	.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

	.line 857
	:cond_d
	:goto_5
	:try_start_4
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v6, :cond_e

	.line 858
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v1

	.line 859
	.local v1, "params":Landroid/hardware/Camera$Parameters;
	if-eqz v1, :cond_e

	.line 860
	invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

	move-result-object v2

	.line 861
	.local v2, "strFlashMode":Ljava/lang/String;
	if-eqz v2, :cond_e

	.line 862
	sget-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingFlashModeOn:Z

	if-eqz v6, :cond_15

	.line 863
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashModeOn()V

	.line 864
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mAutofocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

	invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

	.line 865
	const-string v6, "on"

	invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

	.line 866
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
	:try_end_4
	.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

	.line 920
	.end local v1	# "params":Landroid/hardware/Camera$Parameters;
	.end local v2	# "strFlashMode":Ljava/lang/String;
	:cond_e
	:goto_6
	:try_start_5
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	if-eqz v6, :cond_10

	.line 921
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

	move-result-object v1

	.line 922
	.restart local v1	# "params":Landroid/hardware/Camera$Parameters;
	invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

	move-result-object v2

	.line 923
	.restart local v2	# "strFlashMode":Ljava/lang/String;
	if-eqz v2, :cond_10

	sget-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingTorchNoPrevSurface:Z

	if-nez v6, :cond_10

	.line 924
	const-string v6, "torch"

	invoke-virtual {v2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

	move-result v6

	if-nez v6, :cond_f

	const-string v6, "on"

	invoke-virtual {v2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

	move-result v6

	if-eqz v6, :cond_10

	.line 925
	:cond_f
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSuccessfullyUsingTorchMode:Z

	.line 926
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "Successfully using camera LED torch mode"

	invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 928
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setUpCameraPreview()V

	.line 933
	.end local v1	# "params":Landroid/hardware/Camera$Parameters;
	.end local v2	# "strFlashMode":Ljava/lang/String;
	:cond_10
	sget-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSuccessfullyUsingTorchMode:Z

	if-nez v6, :cond_1

	sget-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingFlashModeOn:Z

	if-nez v6, :cond_1

	.line 934
	sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryID_TORCH_MODE_FAILED:Ljava/lang/String;

	const/4 v7, 0x0

	invoke-virtual {p0, v6, v7}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	.line 935
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "Can\'t use camera LED torch mode, attempting setFlashlightEnabled()"

	invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	.line 936
	const/4 v6, 0x1

	invoke-direct {p0, v6}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->enableFlashlight(Z)V
	:try_end_5
	.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

	goto/16 :goto_0

	.line 938
	:catch_0
	move-exception v0

	.line 939
	.local v0, "e":Ljava/lang/Exception;
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "turnOnCameraFlashLED - Read Flash Mode Failed"

	invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 940
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 941
	sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnCameraFlashLEDReadFlashModeFailed:Ljava/lang/String;

	invoke-virtual {p0, v6, v8}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto/16 :goto_0

	.line 779
	.end local v0	# "e":Ljava/lang/Exception;
	.restart local v3	# "strManufacturer":Ljava/lang/String;
	.restart local v4	# "strModel":Ljava/lang/String;
	:cond_11
	:try_start_6
	const-string v6, "SGH-T589"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_4

	.line 780
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSamsungGravity:Z
	:try_end_6
	.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

	goto/16 :goto_1

	.line 838
	.end local v3	# "strManufacturer":Ljava/lang/String;
	.end local v4	# "strModel":Ljava/lang/String;
	:catch_1
	move-exception v0

	.line 839
	.restart local v0	# "e":Ljava/lang/Exception;
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "turnOnCameraFlashLED - Special Case Device Handling Failed"

	invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 840
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 841
	sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnCameraFlashLEDSpecialCaseFailed:Ljava/lang/String;

	invoke-virtual {p0, v6, v8}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto/16 :goto_4

	.line 791
	.end local v0	# "e":Ljava/lang/Exception;
	.restart local v3	# "strManufacturer":Ljava/lang/String;
	.restart local v4	# "strModel":Ljava/lang/String;
	:catch_2
	move-exception v0

	.line 792
	.restart local v0	# "e":Ljava/lang/Exception;
	:try_start_7
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "setMotoXTAFLED() failed"

	invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 793
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 794
	sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionsetMotoXTAFLEDFailed:Ljava/lang/String;

	const/4 v7, 0x0

	invoke-virtual {p0, v6, v7}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto/16 :goto_2

	.line 811
	.end local v0	# "e":Ljava/lang/Exception;
	:cond_12
	const-string v6, "LG-P970"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_13

	const-string v6, "LG-P970h"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-nez v6, :cond_13

	.line 812
	const-string v6, "LG-P970g"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_8

	.line 813
	:cond_13
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingTorchNoPrevResize:Z

	goto/16 :goto_3

	.line 834
	:cond_14
	const-string v6, "HTC One X+"

	invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_c

	.line 835
	const/4 v6, 0x1

	sput-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingSetTorchAfterStartPreview:Z
	:try_end_7
	.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

	goto/16 :goto_4

	.line 849
	.end local v3	# "strManufacturer":Ljava/lang/String;
	.end local v4	# "strModel":Ljava/lang/String;
	:catch_3
	move-exception v0

	.line 850
	.restart local v0	# "e":Ljava/lang/Exception;
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "turnOnCameraFlashLED - Open Camera Failed"

	invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 851
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 852
	sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnCameraFlashLEDOpenCameraFailed:Ljava/lang/String;

	invoke-virtual {p0, v6, v8}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto/16 :goto_5

	.line 868
	.end local v0	# "e":Ljava/lang/Exception;
	.restart local v1	# "params":Landroid/hardware/Camera$Parameters;
	.restart local v2	# "strFlashMode":Ljava/lang/String;
	:cond_15
	:try_start_8
	sget-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingPostOffAutofocusMode:Z

	if-eqz v6, :cond_16

	.line 869
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6}, Landroid/hardware/Camera;->stopPreview()V

	.line 870
	const-wide/16 v6, 0x19

	invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

	.line 871
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashModeOn()V

	.line 872
	const-wide/16 v6, 0x19

	invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

	.line 873
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setUpCameraPreview()V

	.line 874
	const-wide/16 v6, 0x19

	invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

	.line 875
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

	.line 876
	const-wide/16 v6, 0x19

	invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

	.line 877
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mAutofocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

	invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

	.line 878
	const-wide/16 v6, 0x64

	invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

	.line 879
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashModeOff()V
	:try_end_8
	.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

	goto/16 :goto_6

	.line 912
	.end local v1	# "params":Landroid/hardware/Camera$Parameters;
	.end local v2	# "strFlashMode":Ljava/lang/String;
	:catch_4
	move-exception v0

	.line 913
	.restart local v0	# "e":Ljava/lang/Exception;
	const-string v6, "BrightestFlashlightMain"

	const-string v7, "turnOnCameraFlashLED() Failed"

	invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 914
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 915
	sget-object v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnCameraFlashLEDFailed:Ljava/lang/String;

	invoke-virtual {p0, v6, v8}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto/16 :goto_6

	.line 881
	.end local v0	# "e":Ljava/lang/Exception;
	.restart local v1	# "params":Landroid/hardware/Camera$Parameters;
	.restart local v2	# "strFlashMode":Ljava/lang/String;
	:cond_16
	:try_start_9
	sget-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFBlinkMode:Z

	if-eqz v6, :cond_17

	.line 882
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashModeOn()V

	.line 884
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mAutofocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

	invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

	goto/16 :goto_6

	.line 886
	:cond_17
	sget-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingTorchNoPrevSurface:Z

	if-eqz v6, :cond_18

	.line 887
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashModeTorch()V

	.line 888
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

	goto/16 :goto_6

	.line 890
	:cond_18
	sget-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingTorchNoPrevResize:Z

	if-eqz v6, :cond_19

	.line 891
	const-string v6, "torch"

	invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

	.line 892
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	goto/16 :goto_6

	.line 894
	:cond_19
	sget-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSamsungGravity:Z

	if-eqz v6, :cond_1a

	.line 895
	const-string v6, "torch"

	invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

	.line 896
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	iget-object v7, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mAutofocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

	invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

	.line 897
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

	.line 898
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

	goto/16 :goto_6

	.line 901
	:cond_1a
	sget-boolean v6, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingSetTorchAfterStartPreview:Z

	if-eqz v6, :cond_1b

	.line 902
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

	.line 903
	invoke-direct {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->setFlashModeTorch()V

	goto/16 :goto_6

	.line 906
	:cond_1b
	const-string v6, "torch"

	invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

	.line 907
	iget-object v6, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mCamera:Landroid/hardware/Camera;

	invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
	:try_end_9
	.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

	goto/16 :goto_6
.end method

.method public turnOnNotificationLED()V
	.locals 5

	.prologue
	.line 1133
	:try_start_0
	const-string v3, "notification"

	invoke-virtual {p0, v3}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

	move-result-object v1

	check-cast v1, Landroid/app/NotificationManager;

	.line 1134
	.local v1, "nm":Landroid/app/NotificationManager;
	new-instance v2, Landroid/app/Notification;

	invoke-direct {v2}, Landroid/app/Notification;-><init>()V

	.line 1135
	.local v2, "notif":Landroid/app/Notification;
	const/4 v3, -0x1

	iput v3, v2, Landroid/app/Notification;->ledARGB:I

	.line 1136
	const/4 v3, 0x1

	iput v3, v2, Landroid/app/Notification;->flags:I

	.line 1137
	const/16 v3, 0x3e8

	iput v3, v2, Landroid/app/Notification;->ledOnMS:I

	.line 1138
	const/4 v3, 0x0

	iput v3, v2, Landroid/app/Notification;->ledOffMS:I

	.line 1139
	const/16 v3, 0x309

	invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1145
	.end local v1	# "nm":Landroid/app/NotificationManager;
	.end local v2	# "notif":Landroid/app/Notification;
	:goto_0
	return-void

	.line 1140
	:catch_0
	move-exception v0

	.line 1141
	.local v0, "e":Ljava/lang/Exception;
	const-string v3, "BrightestFlashlightMain"

	const-string v4, "turnOnNotificationLED() Failed"

	invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1142
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	.line 1143
	sget-object v3, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnNotificationLEDFailed:Ljava/lang/String;

	const/4 v4, 0x0

	invoke-virtual {p0, v3, v4}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method

.method public turnOnSoftKeysBacklight()V
	.locals 6

	.prologue
	.line 1164
	:try_start_0
	invoke-virtual {p0}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->getWindow()Landroid/view/Window;

	move-result-object v2

	.line 1165
	.local v2, "win":Landroid/view/Window;
	invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

	move-result-object v3

	.line 1169
	.local v3, "winParams":Landroid/view/WindowManager$LayoutParams;
	invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

	move-result-object v4

	const-string v5, "buttonBrightness"

	invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

	move-result-object v0

	.line 1170
	.local v0, "buttonBrightness":Ljava/lang/reflect/Field;
	invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

	move-result v4

	iput v4, p0, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->mfSoftKeysBrightness:F

	.line 1171
	const/high16 v4, 0x3f800000	# 1.0f

	invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

	move-result-object v4

	invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

	.line 1180
	invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 1186
	.end local v0	# "buttonBrightness":Ljava/lang/reflect/Field;
	.end local v2	# "win":Landroid/view/Window;
	.end local v3	# "winParams":Landroid/view/WindowManager$LayoutParams;
	:goto_0
	return-void

	.line 1181
	:catch_0
	move-exception v1

	.line 1182
	.local v1, "e":Ljava/lang/Exception;
	const-string v4, "BrightestFlashlightMain"

	const-string v5, "turnOnSoftKeysBacklight() Failed"

	invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 1183
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	.line 1184
	sget-object v4, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnSoftKeysBacklightFailed:Ljava/lang/String;

	const/4 v5, 0x0

	invoke-virtual {p0, v4, v5}, Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain;->sendFlurryEvent(Ljava/lang/String;Ljava/util/Map;)V

	goto :goto_0
.end method
