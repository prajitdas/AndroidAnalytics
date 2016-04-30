.class public abstract Lcom/millennialmedia/google/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
	value = {
		"<T:",
		"Ljava/lang/Object;",
		">",
		"Ljava/lang/Object;"
	}
.end annotation


# direct methods
.method public constructor <init>()V
	.locals 0

	.prologue
	.line 120
	.local p0, "this":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method


# virtual methods
.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
	.locals 2
	.param p1, "in"	# Ljava/io/Reader;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/io/Reader;",
			")TT;"
		}
	.end annotation

	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 256
	.local p0, "this":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
	new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonReader;

	invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

	.line 257
	.local v0, "reader":Lcom/millennialmedia/google/gson/stream/JsonReader;
	invoke-virtual {p0, v0}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

	move-result-object v1

	return-object v1
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
	.locals 1
	.param p1, "json"	# Ljava/lang/String;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/lang/String;",
			")TT;"
		}
	.end annotation

	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 270
	.local p0, "this":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
	new-instance v0, Ljava/io/StringReader;

	invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

	invoke-virtual {p0, v0}, Lcom/millennialmedia/google/gson/TypeAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

	move-result-object v0

	return-object v0
.end method

.method public final fromJsonTree(Lcom/millennialmedia/google/gson/JsonElement;)Ljava/lang/Object;
	.locals 3
	.param p1, "jsonTree"	# Lcom/millennialmedia/google/gson/JsonElement;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Lcom/millennialmedia/google/gson/JsonElement;",
			")TT;"
		}
	.end annotation

	.prologue
	.line 281
	.local p0, "this":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
	:try_start_0
	new-instance v1, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;

	invoke-direct {v1, p1}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;-><init>(Lcom/millennialmedia/google/gson/JsonElement;)V

	.line 282
	.local v1, "jsonReader":Lcom/millennialmedia/google/gson/stream/JsonReader;
	invoke-virtual {p0, v1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
	:try_end_0
	.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

	move-result-object v2

	return-object v2

	.line 283
	.end local v1	# "jsonReader":Lcom/millennialmedia/google/gson/stream/JsonReader;
	:catch_0
	move-exception v0

	.line 284
	.local v0, "e":Ljava/io/IOException;
	new-instance v2, Lcom/millennialmedia/google/gson/JsonIOException;

	invoke-direct {v2, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

	throw v2
.end method

.method public final nullSafe()Lcom/millennialmedia/google/gson/TypeAdapter;
	.locals 1
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"()",
			"Lcom/millennialmedia/google/gson/TypeAdapter",
			"<TT;>;"
		}
	.end annotation

	.prologue
	.line 187
	.local p0, "this":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
	new-instance v0, Lcom/millennialmedia/google/gson/TypeAdapter$1;

	invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/TypeAdapter$1;-><init>(Lcom/millennialmedia/google/gson/TypeAdapter;)V

	return-object v0
.end method

.method public abstract read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Lcom/millennialmedia/google/gson/stream/JsonReader;",
			")TT;"
		}
	.end annotation

	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
	.locals 2
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(TT;)",
			"Ljava/lang/String;"
		}
	.end annotation

	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 216
	.local p0, "this":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
	.local p1, "value":Ljava/lang/Object;, "TT;"
	new-instance v0, Ljava/io/StringWriter;

	invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

	.line 217
	.local v0, "stringWriter":Ljava/io/StringWriter;
	invoke-virtual {p0, v0, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V

	.line 218
	invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

	move-result-object v1

	return-object v1
.end method

.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
	.locals 1
	.param p1, "out"	# Ljava/io/Writer;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/io/Writer;",
			"TT;)V"
		}
	.end annotation

	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation

	.prologue
	.line 142
	.local p0, "this":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
	.local p2, "value":Ljava/lang/Object;, "TT;"
	new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonWriter;

	invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

	.line 143
	.local v0, "writer":Lcom/millennialmedia/google/gson/stream/JsonWriter;
	invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

	.line 144
	return-void
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;
	.locals 3
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(TT;)",
			"Lcom/millennialmedia/google/gson/JsonElement;"
		}
	.end annotation

	.prologue
	.line 230
	.local p0, "this":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
	.local p1, "value":Ljava/lang/Object;, "TT;"
	:try_start_0
	new-instance v1, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;

	invoke-direct {v1}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;-><init>()V

	.line 231
	.local v1, "jsonWriter":Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;
	invoke-virtual {p0, v1, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

	.line 232
	invoke-virtual {v1}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;->get()Lcom/millennialmedia/google/gson/JsonElement;
	:try_end_0
	.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

	move-result-object v2

	return-object v2

	.line 233
	.end local v1	# "jsonWriter":Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;
	:catch_0
	move-exception v0

	.line 234
	.local v0, "e":Ljava/io/IOException;
	new-instance v2, Lcom/millennialmedia/google/gson/JsonIOException;

	invoke-direct {v2, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

	throw v2
.end method

.method public abstract write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Lcom/millennialmedia/google/gson/stream/JsonWriter;",
			"TT;)V"
		}
	.end annotation

	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/io/IOException;
		}
	.end annotation
.end method
