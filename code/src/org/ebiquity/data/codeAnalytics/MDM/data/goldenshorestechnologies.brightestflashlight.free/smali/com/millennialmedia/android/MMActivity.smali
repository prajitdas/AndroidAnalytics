.class public Lcom/millennialmedia/android/MMActivity;
.super Landroid/app/Activity;
.source "MMActivity.java"


# instance fields
.field creatorAdImplInternalId:J

.field private mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;


# direct methods
.method public constructor <init>()V
	.locals 0

	.prologue
	.line 11
	invoke-direct {p0}, Landroid/app/Activity;-><init>()V

	return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
	.locals 1
	.param p1, "ev"	# Landroid/view/MotionEvent;

	.prologue
	.line 229
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 230
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

	move-result v0

	.line 232
	:goto_0
	return v0

	:cond_0
	invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

	move-result v0

	goto :goto_0
.end method

.method dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z
	.locals 1
	.param p1, "ev"	# Landroid/view/MotionEvent;

	.prologue
	.line 257
	invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

	move-result v0

	return v0
.end method

.method public finish()V
	.locals 2

	.prologue
	.line 238
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 240
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->finish()V

	.line 247
	:goto_0
	return-void

	.line 244
	:cond_0
	iget-wide v0, p0, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

	invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->overlayClosed(Landroid/content/Context;J)V

	.line 245
	invoke-super {p0}, Landroid/app/Activity;->finish()V

	goto :goto_0
.end method

.method public finishSuper()V
	.locals 2

	.prologue
	.line 251
	iget-wide v0, p0, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

	invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->overlayClosed(Landroid/content/Context;J)V

	.line 252
	invoke-super {p0}, Landroid/app/Activity;->finish()V

	.line 253
	return-void
.end method

.method protected getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;
	.locals 1

	.prologue
	.line 262
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
	.locals 1
	.param p1, "requestCode"	# I
	.param p2, "resultCode"	# I
	.param p3, "data"	# Landroid/content/Intent;

	.prologue
	.line 201
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 202
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/android/MMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

	.line 205
	:goto_0
	return-void

	.line 204
	:cond_0
	invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

	goto :goto_0
.end method

.method onActivityResultSuper(IILandroid/content/Intent;)V
	.locals 0
	.param p1, "requestCode"	# I
	.param p2, "resultCode"	# I
	.param p3, "data"	# Landroid/content/Intent;

	.prologue
	.line 209
	invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

	.line 210
	return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
	.locals 1
	.param p1, "newConfig"	# Landroid/content/res/Configuration;

	.prologue
	.line 173
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 174
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

	.line 177
	:goto_0
	return-void

	.line 176
	:cond_0
	invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

	goto :goto_0
.end method

.method onConfigurationChangedSuper(Landroid/content/res/Configuration;)V
	.locals 0
	.param p1, "newConfig"	# Landroid/content/res/Configuration;

	.prologue
	.line 167
	invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

	.line 168
	return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
	.locals 8
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	.line 19
	invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

	.line 20
	const/4 v1, 0x0

	.line 21
	.local v1, "className":Ljava/lang/String;
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

	move-result-object v3

	.line 22
	.local v3, "intent":Landroid/content/Intent;
	const-string v4, "internalId"

	const-wide/16 v5, -0x4

	invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

	move-result-wide v4

	iput-wide v4, p0, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

	.line 25
	:try_start_0
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

	move-result-object v4

	const-string v5, "class"

	invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

	move-result-object v1

	.line 26
	invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

	move-result-object v0

	.line 27
	.local v0, "activityClass":Ljava/lang/Class;
	invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Lcom/millennialmedia/android/MMBaseActivity;

	iput-object v4, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	.line 28
	iget-object v4, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	iput-object p0, v4, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

	.line 29
	iget-object v4, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v4, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 37
	.end local v0	# "activityClass":Ljava/lang/Class;
	:goto_0
	return-void

	.line 31
	:catch_0
	move-exception v2

	.line 33
	.local v2, "e":Ljava/lang/Exception;
	const-string v4, "Could not start activity for %s. %s"

	const/4 v5, 0x2

	new-array v5, v5, [Ljava/lang/Object;

	const/4 v6, 0x0

	aput-object v1, v5, v6

	const/4 v6, 0x1

	invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

	move-result-object v7

	aput-object v7, v5, v6

	invoke-static {v4, v5}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 34
	invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

	.line 35
	invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->finish()V

	goto :goto_0
.end method

.method onCreateSuper(Landroid/os/Bundle;)V
	.locals 0
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	.line 41
	invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

	.line 42
	return-void
.end method

.method protected onDestroy()V
	.locals 1

	.prologue
	.line 47
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 48
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

	.line 51
	:goto_0
	return-void

	.line 50
	:cond_0
	invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

	goto :goto_0
.end method

.method onDestroySuper()V
	.locals 0

	.prologue
	.line 55
	invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

	.line 56
	return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
	.locals 1
	.param p1, "keyCode"	# I
	.param p2, "event"	# Landroid/view/KeyEvent;

	.prologue
	.line 215
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 216
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

	move-result v0

	.line 218
	:goto_0
	return v0

	:cond_0
	invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

	move-result v0

	goto :goto_0
.end method

.method onKeyDownSuper(ILandroid/view/KeyEvent;)Z
	.locals 1
	.param p1, "keyCode"	# I
	.param p2, "event"	# Landroid/view/KeyEvent;

	.prologue
	.line 223
	invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

	move-result v0

	return v0
.end method

.method protected onPause()V
	.locals 1

	.prologue
	.line 117
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 118
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onPause()V

	.line 121
	:goto_0
	return-void

	.line 120
	:cond_0
	invoke-super {p0}, Landroid/app/Activity;->onPause()V

	goto :goto_0
.end method

.method onPauseSuper()V
	.locals 0

	.prologue
	.line 125
	invoke-super {p0}, Landroid/app/Activity;->onPause()V

	.line 126
	return-void
.end method

.method protected onRestart()V
	.locals 1

	.prologue
	.line 89
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 90
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onRestart()V

	.line 93
	:goto_0
	return-void

	.line 92
	:cond_0
	invoke-super {p0}, Landroid/app/Activity;->onRestart()V

	goto :goto_0
.end method

.method onRestartSuper()V
	.locals 0

	.prologue
	.line 97
	invoke-super {p0}, Landroid/app/Activity;->onRestart()V

	.line 98
	return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
	.locals 1
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	.line 145
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 146
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

	.line 149
	:goto_0
	return-void

	.line 148
	:cond_0
	invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

	goto :goto_0
.end method

.method onRestoreInstanceStateSuper(Landroid/os/Bundle;)V
	.locals 0
	.param p1, "savedInstanceState"	# Landroid/os/Bundle;

	.prologue
	.line 153
	invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

	.line 154
	return-void
.end method

.method protected onResume()V
	.locals 1

	.prologue
	.line 103
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 104
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onResume()V

	.line 107
	:goto_0
	return-void

	.line 106
	:cond_0
	invoke-super {p0}, Landroid/app/Activity;->onResume()V

	goto :goto_0
.end method

.method onResumeSuper()V
	.locals 0

	.prologue
	.line 111
	invoke-super {p0}, Landroid/app/Activity;->onResume()V

	.line 112
	return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
	.locals 1

	.prologue
	.line 187
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 188
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

	move-result-object v0

	.line 190
	:goto_0
	return-object v0

	:cond_0
	invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

	move-result-object v0

	goto :goto_0
.end method

.method onRetainNonConfigurationInstanceSuper()Ljava/lang/Object;
	.locals 1

	.prologue
	.line 195
	invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

	move-result-object v0

	return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
	.locals 1
	.param p1, "outState"	# Landroid/os/Bundle;

	.prologue
	.line 131
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 132
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

	.line 135
	:goto_0
	return-void

	.line 134
	:cond_0
	invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

	goto :goto_0
.end method

.method onSaveInstanceStateSuper(Landroid/os/Bundle;)V
	.locals 0
	.param p1, "outState"	# Landroid/os/Bundle;

	.prologue
	.line 139
	invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

	.line 140
	return-void
.end method

.method protected onStart()V
	.locals 1

	.prologue
	.line 61
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 62
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onStart()V

	.line 65
	:goto_0
	return-void

	.line 64
	:cond_0
	invoke-super {p0}, Landroid/app/Activity;->onStart()V

	goto :goto_0
.end method

.method onStartSuper()V
	.locals 0

	.prologue
	.line 69
	invoke-super {p0}, Landroid/app/Activity;->onStart()V

	.line 70
	return-void
.end method

.method protected onStop()V
	.locals 1

	.prologue
	.line 75
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 76
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onStop()V

	.line 79
	:goto_0
	return-void

	.line 78
	:cond_0
	invoke-super {p0}, Landroid/app/Activity;->onStop()V

	goto :goto_0
.end method

.method onStopSuper()V
	.locals 0

	.prologue
	.line 83
	invoke-super {p0}, Landroid/app/Activity;->onStop()V

	.line 84
	return-void
.end method

.method public onWindowFocusChanged(Z)V
	.locals 1
	.param p1, "hasFocus"	# Z

	.prologue
	.line 159
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	if-eqz v0, :cond_0

	.line 160
	iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onWindowFocusChanged(Z)V

	.line 163
	:goto_0
	return-void

	.line 162
	:cond_0
	invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

	goto :goto_0
.end method

.method onWindowFocusChangedSuper(Z)V
	.locals 0
	.param p1, "hasFocus"	# Z

	.prologue
	.line 181
	invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

	.line 182
	return-void
.end method
