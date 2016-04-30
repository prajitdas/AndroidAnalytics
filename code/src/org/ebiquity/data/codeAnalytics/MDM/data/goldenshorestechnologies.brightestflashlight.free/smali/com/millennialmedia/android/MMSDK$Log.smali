.class Lcom/millennialmedia/android/MMSDK$Log;
.super Ljava/lang/Object;
.source "MMSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/MMSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x8
	name = "Log"
.end annotation


# direct methods
.method constructor <init>()V
	.locals 0

	.prologue
	.line 154
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method

.method static d(Ljava/lang/String;)V
	.locals 3
	.param p0, "message"	# Ljava/lang/String;

	.prologue
	.line 207
	sget v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v1, 0x1

	if-lt v0, v1, :cond_0

	.line 208
	const-string v0, "MillennialMediaSDK"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Diagnostic - "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 209
	:cond_0
	return-void
.end method

.method static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
	.locals 3
	.param p0, "format"	# Ljava/lang/String;
	.param p1, "args"	# [Ljava/lang/Object;

	.prologue
	.line 213
	sget v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v1, 0x1

	if-lt v0, v1, :cond_0

	.line 214
	const-string v0, "MillennialMediaSDK"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Diagnostic - "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 215
	:cond_0
	return-void
.end method

.method static d(Ljava/lang/Throwable;)V
	.locals 2
	.param p0, "tr"	# Ljava/lang/Throwable;

	.prologue
	.line 219
	sget v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v1, 0x1

	if-lt v0, v1, :cond_0

	.line 220
	invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 221
	:cond_0
	return-void
.end method

.method static e(Ljava/lang/String;)V
	.locals 1
	.param p0, "message"	# Ljava/lang/String;

	.prologue
	.line 191
	const-string v0, "MillennialMediaSDK"

	invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 192
	return-void
.end method

.method static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
	.locals 2
	.param p0, "format"	# Ljava/lang/String;
	.param p1, "args"	# [Ljava/lang/Object;

	.prologue
	.line 196
	const-string v0, "MillennialMediaSDK"

	invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

	.line 197
	return-void
.end method

.method static e(Ljava/lang/Throwable;)V
	.locals 1
	.param p0, "tr"	# Ljava/lang/Throwable;

	.prologue
	.line 201
	invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	.line 202
	return-void
.end method

.method static i(Ljava/lang/String;)V
	.locals 1
	.param p0, "message"	# Ljava/lang/String;

	.prologue
	.line 159
	const-string v0, "MillennialMediaSDK"

	invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 160
	return-void
.end method

.method static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
	.locals 2
	.param p0, "format"	# Ljava/lang/String;
	.param p1, "args"	# [Ljava/lang/Object;

	.prologue
	.line 164
	const-string v0, "MillennialMediaSDK"

	invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 165
	return-void
.end method

.method static i(Ljava/lang/Throwable;)V
	.locals 1
	.param p0, "tr"	# Ljava/lang/Throwable;

	.prologue
	.line 169
	invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 170
	return-void
.end method

.method static p(Ljava/lang/String;)V
	.locals 3
	.param p0, "message"	# Ljava/lang/String;

	.prologue
	.line 245
	sget v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v1, 0x3

	if-le v0, v1, :cond_0

	.line 246
	const-string v0, "MillennialMediaSDK"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Private - "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 247
	:cond_0
	return-void
.end method

.method static varargs p(Ljava/lang/String;[Ljava/lang/Object;)V
	.locals 3
	.param p0, "format"	# Ljava/lang/String;
	.param p1, "args"	# [Ljava/lang/Object;

	.prologue
	.line 251
	sget v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v1, 0x3

	if-le v0, v1, :cond_0

	.line 252
	const-string v0, "MillennialMediaSDK"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Private - "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 253
	:cond_0
	return-void
.end method

.method static p(Ljava/lang/Throwable;)V
	.locals 2
	.param p0, "tr"	# Ljava/lang/Throwable;

	.prologue
	.line 257
	sget v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v1, 0x3

	if-le v0, v1, :cond_0

	.line 258
	invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->p(Ljava/lang/String;)V

	.line 259
	:cond_0
	return-void
.end method

.method static v(Ljava/lang/String;)V
	.locals 3
	.param p0, "message"	# Ljava/lang/String;

	.prologue
	.line 226
	sget v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v1, 0x3

	if-lt v0, v1, :cond_0

	.line 227
	const-string v0, "MillennialMediaSDK"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Verbose - "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 228
	:cond_0
	return-void
.end method

.method static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
	.locals 3
	.param p0, "format"	# Ljava/lang/String;
	.param p1, "args"	# [Ljava/lang/Object;

	.prologue
	.line 232
	sget v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v1, 0x3

	if-lt v0, v1, :cond_0

	.line 233
	const-string v0, "MillennialMediaSDK"

	new-instance v1, Ljava/lang/StringBuilder;

	invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

	const-string v2, "Verbose - "

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v2

	invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

	.line 234
	:cond_0
	return-void
.end method

.method static v(Ljava/lang/Throwable;)V
	.locals 2
	.param p0, "tr"	# Ljava/lang/Throwable;

	.prologue
	.line 238
	sget v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v1, 0x3

	if-lt v0, v1, :cond_0

	.line 239
	invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 240
	:cond_0
	return-void
.end method

.method static w(Ljava/lang/String;)V
	.locals 1
	.param p0, "message"	# Ljava/lang/String;

	.prologue
	.line 175
	const-string v0, "MillennialMediaSDK"

	invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

	.line 176
	return-void
.end method

.method static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
	.locals 2
	.param p0, "format"	# Ljava/lang/String;
	.param p1, "args"	# [Ljava/lang/Object;

	.prologue
	.line 180
	const-string v0, "MillennialMediaSDK"

	invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v1

	invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

	.line 181
	return-void
.end method

.method static w(Ljava/lang/Throwable;)V
	.locals 1
	.param p0, "tr"	# Ljava/lang/Throwable;

	.prologue
	.line 185
	invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

	.line 186
	return-void
.end method
