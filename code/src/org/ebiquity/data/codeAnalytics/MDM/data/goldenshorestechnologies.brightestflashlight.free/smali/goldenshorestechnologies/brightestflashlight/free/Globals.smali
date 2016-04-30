.class public Lgoldenshorestechnologies/brightestflashlight/free/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field public static DEBUGFORCESHOWEULA:Z = false

.field public static DEBUGFORCESHOWRATINGREQUEST:Z = false

.field private static final TAG:Ljava/lang/String; = "Globals"

.field public static bCameraPreviewRunning:Z = false

.field public static bLaunchAborted:Z = false

.field public static bOnCreateThrewException:Z = false

.field public static bSamsungGravity:Z = false

.field public static bSuccessfullyUsingSetFlashlightEnabled:Z = false

.field public static bSuccessfullyUsingTorchMode:Z = false

.field private static bTimeToTerminate:Z = false

.field public static bTimerExtended:Z = false

.field public static bUsingAFBlinkMode:Z = false

.field public static bUsingAFLED:Z = false

.field public static bUsingFlashModeOn:Z = false

.field public static bUsingPostOffAutofocusMode:Z = false

.field public static bUsingSamsungMomentDriverLED:Z = false

.field public static bUsingSetTorchAfterStartPreview:Z = false

.field public static bUsingTorchNoPrevResize:Z = false

.field public static bUsingTorchNoPrevSurface:Z = false

.field public static final codeFree:I = 0x1

.field public static final codeUltimate:I = 0x4

.field public static fControlTextSize:F = 0.0f

.field public static fDialogTitleTextSize:F = 0.0f

.field public static final fMinAllowedControlTextSize:F = 8.0f

.field public static final fMinAllowedDialogTitleTextSize:F = 8.0f

.field public static final fPreferredControlTextSize:F = 40.0f

.field public static final fPreferredDialogTitleTextSize:F = 50.0f

.field public static iAutoShutdownTimeout:J = 0x0L

.field public static final iControlBottomMargins:I = 0xa

.field public static final iControlLeftMargins:I = 0x14

.field public static final iControlRightMargins:I = 0x0

.field public static final iControlTopMargins:I = 0x0

.field public static iPackage:I = 0x0

.field public static final iTitlebarIconMarginLeft:I = 0x5

.field public static final iTitlebarIconMarginsBottom:I = 0xa

.field public static final iTitlebarIconMarginsRight:I = 0x0

.field public static final iTitlebarIconMarginsTop:I = 0x0

.field public static final iTitlebarTextBottomMargin:I = 0x5

.field public static final iTitlebarTextLeftMargins:I = 0xf

.field public static final iTitlebarTextRightMargins:I = 0x0

.field public static final iTitlebarTextTopMargins:I = 0x0

.field private static lockTimeToTerminate:Ljava/util/concurrent/locks/ReentrantLock; = null

.field private static mCurrentOSVersion:I = 0x0

.field public static mainApp:Lgoldenshorestechnologies/brightestflashlight/free/BrightestFlashlightMain; = null

.field public static final strCameraLEDValueName:Ljava/lang/String; = "CameraLED_Enabled"

.field public static strFlurryIDCountDownAnimationPlayed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionDisableScreenTimeoutFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionEnableFlashlightFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionEnableScreenTimeoutFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionExitIfScreenOffFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionGetSoftwareVersionFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionLaunchFadeInScreenFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionOnCreateFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionOnOpenAllocationLoadFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionOnPauseFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionOnResumeFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionOnStartFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionOnSuccessfulLoadFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionOnTouchEventFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionPauseMobclixAdsFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionPlayCountdownAnimationFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionPlayShutdownSoundFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionPlayStartupSoundFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionResumeMobclixAdsFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionRunFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionSetMaxScreenBrightnessFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionSetTimerFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionSetUpCameraPreviewFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionSetUpVideoWidgetFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionStopCameraPreviewFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionStopTimerFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionSurfaceChangedFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionSurfaceCreatedFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionSurfaceDestroyedFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOffCameraFlashLEDFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOffNotificationLEDFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOffSamsungMomentCameraFlashLEDFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOffSoftKeysBacklightFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOnCameraFlashLEDFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOnCameraFlashLEDOpenCameraFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOnCameraFlashLEDReadFlashModeFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOnCameraFlashLEDSpecialCaseFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOnNotificationLEDFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOnSamsungMomentCameraFlashLEDFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionTurnOnSoftKeysBacklightFailed:Ljava/lang/String; = null

.field public static strFlurryIDExceptionsetMotoXTAFLEDFailed:Ljava/lang/String; = null

.field public static strFlurryIDIllegalID:Ljava/lang/String; = null

.field public static strFlurryIDShowingRateRequestDialogAfterPostpone:Ljava/lang/String; = null

.field public static strFlurryIDShowingRateRequestDialogForFirstTime:Ljava/lang/String; = null

.field public static strFlurryIDTimeSpentInSession:Ljava/lang/String; = null

.field public static strFlurryIDUserClickedRateRequestNeverShowAgainButton:Ljava/lang/String; = null

.field public static strFlurryIDUserClickedRateRequestNoButton:Ljava/lang/String; = null

.field public static strFlurryIDUserClickedRateRequestYesButton:Ljava/lang/String; = null

.field public static strFlurryID_TORCH_MODE_FAILED:Ljava/lang/String; = null

.field public static strFlurryID_setFlashlightEnabledFailed:Ljava/lang/String; = null

.field public static final strMuteValueName:Ljava/lang/String; = "Muted"

.field public static final strOtherLightsValueName:Ljava/lang/String; = "OtherLights_Enabled"

.field public static final strScreenValueName:Ljava/lang/String; = "Screen_Enabled"

.field public static final strSettingsDisplayKeyName:Ljava/lang/String; = "Settings_Display"

.field public static final strSettingsSoundKeyName:Ljava/lang/String; = "Settings_Sound"

.field public static final strSettingsTimerKeyName:Ljava/lang/String; = "Settings_Timer"

.field public static final strShutdownTimeoutValueName:Ljava/lang/String; = "Shutdown_Timeout"


# direct methods
.method static constructor <clinit>()V
	.locals 3

	.prologue
	const/4 v2, 0x0

	.line 20
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->DEBUGFORCESHOWEULA:Z

	.line 21
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->DEBUGFORCESHOWRATINGREQUEST:Z

	.line 26
	const/4 v0, 0x1

	sput v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iPackage:I

	.line 32
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bLaunchAborted:Z

	.line 35
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSuccessfullyUsingTorchMode:Z

	.line 38
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSuccessfullyUsingSetFlashlightEnabled:Z

	.line 41
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingSamsungMomentDriverLED:Z

	.line 45
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingFlashModeOn:Z

	.line 49
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingPostOffAutofocusMode:Z

	.line 53
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFBlinkMode:Z

	.line 56
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingTorchNoPrevSurface:Z

	.line 60
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingTorchNoPrevResize:Z

	.line 63
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingAFLED:Z

	.line 65
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bSamsungGravity:Z

	.line 69
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bUsingSetTorchAfterStartPreview:Z

	.line 72
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bCameraPreviewRunning:Z

	.line 82
	const/high16 v0, 0x42200000	# 40.0f

	sput v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fControlTextSize:F

	.line 83
	const/high16 v0, 0x42480000	# 50.0f

	sput v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->fDialogTitleTextSize:F

	.line 113
	const-string v0, "Countdown Animation Played"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDCountDownAnimationPlayed:Ljava/lang/String;

	.line 114
	const-string v0, "Torch mode failed to operate"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryID_TORCH_MODE_FAILED:Ljava/lang/String;

	.line 115
	const-string v0, "setFlashlightEnabled failed to operate"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryID_setFlashlightEnabledFailed:Ljava/lang/String;

	.line 116
	const-string v0, "Total Time Spent in Session Between Resume/Pause"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDTimeSpentInSession:Ljava/lang/String;

	.line 117
	const-string v0, "Showing the Rating Request Dialog for the First Time"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDShowingRateRequestDialogForFirstTime:Ljava/lang/String;

	.line 118
	const-string v0, "Showing the Rating Request Dialog after the user has Postponed"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDShowingRateRequestDialogAfterPostpone:Ljava/lang/String;

	.line 119
	const-string v0, "User Clicked the Rating Request Yes Button"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDUserClickedRateRequestYesButton:Ljava/lang/String;

	.line 120
	const-string v0, "User Clicked the Rating Request No Button"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDUserClickedRateRequestNoButton:Ljava/lang/String;

	.line 121
	const-string v0, "User Clicked the Rating Request Never Show Again Button"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDUserClickedRateRequestNeverShowAgainButton:Ljava/lang/String;

	.line 122
	const-string v0, "ILLEGAL ID"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDIllegalID:Ljava/lang/String;

	.line 124
	const-string v0, "onCreate() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnCreateFailed:Ljava/lang/String;

	.line 125
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bOnCreateThrewException:Z

	.line 126
	const-string v0, "onStart() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnStartFailed:Ljava/lang/String;

	.line 127
	const-string v0, "onResume() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnResumeFailed:Ljava/lang/String;

	.line 128
	const-string v0, "onPause() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnPauseFailed:Ljava/lang/String;

	.line 129
	const-string v0, "exitIfScreenOff() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionExitIfScreenOffFailed:Ljava/lang/String;

	.line 130
	const-string v0, "run() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionRunFailed:Ljava/lang/String;

	.line 131
	const-string v0, "setTimer() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSetTimerFailed:Ljava/lang/String;

	.line 132
	const-string v0, "stopTimer() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionStopTimerFailed:Ljava/lang/String;

	.line 133
	const-string v0, "getSoftwareVersion() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionGetSoftwareVersionFailed:Ljava/lang/String;

	.line 134
	const-string v0, "setMaxScreenBrightness() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSetMaxScreenBrightnessFailed:Ljava/lang/String;

	.line 135
	const-string v0, "disableScreenTimeout() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionDisableScreenTimeoutFailed:Ljava/lang/String;

	.line 136
	const-string v0, "enableScreenTimeout() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionEnableScreenTimeoutFailed:Ljava/lang/String;

	.line 137
	const-string v0, "turnOnCameraFlashLED() Special Case Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnCameraFlashLEDSpecialCaseFailed:Ljava/lang/String;

	.line 138
	const-string v0, "turnOnCameraFlashLED() Open Camera Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnCameraFlashLEDOpenCameraFailed:Ljava/lang/String;

	.line 139
	const-string v0, "turnOnCameraFlashLED() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnCameraFlashLEDFailed:Ljava/lang/String;

	.line 140
	const-string v0, "turnOnCameraFlashLED() Read Flash Mode Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnCameraFlashLEDReadFlashModeFailed:Ljava/lang/String;

	.line 141
	const-string v0, "enableFlashlight() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionEnableFlashlightFailed:Ljava/lang/String;

	.line 142
	const-string v0, "turnOnSamsungMomentCameraFlashLED() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnSamsungMomentCameraFlashLEDFailed:Ljava/lang/String;

	.line 143
	const-string v0, "turnOffSamsungMomentCameraFlashLED() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOffSamsungMomentCameraFlashLEDFailed:Ljava/lang/String;

	.line 144
	const-string v0, "turnOffCameraFlashLED() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOffCameraFlashLEDFailed:Ljava/lang/String;

	.line 145
	const-string v0, "turnOnNotificationLED() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnNotificationLEDFailed:Ljava/lang/String;

	.line 146
	const-string v0, "turnOffNotificationLED() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOffNotificationLEDFailed:Ljava/lang/String;

	.line 147
	const-string v0, "turnOnSoftKeysBacklight() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOnSoftKeysBacklightFailed:Ljava/lang/String;

	.line 148
	const-string v0, "turnOffSoftKeysBacklight() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionTurnOffSoftKeysBacklightFailed:Ljava/lang/String;

	.line 149
	const-string v0, "playStartupSound() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionPlayStartupSoundFailed:Ljava/lang/String;

	.line 150
	const-string v0, "playShutdownSound() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionPlayShutdownSoundFailed:Ljava/lang/String;

	.line 151
	const-string v0, "setUpVideoWidget() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSetUpVideoWidgetFailed:Ljava/lang/String;

	.line 152
	const-string v0, "playCountdownAnimation() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionPlayCountdownAnimationFailed:Ljava/lang/String;

	.line 153
	const-string v0, "launchFadeInScreen() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionLaunchFadeInScreenFailed:Ljava/lang/String;

	.line 154
	const-string v0, "onTouchEvent() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnTouchEventFailed:Ljava/lang/String;

	.line 155
	const-string v0, "setUpCameraPreview() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSetUpCameraPreviewFailed:Ljava/lang/String;

	.line 156
	const-string v0, "stopCameraPreview() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionStopCameraPreviewFailed:Ljava/lang/String;

	.line 157
	const-string v0, "surfaceCreated() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSurfaceCreatedFailed:Ljava/lang/String;

	.line 158
	const-string v0, "surfaceChanged() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSurfaceChangedFailed:Ljava/lang/String;

	.line 159
	const-string v0, "surfaceDestroyed() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionSurfaceDestroyedFailed:Ljava/lang/String;

	.line 160
	const-string v0, "resumeMobclixAds() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionResumeMobclixAdsFailed:Ljava/lang/String;

	.line 161
	const-string v0, "pauseMobclixAds() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionPauseMobclixAdsFailed:Ljava/lang/String;

	.line 162
	const-string v0, "onSuccessfulLoad() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnSuccessfulLoadFailed:Ljava/lang/String;

	.line 163
	const-string v0, "onOpenAllocationLoad() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionOnOpenAllocationLoadFailed:Ljava/lang/String;

	.line 164
	const-string v0, "setMotoXTAFLED() Threw Exception"

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->strFlurryIDExceptionsetMotoXTAFLEDFailed:Ljava/lang/String;

	.line 168
	sput v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->mCurrentOSVersion:I

	.line 179
	const-wide/32 v0, 0x1c138

	sput-wide v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->iAutoShutdownTimeout:J

	.line 180
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bTimerExtended:Z

	.line 184
	new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

	invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

	sput-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->lockTimeToTerminate:Ljava/util/concurrent/locks/ReentrantLock;

	.line 185
	sput-boolean v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bTimeToTerminate:Z

	return-void
.end method

.method public constructor <init>()V
	.locals 0

	.prologue
	.line 16
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method

.method public static ReadPreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
	.locals 6
	.param p0, "activityMain"	# Landroid/app/Activity;
	.param p1, "strKeyName"	# Ljava/lang/String;
	.param p2, "strValueName"	# Ljava/lang/String;

	.prologue
	.line 245
	const/4 v0, 0x0

	.line 247
	.local v0, "bRet":Z
	const/4 v3, 0x0

	:try_start_0
	invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

	move-result-object v2

	.line 248
	.local v2, "preferences":Landroid/content/SharedPreferences;
	const/4 v3, 0x0

	invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

	move-result v0

	.line 249
	const-string v3, "Globals"

	new-instance v4, Ljava/lang/StringBuilder;

	const-string v5, "Read Boolean = "

	invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

	move-result-object v5

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 254
	.end local v2	# "preferences":Landroid/content/SharedPreferences;
	:goto_0
	return v0

	.line 250
	:catch_0
	move-exception v1

	.line 251
	.local v1, "e":Ljava/lang/Exception;
	const-string v3, "Globals"

	const-string v4, "ReadPreferenceBool() Failed"

	invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 252
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public static ReadPreferenceBoolWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z
	.locals 6
	.param p0, "activityMain"	# Landroid/app/Activity;
	.param p1, "strKeyName"	# Ljava/lang/String;
	.param p2, "strValueName"	# Ljava/lang/String;
	.param p3, "bDefault"	# Z

	.prologue
	.line 262
	move v0, p3

	.line 264
	.local v0, "bRet":Z
	const/4 v3, 0x0

	:try_start_0
	invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

	move-result-object v2

	.line 265
	.local v2, "preferences":Landroid/content/SharedPreferences;
	invoke-interface {v2, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

	move-result v0

	.line 266
	const-string v3, "Globals"

	new-instance v4, Ljava/lang/StringBuilder;

	const-string v5, "Read Boolean = "

	invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

	move-result-object v5

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 271
	.end local v2	# "preferences":Landroid/content/SharedPreferences;
	:goto_0
	return v0

	.line 267
	:catch_0
	move-exception v1

	.line 268
	.local v1, "e":Ljava/lang/Exception;
	const-string v3, "Globals"

	const-string v4, "ReadPreferenceBool() Failed"

	invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 269
	invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public static ReadPreferenceInt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
	.locals 6
	.param p0, "activityMain"	# Landroid/app/Activity;
	.param p1, "strKeyName"	# Ljava/lang/String;
	.param p2, "strValueName"	# Ljava/lang/String;

	.prologue
	.line 278
	const/4 v1, 0x0

	.line 280
	.local v1, "iRet":I
	const/4 v3, 0x0

	:try_start_0
	invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

	move-result-object v2

	.line 281
	.local v2, "preferences":Landroid/content/SharedPreferences;
	const/4 v3, 0x0

	invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

	move-result v1

	.line 282
	const-string v3, "Globals"

	new-instance v4, Ljava/lang/StringBuilder;

	const-string v5, "Read Integer = "

	invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

	move-result-object v5

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 287
	.end local v2	# "preferences":Landroid/content/SharedPreferences;
	:goto_0
	return v1

	.line 283
	:catch_0
	move-exception v0

	.line 284
	.local v0, "e":Ljava/lang/Exception;
	const-string v3, "Globals"

	const-string v4, "ReadPreferenceInt() Failed"

	invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 285
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public static ReadPreferenceIntWithDefault(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)I
	.locals 6
	.param p0, "activityMain"	# Landroid/app/Activity;
	.param p1, "strKeyName"	# Ljava/lang/String;
	.param p2, "strValueName"	# Ljava/lang/String;
	.param p3, "iDefault"	# I

	.prologue
	.line 294
	move v1, p3

	.line 296
	.local v1, "iRet":I
	const/4 v3, 0x0

	:try_start_0
	invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

	move-result-object v2

	.line 297
	.local v2, "preferences":Landroid/content/SharedPreferences;
	invoke-interface {v2, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

	move-result v1

	.line 298
	const-string v3, "Globals"

	new-instance v4, Ljava/lang/StringBuilder;

	const-string v5, "Read Integer = "

	invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

	move-result-object v5

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 303
	.end local v2	# "preferences":Landroid/content/SharedPreferences;
	:goto_0
	return v1

	.line 299
	:catch_0
	move-exception v0

	.line 300
	.local v0, "e":Ljava/lang/Exception;
	const-string v3, "Globals"

	const-string v4, "ReadPreferenceInt() Failed"

	invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 301
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public static WritePreferenceBool(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
	.locals 6
	.param p0, "activityMain"	# Landroid/app/Activity;
	.param p1, "strKeyName"	# Ljava/lang/String;
	.param p2, "strValueName"	# Ljava/lang/String;
	.param p3, "bValue"	# Z

	.prologue
	.line 215
	const/4 v3, 0x0

	:try_start_0
	invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

	move-result-object v2

	.line 216
	.local v2, "preferences":Landroid/content/SharedPreferences;
	invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

	move-result-object v1

	.line 217
	.local v1, "editor":Landroid/content/SharedPreferences$Editor;
	invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

	.line 218
	invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

	.line 219
	const-string v3, "Globals"

	new-instance v4, Ljava/lang/StringBuilder;

	const-string v5, "Wrote Boolean = "

	invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

	move-result-object v5

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 224
	.end local v1	# "editor":Landroid/content/SharedPreferences$Editor;
	.end local v2	# "preferences":Landroid/content/SharedPreferences;
	:goto_0
	return-void

	.line 220
	:catch_0
	move-exception v0

	.line 221
	.local v0, "e":Ljava/lang/Exception;
	const-string v3, "Globals"

	const-string v4, "WritePreferenceBool() Failed"

	invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 222
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public static WritePreferenceInt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
	.locals 6
	.param p0, "activityMain"	# Landroid/app/Activity;
	.param p1, "strKeyName"	# Ljava/lang/String;
	.param p2, "strValueName"	# Ljava/lang/String;
	.param p3, "iValue"	# I

	.prologue
	.line 230
	const/4 v3, 0x0

	:try_start_0
	invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

	move-result-object v2

	.line 231
	.local v2, "preferences":Landroid/content/SharedPreferences;
	invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

	move-result-object v1

	.line 232
	.local v1, "editor":Landroid/content/SharedPreferences$Editor;
	invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

	.line 233
	invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

	.line 234
	const-string v3, "Globals"

	new-instance v4, Ljava/lang/StringBuilder;

	const-string v5, "Wrote Integer = "

	invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

	move-result-object v5

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 239
	.end local v1	# "editor":Landroid/content/SharedPreferences$Editor;
	.end local v2	# "preferences":Landroid/content/SharedPreferences;
	:goto_0
	return-void

	.line 235
	:catch_0
	move-exception v0

	.line 236
	.local v0, "e":Ljava/lang/Exception;
	const-string v3, "Globals"

	const-string v4, "WritePreferenceInt() Failed"

	invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	.line 237
	invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

	goto :goto_0
.end method

.method public static getCurrentOSVersion()D
	.locals 2

	.prologue
	.line 172
	sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

	sput v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->mCurrentOSVersion:I

	.line 173
	sget v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->mCurrentOSVersion:I

	int-to-double v0, v0

	return-wide v0
.end method

.method public static getIsTimeToTerminate()Z
	.locals 3

	.prologue
	.line 187
	const/4 v0, 0x0

	.line 189
	.local v0, "bRet":Z
	:try_start_0
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->lockTimeToTerminate:Ljava/util/concurrent/locks/ReentrantLock;

	invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

	.line 190
	sget-boolean v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bTimeToTerminate:Z
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 193
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->lockTimeToTerminate:Ljava/util/concurrent/locks/ReentrantLock;

	invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

	.line 195
	return v0

	.line 192
	:catchall_0
	move-exception v1

	.line 193
	sget-object v2, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->lockTimeToTerminate:Ljava/util/concurrent/locks/ReentrantLock;

	invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

	.line 194
	throw v1
.end method

.method public static setIsTimeToTerminate(Z)V
	.locals 2
	.param p0, "b"	# Z

	.prologue
	.line 199
	:try_start_0
	sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->lockTimeToTerminate:Ljava/util/concurrent/locks/ReentrantLock;

	invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

	.line 200
	sput-boolean p0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->bTimeToTerminate:Z
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 203
	sget-object v0, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->lockTimeToTerminate:Ljava/util/concurrent/locks/ReentrantLock;

	invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

	.line 205
	return-void

	.line 202
	:catchall_0
	move-exception v0

	.line 203
	sget-object v1, Lgoldenshorestechnologies/brightestflashlight/free/Globals;->lockTimeToTerminate:Ljava/util/concurrent/locks/ReentrantLock;

	invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

	.line 204
	throw v0
.end method

.method public static suppressUnreadWarning(Ljava/lang/Object;)V
	.locals 0
	.param p0, "o"	# Ljava/lang/Object;

	.prologue
	.line 210
	return-void
.end method
