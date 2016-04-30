.class final Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
	value = {
		"<T:",
		"Ljava/lang/Object;",
		">",
		"Lcom/millennialmedia/google/gson/TypeAdapter",
		"<TT;>;"
	}
.end annotation


# instance fields
.field private final context:Lcom/millennialmedia/google/gson/Gson;

.field private final delegate:Lcom/millennialmedia/google/gson/TypeAdapter;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Lcom/millennialmedia/google/gson/TypeAdapter",
			"<TT;>;"
		}
	.end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
	.locals 0
	.param p1, "context"	# Lcom/millennialmedia/google/gson/Gson;
	.param p3, "type"	# Ljava/lang/reflect/Type;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Lcom/millennialmedia/google/gson/Gson;",
			"Lcom/millennialmedia/google/gson/TypeAdapter",
			"<TT;>;",
			"Ljava/lang/reflect/Type;",
			")V"
		}
	.end annotation

	.prologue
	.line 33
	.local p0, "this":Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
	.local p2, "delegate":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
	invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

	.line 34
	iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/millennialmedia/google/gson/Gson;

	.line 35
	iput-object p2, p0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

	.line 36
	iput-object p3, p0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

	.line 37
	return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
	.locals 1
	.param p1, "type"	# Ljava/lang/reflect/Type;
	.param p2, "value"	# Ljava/lang/Object;

	.prologue
	.line 76
	.local p0, "this":Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
	if-eqz p2, :cond_1

	const-class v0, Ljava/lang/Object;

	if-eq p1, v0, :cond_0

	instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

	if-nez v0, :cond_0

	instance-of v0, p1, Ljava/lang/Class;

	if-eqz v0, :cond_1

	.line 78
	:cond_0
	invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

	move-result-object p1

	.line 80
	:cond_1
	return-object p1
.end method


# virtual methods
.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
	.locals 1
	.param p1, "in"	# Lcom/millennialmedia/google/gson/stream/JsonReader;
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

	.prologue
	.line 41
	.local p0, "this":Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
	iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

	invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

	move-result-object v0

	return-object v0
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
	.locals 5
	.param p1, "out"	# Lcom/millennialmedia/google/gson/stream/JsonWriter;
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

	.prologue
	.line 53
	.local p0, "this":Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
	.local p2, "value":Ljava/lang/Object;, "TT;"
	iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

	.line 54
	.local v0, "chosen":Lcom/millennialmedia/google/gson/TypeAdapter;
	iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

	invoke-direct {p0, v3, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

	move-result-object v1

	.line 55
	.local v1, "runtimeType":Ljava/lang/reflect/Type;
	iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

	if-eq v1, v3, :cond_0

	.line 56
	iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/millennialmedia/google/gson/Gson;

	invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

	move-result-object v4

	invoke-virtual {v3, v4}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

	move-result-object v2

	.line 57
	.local v2, "runtimeTypeAdapter":Lcom/millennialmedia/google/gson/TypeAdapter;
	instance-of v3, v2, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

	if-nez v3, :cond_1

	.line 59
	move-object v0, v2

	.line 69
	.end local v2	# "runtimeTypeAdapter":Lcom/millennialmedia/google/gson/TypeAdapter;
	:cond_0
	:goto_0
	invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

	.line 70
	return-void

	.line 60
	.restart local v2	# "runtimeTypeAdapter":Lcom/millennialmedia/google/gson/TypeAdapter;
	:cond_1
	iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

	instance-of v3, v3, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

	if-nez v3, :cond_2

	.line 63
	iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

	goto :goto_0

	.line 66
	:cond_2
	move-object v0, v2

	goto :goto_0
.end method
