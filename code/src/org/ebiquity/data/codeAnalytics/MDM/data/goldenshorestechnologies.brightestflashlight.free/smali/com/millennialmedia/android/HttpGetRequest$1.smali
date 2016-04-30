.class final Lcom/millennialmedia/android/HttpGetRequest$1;
.super Ljava/lang/Object;
.source "HttpGetRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
	value = Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x8
	name = null
.end annotation


# instance fields
.field final synthetic val$urls:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
	.locals 0

	.prologue
	.line 157
	iput-object p1, p0, Lcom/millennialmedia/android/HttpGetRequest$1;->val$urls:[Ljava/lang/String;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public run()V
	.locals 9

	.prologue
	.line 161
	iget-object v0, p0, Lcom/millennialmedia/android/HttpGetRequest$1;->val$urls:[Ljava/lang/String;

	.local v0, "arr$":[Ljava/lang/String;
	array-length v4, v0

	.local v4, "len$":I
	const/4 v3, 0x0

	.local v3, "i$":I
	:goto_0
	if-ge v3, v4, :cond_0

	aget-object v5, v0, v3

	.line 163
	.local v5, "url":Ljava/lang/String;
	const-string v6, "Logging event to: %s"

	const/4 v7, 0x1

	new-array v7, v7, [Ljava/lang/Object;

	const/4 v8, 0x0

	aput-object v5, v7, v8

	invoke-static {v6, v7}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 166
	:try_start_0
	new-instance v2, Lcom/millennialmedia/android/HttpGetRequest;

	invoke-direct {v2}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

	.line 167
	.local v2, "getRequest":Lcom/millennialmedia/android/HttpGetRequest;
	invoke-virtual {v2, v5}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 161
	.end local v2	# "getRequest":Lcom/millennialmedia/android/HttpGetRequest;
	:goto_1
	add-int/lit8 v3, v3, 0x1

	goto :goto_0

	.line 169
	:catch_0
	move-exception v1

	.line 171
	.local v1, "e":Ljava/lang/Exception;
	invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

	move-result-object v6

	invoke-static {v6}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	goto :goto_1

	.line 174
	.end local v1	# "e":Ljava/lang/Exception;
	.end local v5	# "url":Ljava/lang/String;
	:cond_0
	return-void
.end method
