.class Lcom/amobee/onlineHapi/AmobeeAdView$2;
.super Ljava/lang/Thread;
.source "AmobeeAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/amobee/onlineHapi/AmobeeAdView;->getNewAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amobee/onlineHapi/AmobeeAdView;


# direct methods
.method constructor <init>(Lcom/amobee/onlineHapi/AmobeeAdView;)V
	.locals 0

	.prologue
	.line 1
	iput-object p1, p0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	.line 232
	invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 18

	.prologue
	.line 235
	const-string v9, ""

	.line 236
	.local v9, "data":Ljava/lang/String;
	const-string v6, ""

	.line 237
	.local v6, "contentEncoding":Ljava/lang/String;
	const-string v5, ""

	.line 239
	.local v5, "contentType":Ljava/lang/String;
	const/4 v10, 0x0

	.line 242
	.local v10, "httpConnection":Ljava/net/HttpURLConnection;
	:try_start_0
	move-object/from16 v0, p0

	iget-object v2, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	# invokes: Lcom/amobee/onlineHapi/AmobeeAdView;->getUserAgent()Ljava/lang/String;
	invoke-static {v2}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$4(Lcom/amobee/onlineHapi/AmobeeAdView;)Ljava/lang/String;

	move-result-object v15

	.line 245
	.local v15, "userAgent":Ljava/lang/String;
	new-instance v14, Ljava/net/URL;

	new-instance v2, Ljava/lang/StringBuilder;

	move-object/from16 v0, p0

	iget-object v3, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	# getter for: Lcom/amobee/onlineHapi/AmobeeAdView;->adRequest:Ljava/lang/String;
	invoke-static {v3}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$5(Lcom/amobee/onlineHapi/AmobeeAdView;)Ljava/lang/String;

	move-result-object v3

	invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v3

	invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	move-object/from16 v0, p0

	iget-object v3, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	# getter for: Lcom/amobee/onlineHapi/AmobeeAdView;->targetingStr:Ljava/lang/String;
	invoke-static {v3}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$6(Lcom/amobee/onlineHapi/AmobeeAdView;)Ljava/lang/String;

	move-result-object v3

	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v2

	invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v2

	invoke-direct {v14, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

	.line 246
	.local v14, "url":Ljava/net/URL;
	invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

	move-result-object v2

	move-object v0, v2

	check-cast v0, Ljava/net/HttpURLConnection;

	move-object v10, v0

	.line 247
	const-string v2, "User-Agent"

	invoke-virtual {v10, v2, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

	.line 250
	invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

	.line 251
	invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

	move-result v13

	.line 254
	.local v13, "responseCode":I
	const/16 v2, 0xc8

	if-ne v13, v2, :cond_5

	.line 257
	invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

	move-result-object v6

	.line 258
	if-nez v6, :cond_0

	.line 259
	const-string v6, "utf-8"

	.line 263
	:cond_0
	const-string v5, "text/html"

	.line 265
	move-object/from16 v0, p0

	iget-object v2, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	# invokes: Lcom/amobee/onlineHapi/AmobeeAdView;->getData(Ljava/net/HttpURLConnection;)[B
	invoke-static {v2, v10}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$7(Lcom/amobee/onlineHapi/AmobeeAdView;Ljava/net/HttpURLConnection;)[B

	move-result-object v8

	.line 268
	.local v8, "buffer":[B
	new-instance v4, Ljava/lang/String;

	invoke-direct {v4, v8, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
	:try_end_0
	.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 270
	.end local v9	# "data":Ljava/lang/String;
	.local v4, "data":Ljava/lang/String;
	:try_start_1
	sget-boolean v2, Lcom/amobee/onlineHapi/OnlineHAPI;->isFadeAnimationEnabled:Z

	if-eqz v2, :cond_1

	.line 273
	move-object/from16 v0, p0

	iget-object v2, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	# getter for: Lcom/amobee/onlineHapi/AmobeeAdView;->mHandler:Landroid/os/Handler;
	invoke-static {v2}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$8(Lcom/amobee/onlineHapi/AmobeeAdView;)Landroid/os/Handler;

	move-result-object v2

	.line 274
	move-object/from16 v0, p0

	iget-object v3, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	# getter for: Lcom/amobee/onlineHapi/AmobeeAdView;->mHandler:Landroid/os/Handler;
	invoke-static {v3}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$8(Lcom/amobee/onlineHapi/AmobeeAdView;)Landroid/os/Handler;

	move-result-object v3

	const/4 v7, 0x3

	invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

	move-result-object v3

	const-wide/16 v16, 0x0

	.line 273
	move-wide/from16 v0, v16

	invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
	:try_end_1
	.catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_1

	.line 277
	const-wide/16 v2, 0x5dc

	:try_start_2
	invoke-static {v2, v3}, Lcom/amobee/onlineHapi/AmobeeAdView$2;->sleep(J)V
	:try_end_2
	.catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
	.catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
	.catchall {:try_start_2 .. :try_end_2} :catchall_1

	.line 283
	:cond_1
	:goto_0
	:try_start_3
	move-object/from16 v0, p0

	iget-object v2, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	const-string v3, ""

	const/4 v7, 0x0

	invoke-virtual/range {v2 .. v7}, Lcom/amobee/onlineHapi/AmobeeAdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
	:try_end_3
	.catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
	.catchall {:try_start_3 .. :try_end_3} :catchall_1

	.line 290
	.end local v8	# "buffer":[B
	:goto_1
	if-eqz v10, :cond_2

	.line 291
	invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

	.line 294
	:cond_2
	invoke-static {}, Lcom/amobee/onlineHapi/AmobeeScheduler;->getInstance()Lcom/amobee/onlineHapi/AmobeeScheduler;

	move-result-object v2

	new-instance v3, Lcom/amobee/onlineHapi/RefreshTask;

	move-object/from16 v0, p0

	iget-object v7, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	invoke-direct {v3, v7}, Lcom/amobee/onlineHapi/RefreshTask;-><init>(Lcom/amobee/onlineHapi/AmobeeAdView;)V

	move-object/from16 v0, p0

	iget-object v7, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	# getter for: Lcom/amobee/onlineHapi/AmobeeAdView;->refreshInterval:I
	invoke-static {v7}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$3(Lcom/amobee/onlineHapi/AmobeeAdView;)I

	move-result v7

	invoke-virtual {v2, v3, v7}, Lcom/amobee/onlineHapi/AmobeeScheduler;->scheduleTask(Ljava/util/TimerTask;I)V

	.line 296
	.end local v13	# "responseCode":I
	.end local v14	# "url":Ljava/net/URL;
	.end local v15	# "userAgent":Ljava/lang/String;
	:goto_2
	return-void

	.line 278
	.restart local v8	# "buffer":[B
	.restart local v13	# "responseCode":I
	.restart local v14	# "url":Ljava/net/URL;
	.restart local v15	# "userAgent":Ljava/lang/String;
	:catch_0
	move-exception v11

	.line 279
	.local v11, "ie":Ljava/lang/InterruptedException;
	:try_start_4
	invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V
	:try_end_4
	.catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
	.catchall {:try_start_4 .. :try_end_4} :catchall_1

	goto :goto_0

	.line 286
	.end local v11	# "ie":Ljava/lang/InterruptedException;
	:catch_1
	move-exception v12

	.line 287
	.end local v8	# "buffer":[B
	.end local v13	# "responseCode":I
	.end local v14	# "url":Ljava/net/URL;
	.end local v15	# "userAgent":Ljava/lang/String;
	.local v12, "ioe":Ljava/io/IOException;
	:goto_3
	:try_start_5
	sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

	new-instance v3, Ljava/lang/StringBuilder;

	const-string v7, "error: "

	invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v3

	invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
	:try_end_5
	.catchall {:try_start_5 .. :try_end_5} :catchall_1

	.line 290
	if-eqz v10, :cond_3

	.line 291
	invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

	.line 294
	:cond_3
	invoke-static {}, Lcom/amobee/onlineHapi/AmobeeScheduler;->getInstance()Lcom/amobee/onlineHapi/AmobeeScheduler;

	move-result-object v2

	new-instance v3, Lcom/amobee/onlineHapi/RefreshTask;

	move-object/from16 v0, p0

	iget-object v7, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	invoke-direct {v3, v7}, Lcom/amobee/onlineHapi/RefreshTask;-><init>(Lcom/amobee/onlineHapi/AmobeeAdView;)V

	move-object/from16 v0, p0

	iget-object v7, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	# getter for: Lcom/amobee/onlineHapi/AmobeeAdView;->refreshInterval:I
	invoke-static {v7}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$3(Lcom/amobee/onlineHapi/AmobeeAdView;)I

	move-result v7

	invoke-virtual {v2, v3, v7}, Lcom/amobee/onlineHapi/AmobeeScheduler;->scheduleTask(Ljava/util/TimerTask;I)V

	goto :goto_2

	.line 289
	.end local v4	# "data":Ljava/lang/String;
	.end local v12	# "ioe":Ljava/io/IOException;
	.restart local v9	# "data":Ljava/lang/String;
	:catchall_0
	move-exception v2

	move-object v4, v9

	.line 290
	.end local v9	# "data":Ljava/lang/String;
	.restart local v4	# "data":Ljava/lang/String;
	:goto_4
	if-eqz v10, :cond_4

	.line 291
	invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

	.line 294
	:cond_4
	invoke-static {}, Lcom/amobee/onlineHapi/AmobeeScheduler;->getInstance()Lcom/amobee/onlineHapi/AmobeeScheduler;

	move-result-object v3

	new-instance v7, Lcom/amobee/onlineHapi/RefreshTask;

	move-object/from16 v0, p0

	iget-object v0, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	move-object/from16 v16, v0

	move-object/from16 v0, v16

	invoke-direct {v7, v0}, Lcom/amobee/onlineHapi/RefreshTask;-><init>(Lcom/amobee/onlineHapi/AmobeeAdView;)V

	move-object/from16 v0, p0

	iget-object v0, v0, Lcom/amobee/onlineHapi/AmobeeAdView$2;->this$0:Lcom/amobee/onlineHapi/AmobeeAdView;

	move-object/from16 v16, v0

	# getter for: Lcom/amobee/onlineHapi/AmobeeAdView;->refreshInterval:I
	invoke-static/range {v16 .. v16}, Lcom/amobee/onlineHapi/AmobeeAdView;->access$3(Lcom/amobee/onlineHapi/AmobeeAdView;)I

	move-result v16

	move/from16 v0, v16

	invoke-virtual {v3, v7, v0}, Lcom/amobee/onlineHapi/AmobeeScheduler;->scheduleTask(Ljava/util/TimerTask;I)V

	.line 295
	throw v2

	.line 289
	:catchall_1
	move-exception v2

	goto :goto_4

	.line 286
	.end local v4	# "data":Ljava/lang/String;
	.restart local v9	# "data":Ljava/lang/String;
	:catch_2
	move-exception v12

	move-object v4, v9

	.end local v9	# "data":Ljava/lang/String;
	.restart local v4	# "data":Ljava/lang/String;
	goto :goto_3

	.end local v4	# "data":Ljava/lang/String;
	.restart local v9	# "data":Ljava/lang/String;
	.restart local v13	# "responseCode":I
	.restart local v14	# "url":Ljava/net/URL;
	.restart local v15	# "userAgent":Ljava/lang/String;
	:cond_5
	move-object v4, v9

	.end local v9	# "data":Ljava/lang/String;
	.restart local v4	# "data":Ljava/lang/String;
	goto/16 :goto_1
.end method
