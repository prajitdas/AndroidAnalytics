.class public final Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "SqlDateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
	value = {
		"Lcom/millennialmedia/google/gson/TypeAdapter",
		"<",
		"Ljava/sql/Date;",
		">;"
	}
.end annotation


# static fields
.field public static final FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;


# instance fields
.field private final format:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
	.locals 1

	.prologue
	.line 40
	new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter$1;

	invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter$1;-><init>()V

	sput-object v0, Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

	return-void
.end method

.method public constructor <init>()V
	.locals 2

	.prologue
	.line 39
	invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

	.line 48
	new-instance v0, Ljava/text/SimpleDateFormat;

	const-string v1, "MMM d, yyyy"

	invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

	iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;

	return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
	.locals 1
	.param p1, "x0"	# Lcom/millennialmedia/google/gson/stream/JsonReader;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 39
	invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/sql/Date;

	move-result-object v0

	return-object v0
.end method

.method public declared-synchronized read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/sql/Date;
	.locals 5
	.param p1, "in"	# Lcom/millennialmedia/google/gson/stream/JsonReader;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 52
	monitor-enter p0

	:try_start_0
	invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

	move-result-object v3

	sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

	if-ne v3, v4, :cond_0

	.line 53
	invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 54
	const/4 v3, 0x0

	.line 58
	:goto_0
	monitor-exit p0

	return-object v3

	.line 57
	:cond_0
	:try_start_1
	iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;

	invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

	move-result-object v4

	invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

	move-result-object v3

	invoke-virtual {v3}, Ljava/util/Date;->getTime()J

	move-result-wide v1

	.line 58
	.local v1, "utilDate":J
	new-instance v3, Ljava/sql/Date;

	invoke-direct {v3, v1, v2}, Ljava/sql/Date;-><init>(J)V
	:try_end_1
	.catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	goto :goto_0

	.line 59
	.end local v1	# "utilDate":J
	:catch_0
	move-exception v0

	.line 60
	.local v0, "e":Ljava/text/ParseException;
	:try_start_2
	new-instance v3, Lcom/millennialmedia/google/gson/JsonSyntaxException;

	invoke-direct {v3, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

	throw v3
	:try_end_2
	.catchall {:try_start_2 .. :try_end_2} :catchall_0

	.line 52
	.end local v0	# "e":Ljava/text/ParseException;
	:catchall_0
	move-exception v3

	monitor-exit p0

	throw v3
.end method

.method public bridge synthetic write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
	.locals 0
	.param p1, "x0"	# Lcom/millennialmedia/google/gson/stream/JsonWriter;
	.param p2, "x1"	# Ljava/lang/Object;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 39
	check-cast p2, Ljava/sql/Date;

	.end local p2	# "x1":Ljava/lang/Object;
	invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/sql/Date;)V

	return-void
.end method

.method public declared-synchronized write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/sql/Date;)V
	.locals 1
	.param p1, "out"	# Lcom/millennialmedia/google/gson/stream/JsonWriter;
	.param p2, "value"	# Ljava/sql/Date;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 66
	monitor-enter p0

	if-nez p2, :cond_0

	const/4 v0, 0x0

	:goto_0
	:try_start_0
	invoke-virtual {p1, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/millennialmedia/google/gson/stream/JsonWriter;
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 67
	monitor-exit p0

	return-void

	.line 66
	:cond_0
	:try_start_1
	iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;

	invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	move-result-object v0

	goto :goto_0

	:catchall_0
	move-exception v0

	monitor-exit p0

	throw v0
.end method
